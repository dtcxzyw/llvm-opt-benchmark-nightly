loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@dtfttr_:bb.a
  %indvars.iv.next787.lcssa = phi i64 [ %i.vp, %vec.epilog.middle.block1368 ], [ %i.uy, %middle.block1350 ], [ %indvars.iv.next787.lcssa1867.unr, %vec.epilog.scalar.ph1358.prol.loopexit ], [ %indvars.iv.next787.7, %vec.epilog.scalar.ph1358 ]
  %i.xg = add nsw i64 %indvars.iv812, %i.uf       ; 2 uses
  %.not439.not553 = icmp slt i64 %i.xg, %i.ug
  br i1 %.not439.not553, label %iter.check1318, label %._crit_edge558

iter.check1318:                                   ; preds = %.loopexit1813
  %i.xh = sext i32 %indvars.iv797.lcssa to i64    ; 7 uses
  %invariant.gep1015 = getelementptr [8 x i8], ptr %4, i64 %i.xg ; 11 uses
  %min.iters.check1302 = icmp ugt i32 %i.ul, 2
  %or.cond1821 = select i1 %min.iters.check1302, i1 %ident.check1299.not, i1 false
  br i1 %or.cond1821, label %vector.memcheck1300, label %.lr.ph557.preheader

vector.memcheck1300:                              ; preds = %iter.check1318
  %i.xi = add i64 %indvars.iv812, %i.uo
  %i.xj = shl nsw i64 %i.xh, 3
  %i.xk = add i64 %i.xi, %i.uf
  %i.xl = shl i64 %i.xk, 3
  %i.xm = add i64 %i.xl, %i.b
  %i.xn = add i64 %i.xj, %i.a
  %i.xo = sub i64 %i.xn, %i.xm
  %diff.check1301 = icmp ugt i64 %i.xo, -128
  br i1 %diff.check1301, label %.lr.ph557.preheader, label %vector.main.loop.iter.check1303

vector.main.loop.iter.check1303:                  ; preds = %vector.memcheck1300
  %min.iters.check1304 = icmp ult i32 %i.ul, 15
  br i1 %min.iters.check1304, label %vec.epilog.ph1322, label %vector.ph1305

vector.ph1305:                                    ; preds = %vector.main.loop.iter.check1303
  %i.xp = and i64 %i.un, 12
  %n.vec1306 = and i64 %i.un, 8589934576          ; 5 uses
  %i.xq = add nsw i64 %n.vec1306, %i.up
  %i.xr = add nsw i64 %n.vec1306, %i.xh           ; 2 uses
  %invariant.gep2012 = getelementptr [8 x i8], ptr %3, i64 %i.xh
  %invariant.gep2014 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.up
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1305
  %index1308 = phi i64 [ 0, %vector.ph1305 ], [ %index.next1313, %vector.body1307 ] ; 3 uses
  %gep2013 = getelementptr [8 x i8], ptr %invariant.gep2012, i64 %index1308 ; 4 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %gep2013, i64 32
  %i.xt = getelementptr inbounds nuw i8, ptr %gep2013, i64 64
  %i.xu = getelementptr inbounds nuw i8, ptr %gep2013, i64 96
  %wide.load1309 = load <4 x double>, ptr %gep2013, align 8, !tbaa !9
  %wide.load1310 = load <4 x double>, ptr %i.xs, align 8, !tbaa !9
  %wide.load1311 = load <4 x double>, ptr %i.xt, align 8, !tbaa !9
  %wide.load1312 = load <4 x double>, ptr %i.xu, align 8, !tbaa !9
  %gep2015 = getelementptr [8 x i8], ptr %invariant.gep2014, i64 %index1308 ; 4 uses
  %i.xv = getelementptr i8, ptr %gep2015, i64 32
  %i.xw = getelementptr i8, ptr %gep2015, i64 64
  %i.xx = getelementptr i8, ptr %gep2015, i64 96
  store <4 x double> %wide.load1309, ptr %gep2015, align 8, !tbaa !9
  store <4 x double> %wide.load1310, ptr %i.xv, align 8, !tbaa !9
  store <4 x double> %wide.load1311, ptr %i.xw, align 8, !tbaa !9
  store <4 x double> %wide.load1312, ptr %i.xx, align 8, !tbaa !9
  %index.next1313 = add nuw i64 %index1308, 16    ; 2 uses
  %i.xy = icmp eq i64 %index.next1313, %n.vec1306
  br i1 %i.xy, label %middle.block1314, label %vector.body1307, !llvm.loop !57

middle.block1314:                                 ; preds = %vector.body1307
  %cmp.n1315 = icmp eq i64 %i.un, %n.vec1306
  br i1 %cmp.n1315, label %._crit_edge558, label %vec.epilog.iter.check1320

vec.epilog.iter.check1320:                        ; preds = %middle.block1314
  %min.epilog.iters.check1321 = icmp eq i64 %i.xp, 0
  br i1 %min.epilog.iters.check1321, label %.lr.ph557.preheader, label %vec.epilog.ph1322, !prof !15

vec.epilog.ph1322:                                ; preds = %vector.main.loop.iter.check1303, %vec.epilog.iter.check1320
  %vec.epilog.resume.val1316 = phi i64 [ %n.vec1306, %vec.epilog.iter.check1320 ], [ 0, %vector.main.loop.iter.check1303 ]
  %n.vec1323 = and i64 %i.un, 8589934588          ; 4 uses
  %i.xz = add nsw i64 %n.vec1323, %i.up
  %i.ya = add nsw i64 %n.vec1323, %i.xh           ; 2 uses
  %invariant.gep2016 = getelementptr [8 x i8], ptr %3, i64 %i.xh
  %invariant.gep2018 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.up
  br label %vec.epilog.vector.body1324

vec.epilog.vector.body1324:                       ; preds = %vec.epilog.vector.body1324, %vec.epilog.ph1322
  %index1325 = phi i64 [ %vec.epilog.resume.val1316, %vec.epilog.ph1322 ], [ %index.next1327, %vec.epilog.vector.body1324 ] ; 3 uses
  %gep2017 = getelementptr [8 x i8], ptr %invariant.gep2016, i64 %index1325
  %wide.load1326 = load <4 x double>, ptr %gep2017, align 8, !tbaa !9
  %gep2019 = getelementptr [8 x i8], ptr %invariant.gep2018, i64 %index1325
  store <4 x double> %wide.load1326, ptr %gep2019, align 8, !tbaa !9
  %index.next1327 = add nuw i64 %index1325, 4     ; 2 uses
  %i.yb = icmp eq i64 %index.next1327, %n.vec1323
  br i1 %i.yb, label %vec.epilog.middle.block1328, label %vec.epilog.vector.body1324, !llvm.loop !58

vec.epilog.middle.block1328:                      ; preds = %vec.epilog.vector.body1324
  %cmp.n1329 = icmp eq i64 %i.un, %n.vec1323
  br i1 %cmp.n1329, label %._crit_edge558, label %.lr.ph557.preheader

.lr.ph557.preheader:                              ; preds = %vector.memcheck1300, %iter.check1318, %vec.epilog.iter.check1320, %vec.epilog.middle.block1328
  %indvars.iv803.ph = phi i64 [ %i.up, %iter.check1318 ], [ %i.up, %vector.memcheck1300 ], [ %i.xq, %vec.epilog.iter.check1320 ], [ %i.xz, %vec.epilog.middle.block1328 ] ; 3 uses
  %indvars.iv799.ph = phi i64 [ %i.xh, %iter.check1318 ], [ %i.xh, %vector.memcheck1300 ], [ %i.xr, %vec.epilog.iter.check1320 ], [ %i.ya, %vec.epilog.middle.block1328 ] ; 2 uses
  %i.yc = trunc i64 %indvars.iv803.ph to i32      ; 2 uses
  %i.yd = sub i32 %i.i, %i.yc
  %xtraiter1909 = and i32 %i.yd, 7                ; 2 uses
  %lcmp.mod1910.not = icmp eq i32 %xtraiter1909, 0
  br i1 %lcmp.mod1910.not, label %.lr.ph557.prol.loopexit, label %.lr.ph557.prol

.lr.ph557.prol:                                   ; preds = %.lr.ph557.preheader, %.lr.ph557.prol
  %indvars.iv803.prol = phi i64 [ %indvars.iv.next804.prol, %.lr.ph557.prol ], [ %indvars.iv803.ph, %.lr.ph557.preheader ] ; 2 uses
  %indvars.iv799.prol = phi i64 [ %indvars.iv.next800.prol, %.lr.ph557.prol ], [ %indvars.iv799.ph, %.lr.ph557.preheader ] ; 2 uses
  %prol.iter1911 = phi i32 [ %prol.iter1911.next, %.lr.ph557.prol ], [ 0, %.lr.ph557.preheader ]
  %i.ye = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv799.prol
  %i.yf = load double, ptr %i.ye, align 8, !tbaa !9
  %i.yg = mul nsw i64 %indvars.iv803.prol, %i.ue
  %gep1016.prol = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yg
  store double %i.yf, ptr %gep1016.prol, align 8, !tbaa !9
  %indvars.iv.next800.prol = add nsw i64 %indvars.iv799.prol, 1 ; 3 uses
  %indvars.iv.next804.prol = add nsw i64 %indvars.iv803.prol, 1 ; 2 uses
  %prol.iter1911.next = add i32 %prol.iter1911, 1 ; 2 uses
  %prol.iter1911.cmp.not = icmp eq i32 %prol.iter1911.next, %xtraiter1909
  br i1 %prol.iter1911.cmp.not, label %.lr.ph557.prol.loopexit, label %.lr.ph557.prol, !llvm.loop !59

.lr.ph557.prol.loopexit:                          ; preds = %.lr.ph557.prol, %.lr.ph557.preheader
  %indvars.iv.next800.lcssa.unr = phi i64 [ poison, %.lr.ph557.preheader ], [ %indvars.iv.next800.prol, %.lr.ph557.prol ]
  %indvars.iv803.unr = phi i64 [ %indvars.iv803.ph, %.lr.ph557.preheader ], [ %indvars.iv.next804.prol, %.lr.ph557.prol ]
  %indvars.iv799.unr = phi i64 [ %indvars.iv799.ph, %.lr.ph557.preheader ], [ %indvars.iv.next800.prol, %.lr.ph557.prol ]
  %i.yh = sub i32 %i.yc, %i.i
  %i.yi = icmp ugt i32 %i.yh, -8
  br i1 %i.yi, label %._crit_edge558, label %.lr.ph557

.lr.ph557:                                        ; preds = %.lr.ph557.prol.loopexit, %.lr.ph557
  %indvars.iv803 = phi i64 [ %indvars.iv.next804.7, %.lr.ph557 ], [ %indvars.iv803.unr, %.lr.ph557.prol.loopexit ] ; 9 uses
  %indvars.iv799 = phi i64 [ %indvars.iv.next800.7, %.lr.ph557 ], [ %indvars.iv799.unr, %.lr.ph557.prol.loopexit ] ; 9 uses
  %i.yj = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv799
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !9
  %i.yl = mul nsw i64 %indvars.iv803, %i.ue
  %gep1016 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yl
  store double %i.yk, ptr %gep1016, align 8, !tbaa !9
  %indvars.iv.next804 = add nsw i64 %indvars.iv803, 1
  %i.ym = getelementptr [8 x i8], ptr %3, i64 %indvars.iv799
  %i.yn = getelementptr i8, ptr %i.ym, i64 8
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !9
  %i.yp = mul nsw i64 %indvars.iv.next804, %i.ue
  %gep1016.1 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yp
  store double %i.yo, ptr %gep1016.1, align 8, !tbaa !9
  %indvars.iv.next804.1 = add nsw i64 %indvars.iv803, 2
  %i.yq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv799
  %i.yr = getelementptr i8, ptr %i.yq, i64 16
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !9
  %i.yt = mul nsw i64 %indvars.iv.next804.1, %i.ue
  %gep1016.2 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yt
  store double %i.ys, ptr %gep1016.2, align 8, !tbaa !9
  %indvars.iv.next804.2 = add nsw i64 %indvars.iv803, 3
  %i.yu = getelementptr [8 x i8], ptr %3, i64 %indvars.iv799
  %i.yv = getelementptr i8, ptr %i.yu, i64 24
  %i.yw = load double, ptr %i.yv, align 8, !tbaa !9
  %i.yx = mul nsw i64 %indvars.iv.next804.2, %i.ue
  %gep1016.3 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yx
  store double %i.yw, ptr %gep1016.3, align 8, !tbaa !9
  %indvars.iv.next804.3 = add nsw i64 %indvars.iv803, 4
  %i.yy = getelementptr [8 x i8], ptr %3, i64 %indvars.iv799
  %i.yz = getelementptr i8, ptr %i.yy, i64 32
  %i.za = load double, ptr %i.yz, align 8, !tbaa !9
  %i.zb = mul nsw i64 %indvars.iv.next804.3, %i.ue
  %gep1016.4 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.zb
  store double %i.za, ptr %gep1016.4, align 8, !tbaa !9
  %indvars.iv.next804.4 = add nsw i64 %indvars.iv803, 5
  %i.zc = getelementptr [8 x i8], ptr %3, i64 %indvars.iv799
  %i.zd = getelementptr i8, ptr %i.zc, i64 40
  %i.ze = load double, ptr %i.zd, align 8, !tbaa !9
  %i.zf = mul nsw i64 %indvars.iv.next804.4, %i.ue
  %gep1016.5 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.zf
  store double %i.ze, ptr %gep1016.5, align 8, !tbaa !9
  %indvars.iv.next804.5 = add nsw i64 %indvars.iv803, 6
  %i.zg = getelementptr [8 x i8], ptr %3, i64 %indvars.iv799
  %i.zh = getelementptr i8, ptr %i.zg, i64 48
  %i.zi = load double, ptr %i.zh, align 8, !tbaa !9
  %i.zj = mul nsw i64 %indvars.iv.next804.5, %i.ue
  %gep1016.6 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.zj
  store double %i.zi, ptr %gep1016.6, align 8, !tbaa !9
  %indvars.iv.next804.6 = add nsw i64 %indvars.iv803, 7
  %i.zk = getelementptr [8 x i8], ptr %3, i64 %indvars.iv799
  %i.zl = getelementptr i8, ptr %i.zk, i64 56
  %i.zm = load double, ptr %i.zl, align 8, !tbaa !9
  %i.zn = mul nsw i64 %indvars.iv.next804.6, %i.ue
  %gep1016.7 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.zn
  store double %i.zm, ptr %gep1016.7, align 8, !tbaa !9
  %indvars.iv.next800.7 = add nsw i64 %indvars.iv799, 8 ; 2 uses
  %indvars.iv.next804.7 = add nsw i64 %indvars.iv803, 8 ; 2 uses
  %lftr.wideiv808.7 = trunc i64 %indvars.iv.next804.7 to i32
  %exitcond809.not.7 = icmp eq i32 %i.i, %lftr.wideiv808.7
  br i1 %exitcond809.not.7, label %._crit_edge558, label %.lr.ph557, !llvm.loop !60

._crit_edge558:                                   ; preds = %.lr.ph557.prol.loopexit, %.lr.ph557, %middle.block1314, %vec.epilog.middle.block1328, %.loopexit1813
  %.15.lcssa.in = phi i64 [ %indvars.iv.next787.lcssa, %.loopexit1813 ], [ %i.ya, %vec.epilog.middle.block1328 ], [ %i.xr, %middle.block1314 ], [ %indvars.iv.next800.lcssa.unr, %.lr.ph557.prol.loopexit ], [ %indvars.iv.next800.7, %.lr.ph557 ]
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
  %i.zo = zext nneg i32 %i.i to i64               ; 6 uses
  %i.zp = lshr exact i64 %i.zo, 1                 ; 6 uses
  %i.zq = sext i32 %i.d to i64                    ; 3 uses
  %i.zr = zext nneg i32 %i.i to i64
  %i.zs = zext nneg i32 %i.v to i64
  %wide.trip.count839 = zext nneg i32 %i.v to i64
  %i.zt = shl nsw i64 %i.zq, 3
  %i.zu = add nsw i64 %i.zt, 8
  %ident.check1406.not = icmp eq i32 %i.d, 1
  br label %iter.check1434

iter.check1434:                                   ; preds = %.lr.ph574.preheader, %._crit_edge569
  %indvars.iv829 = phi i64 [ 0, %.lr.ph574.preheader ], [ %indvars.iv.next830, %._crit_edge569 ] ; 16 uses
  %.16573 = phi i32 [ 0, %.lr.ph574.preheader ], [ %.18.lcssa, %._crit_edge569 ] ; 5 uses
  %i.zv = add nuw i64 %indvars.iv829, 1           ; 5 uses
  %i.zw = sub nsw i64 %i.zo, %indvars.iv829       ; 7 uses
  %i.zx = mul i64 %i.zu, %indvars.iv829
  %i.zy = add nuw nsw i64 %indvars.iv829, %i.zs   ; 2 uses
  %i.zz = sext i32 %.16573 to i64                 ; 7 uses
  %invariant.gep1017 = getelementptr [8 x i8], ptr %4, i64 %i.zy ; 3 uses
  %min.iters.check1410 = icmp samesign ugt i64 %indvars.iv829, 2
  %or.cond1822 = select i1 %min.iters.check1410, i1 %ident.check1406.not, i1 false
  br i1 %or.cond1822, label %vector.memcheck1407, label %vec.epilog.scalar.ph1435.preheader

vector.memcheck1407:                              ; preds = %iter.check1434
  %i.aaa = shl nsw i64 %i.zz, 3
  %i.aab = add nuw i64 %indvars.iv829, %i.zo
  %i.aac = shl i64 %i.aab, 3
  %i.aad = add i64 %i.aac, %i.b
  %i.aae = add i64 %i.aaa, %i.a
  %i.aaf = sub i64 %i.aae, %i.aad
  %diff.check1408 = icmp ugt i64 %i.aaf, -128
  br i1 %diff.check1408, label %vec.epilog.scalar.ph1435.preheader, label %vector.main.loop.iter.check1411

vector.main.loop.iter.check1411:                  ; preds = %vector.memcheck1407
  %min.iters.check1412 = icmp samesign ult i64 %indvars.iv829, 15
  br i1 %min.iters.check1412, label %vec.epilog.ph1438, label %vector.ph1413

vector.ph1413:                                    ; preds = %vector.main.loop.iter.check1411
  %i.aag = and i64 %i.zv, 12
  %n.vec1414 = and i64 %i.zv, -16                 ; 5 uses
  %i.aah = add i64 %i.zp, %n.vec1414
  %i.aai = add i64 %n.vec1414, %i.zz              ; 2 uses
  %i.aaj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.16573, i64 0
  %invariant.gep2020 = getelementptr [8 x i8], ptr %3, i64 %i.zz
  %i.aak = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %i.zp
  br label %vector.body1415

vector.body1415:                                  ; preds = %vector.body1415, %vector.ph1413
  %index1416 = phi i64 [ 0, %vector.ph1413 ], [ %index.next1425, %vector.body1415 ] ; 3 uses
  %vec.phi1417 = phi <4 x i32> [ %i.aaj, %vector.ph1413 ], [ %i.aal, %vector.body1415 ]
  %vec.phi1418 = phi <4 x i32> [ zeroinitializer, %vector.ph1413 ], [ %i.aam, %vector.body1415 ]
  %vec.phi1419 = phi <4 x i32> [ zeroinitializer, %vector.ph1413 ], [ %i.aan, %vector.body1415 ]
  %vec.phi1420 = phi <4 x i32> [ zeroinitializer, %vector.ph1413 ], [ %i.aao, %vector.body1415 ]
  %i.aal = add <4 x i32> %vec.phi1417, splat (i32 1) ; 2 uses
  %i.aam = add <4 x i32> %vec.phi1418, splat (i32 1) ; 2 uses
  %i.aan = add <4 x i32> %vec.phi1419, splat (i32 1) ; 2 uses
  %i.aao = add <4 x i32> %vec.phi1420, splat (i32 1) ; 2 uses
  %gep2021 = getelementptr [8 x i8], ptr %invariant.gep2020, i64 %index1416 ; 4 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %gep2021, i64 32
  %i.aaq = getelementptr inbounds nuw i8, ptr %gep2021, i64 64
  %i.aar = getelementptr inbounds nuw i8, ptr %gep2021, i64 96
  %wide.load1421 = load <4 x double>, ptr %gep2021, align 8, !tbaa !9
  %wide.load1422 = load <4 x double>, ptr %i.aap, align 8, !tbaa !9
  %wide.load1423 = load <4 x double>, ptr %i.aaq, align 8, !tbaa !9
  %wide.load1424 = load <4 x double>, ptr %i.aar, align 8, !tbaa !9
  %i.aas = getelementptr [8 x i8], ptr %i.aak, i64 %index1416 ; 4 uses
  %i.aat = getelementptr i8, ptr %i.aas, i64 32
  %i.aau = getelementptr i8, ptr %i.aas, i64 64
  %i.aav = getelementptr i8, ptr %i.aas, i64 96
  store <4 x double> %wide.load1421, ptr %i.aas, align 8, !tbaa !9
  store <4 x double> %wide.load1422, ptr %i.aat, align 8, !tbaa !9
  store <4 x double> %wide.load1423, ptr %i.aau, align 8, !tbaa !9
  store <4 x double> %wide.load1424, ptr %i.aav, align 8, !tbaa !9
  %index.next1425 = add nuw i64 %index1416, 16    ; 2 uses
  %i.aaw = icmp eq i64 %index.next1425, %n.vec1414
  br i1 %i.aaw, label %middle.block1426, label %vector.body1415, !llvm.loop !62

middle.block1426:                                 ; preds = %vector.body1415
  %bin.rdx1427 = add <4 x i32> %i.aam, %i.aal
  %bin.rdx1428 = add <4 x i32> %i.aan, %bin.rdx1427
  %bin.rdx1429 = add <4 x i32> %i.aao, %bin.rdx1428
  %i.aax = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1429) ; 3 uses
  %cmp.n1430 = icmp eq i64 %i.zv, %n.vec1414
  br i1 %cmp.n1430, label %.preheader474, label %vec.epilog.iter.check1436

vec.epilog.iter.check1436:                        ; preds = %middle.block1426
  %min.epilog.iters.check1437 = icmp eq i64 %i.aag, 0
  br i1 %min.epilog.iters.check1437, label %vec.epilog.scalar.ph1435.preheader, label %vec.epilog.ph1438, !prof !15

vec.epilog.ph1438:                                ; preds = %vector.main.loop.iter.check1411, %vec.epilog.iter.check1436
  %vec.epilog.resume.val1431 = phi i64 [ %n.vec1414, %vec.epilog.iter.check1436 ], [ 0, %vector.main.loop.iter.check1411 ]
  %bc.merge.rdx1432 = phi i32 [ %i.aax, %vec.epilog.iter.check1436 ], [ %.16573, %vector.main.loop.iter.check1411 ]
  %n.vec1439 = and i64 %i.zv, -4                  ; 4 uses
  %i.aay = add i64 %i.zp, %n.vec1439
  %i.aaz = add i64 %n.vec1439, %i.zz              ; 2 uses
  %i.aba = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1432, i64 0
  %invariant.gep2022 = getelementptr [8 x i8], ptr %3, i64 %i.zz
  %i.abb = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %i.zp
  br label %vec.epilog.vector.body1440

vec.epilog.vector.body1440:                       ; preds = %vec.epilog.vector.body1440, %vec.epilog.ph1438
  %index1441 = phi i64 [ %vec.epilog.resume.val1431, %vec.epilog.ph1438 ], [ %index.next1444, %vec.epilog.vector.body1440 ] ; 3 uses
  %vec.phi1442 = phi <4 x i32> [ %i.aba, %vec.epilog.ph1438 ], [ %i.abc, %vec.epilog.vector.body1440 ]
  %i.abc = add <4 x i32> %vec.phi1442, splat (i32 1) ; 2 uses
  %gep2023 = getelementptr [8 x i8], ptr %invariant.gep2022, i64 %index1441
  %wide.load1443 = load <4 x double>, ptr %gep2023, align 8, !tbaa !9
  %i.abd = getelementptr [8 x i8], ptr %i.abb, i64 %index1441
  store <4 x double> %wide.load1443, ptr %i.abd, align 8, !tbaa !9
  %index.next1444 = add nuw i64 %index1441, 4     ; 2 uses
  %i.abe = icmp eq i64 %index.next1444, %n.vec1439
  br i1 %i.abe, label %vec.epilog.middle.block1445, label %vec.epilog.vector.body1440, !llvm.loop !63

vec.epilog.middle.block1445:                      ; preds = %vec.epilog.vector.body1440
  %i.abf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.abc) ; 2 uses
  %cmp.n1446 = icmp eq i64 %i.zv, %n.vec1439
  br i1 %cmp.n1446, label %.preheader474, label %vec.epilog.scalar.ph1435.preheader

vec.epilog.scalar.ph1435.preheader:               ; preds = %vector.memcheck1407, %iter.check1434, %vec.epilog.iter.check1436, %vec.epilog.middle.block1445
  %indvars.iv825.in.ph = phi i32 [ %.16573, %iter.check1434 ], [ %.16573, %vector.memcheck1407 ], [ %i.aax, %vec.epilog.iter.check1436 ], [ %i.abf, %vec.epilog.middle.block1445 ]
  %indvars.iv821.ph = phi i64 [ %i.zp, %iter.check1434 ], [ %i.zp, %vector.memcheck1407 ], [ %i.aah, %vec.epilog.iter.check1436 ], [ %i.aay, %vec.epilog.middle.block1445 ]
  %indvars.iv819.ph = phi i64 [ %i.zz, %iter.check1434 ], [ %i.zz, %vector.memcheck1407 ], [ %i.aai, %vec.epilog.iter.check1436 ], [ %i.aaz, %vec.epilog.middle.block1445 ]
  br label %vec.epilog.scalar.ph1435

.preheader474:                                    ; preds = %vec.epilog.scalar.ph1435, %vec.epilog.middle.block1445, %middle.block1426
  %indvars.iv825.lcssa = phi i32 [ %i.abf, %vec.epilog.middle.block1445 ], [ %i.aax, %middle.block1426 ], [ %indvars.iv825, %vec.epilog.scalar.ph1435 ]
  %indvars.iv.next820.lcssa = phi i64 [ %i.aaz, %vec.epilog.middle.block1445 ], [ %i.aai, %middle.block1426 ], [ %indvars.iv.next820, %vec.epilog.scalar.ph1435 ]
  %.not435.not565 = icmp samesign ult i64 %indvars.iv829, %i.zr
  br i1 %.not435.not565, label %iter.check1391, label %._crit_edge569

iter.check1391:                                   ; preds = %.preheader474
  %i.abg = mul nsw i64 %indvars.iv829, %i.zq
  %i.abh = sext i32 %indvars.iv825.lcssa to i64   ; 7 uses
  %invariant.gep1019 = getelementptr [8 x i8], ptr %4, i64 %i.abg ; 11 uses
  %min.iters.check1375 = icmp ult i64 %i.zw, 4
  br i1 %min.iters.check1375, label %vec.epilog.scalar.ph1392.preheader, label %vector.memcheck1373

vector.memcheck1373:                              ; preds = %iter.check1391
  %i.abi = shl nsw i64 %i.abh, 3
  %i.abj = add i64 %i.zx, %i.b
  %i.abk = add i64 %i.abi, %i.a
  %i.abl = sub i64 %i.abk, %i.abj
  %diff.check1374 = icmp ugt i64 %i.abl, -128
  br i1 %diff.check1374, label %vec.epilog.scalar.ph1392.preheader, label %vector.main.loop.iter.check1376

vector.main.loop.iter.check1376:                  ; preds = %vector.memcheck1373
  %min.iters.check1377 = icmp ult i64 %i.zw, 16
  br i1 %min.iters.check1377, label %vec.epilog.ph1395, label %vector.ph1378

vector.ph1378:                                    ; preds = %vector.main.loop.iter.check1376
  %i.abm = and i64 %i.zw, 12
  %n.vec1379 = and i64 %i.zw, -16                 ; 5 uses
  %i.abn = add i64 %indvars.iv829, %n.vec1379
  %i.abo = add i64 %n.vec1379, %i.abh             ; 2 uses
  %invariant.gep2024 = getelementptr [8 x i8], ptr %3, i64 %i.abh
  %i.abp = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv829
  br label %vector.body1380

vector.body1380:                                  ; preds = %vector.body1380, %vector.ph1378
  %index1381 = phi i64 [ 0, %vector.ph1378 ], [ %index.next1386, %vector.body1380 ] ; 3 uses
  %gep2025 = getelementptr [8 x i8], ptr %invariant.gep2024, i64 %index1381 ; 4 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %gep2025, i64 32
  %i.abr = getelementptr inbounds nuw i8, ptr %gep2025, i64 64
  %i.abs = getelementptr inbounds nuw i8, ptr %gep2025, i64 96
  %wide.load1382 = load <4 x double>, ptr %gep2025, align 8, !tbaa !9
  %wide.load1383 = load <4 x double>, ptr %i.abq, align 8, !tbaa !9
  %wide.load1384 = load <4 x double>, ptr %i.abr, align 8, !tbaa !9
  %wide.load1385 = load <4 x double>, ptr %i.abs, align 8, !tbaa !9
  %i.abt = getelementptr [8 x i8], ptr %i.abp, i64 %index1381 ; 4 uses
  %i.abu = getelementptr i8, ptr %i.abt, i64 32
  %i.abv = getelementptr i8, ptr %i.abt, i64 64
  %i.abw = getelementptr i8, ptr %i.abt, i64 96
  store <4 x double> %wide.load1382, ptr %i.abt, align 8, !tbaa !9
  store <4 x double> %wide.load1383, ptr %i.abu, align 8, !tbaa !9
  store <4 x double> %wide.load1384, ptr %i.abv, align 8, !tbaa !9
  store <4 x double> %wide.load1385, ptr %i.abw, align 8, !tbaa !9
  %index.next1386 = add nuw i64 %index1381, 16    ; 2 uses
  %i.abx = icmp eq i64 %index.next1386, %n.vec1379
  br i1 %i.abx, label %middle.block1387, label %vector.body1380, !llvm.loop !64

middle.block1387:                                 ; preds = %vector.body1380
  %cmp.n1388 = icmp eq i64 %i.zw, %n.vec1379
  br i1 %cmp.n1388, label %._crit_edge569, label %vec.epilog.iter.check1393

vec.epilog.iter.check1393:                        ; preds = %middle.block1387
  %min.epilog.iters.check1394 = icmp eq i64 %i.abm, 0
  br i1 %min.epilog.iters.check1394, label %vec.epilog.scalar.ph1392.preheader, label %vec.epilog.ph1395, !prof !15

vec.epilog.ph1395:                                ; preds = %vector.main.loop.iter.check1376, %vec.epilog.iter.check1393
  %vec.epilog.resume.val1389 = phi i64 [ %n.vec1379, %vec.epilog.iter.check1393 ], [ 0, %vector.main.loop.iter.check1376 ]
  %n.vec1396 = and i64 %i.zw, -4                  ; 4 uses
  %i.aby = add i64 %indvars.iv829, %n.vec1396
  %i.abz = add i64 %n.vec1396, %i.abh             ; 2 uses
  %invariant.gep2026 = getelementptr [8 x i8], ptr %3, i64 %i.abh
  %i.aca = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv829
  br label %vec.epilog.vector.body1397

vec.epilog.vector.body1397:                       ; preds = %vec.epilog.vector.body1397, %vec.epilog.ph1395
  %index1398 = phi i64 [ %vec.epilog.resume.val1389, %vec.epilog.ph1395 ], [ %index.next1400, %vec.epilog.vector.body1397 ] ; 3 uses
  %gep2027 = getelementptr [8 x i8], ptr %invariant.gep2026, i64 %index1398
  %wide.load1399 = load <4 x double>, ptr %gep2027, align 8, !tbaa !9
  %i.acb = getelementptr [8 x i8], ptr %i.aca, i64 %index1398
  store <4 x double> %wide.load1399, ptr %i.acb, align 8, !tbaa !9
  %index.next1400 = add nuw i64 %index1398, 4     ; 2 uses
  %i.acc = icmp eq i64 %index.next1400, %n.vec1396
  br i1 %i.acc, label %vec.epilog.middle.block1401, label %vec.epilog.vector.body1397, !llvm.loop !65

vec.epilog.middle.block1401:                      ; preds = %vec.epilog.vector.body1397
  %cmp.n1402 = icmp eq i64 %i.zw, %n.vec1396
  br i1 %cmp.n1402, label %._crit_edge569, label %vec.epilog.scalar.ph1392.preheader

vec.epilog.scalar.ph1392.preheader:               ; preds = %vector.memcheck1373, %iter.check1391, %vec.epilog.iter.check1393, %vec.epilog.middle.block1401
  %indvars.iv831.ph.a = phi i64 [ %indvars.iv829, %iter.check1391 ], [ %indvars.iv829, %vector.memcheck1373 ], [ %i.abn, %vec.epilog.iter.check1393 ], [ %i.aby, %vec.epilog.middle.block1401 ] ; 4 uses
  %indvars.iv827.ph = phi i64 [ %i.abh, %iter.check1391 ], [ %i.abh, %vector.memcheck1373 ], [ %i.abo, %vec.epilog.iter.check1393 ], [ %i.abz, %vec.epilog.middle.block1401 ] ; 2 uses
  %i.acd = sub i64 %i.zo, %indvars.iv831.ph.a
  %xtraiter1912 = and i64 %i.acd, 7               ; 2 uses
  %lcmp.mod1913.not = icmp eq i64 %xtraiter1912, 0
  br i1 %lcmp.mod1913.not, label %vec.epilog.scalar.ph1392.prol.loopexit, label %vec.epilog.scalar.ph1392.prol

vec.epilog.scalar.ph1392.prol:                    ; preds = %vec.epilog.scalar.ph1392.preheader, %vec.epilog.scalar.ph1392.prol
  %indvars.iv831.prol.a = phi i64 [ %indvars.iv.next832.prol, %vec.epilog.scalar.ph1392.prol ], [ %indvars.iv831.ph.a, %vec.epilog.scalar.ph1392.preheader ] ; 2 uses
  %indvars.iv827.prol = phi i64 [ %indvars.iv.next828.prol, %vec.epilog.scalar.ph1392.prol ], [ %indvars.iv827.ph, %vec.epilog.scalar.ph1392.preheader ] ; 2 uses
  %prol.iter1914 = phi i64 [ %prol.iter1914.next, %vec.epilog.scalar.ph1392.prol ], [ 0, %vec.epilog.scalar.ph1392.preheader ]
  %i.ace = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv827.prol
  %i.acf = load double, ptr %i.ace, align 8, !tbaa !9
  %gep1020.prol = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.prol.a
  store double %i.acf, ptr %gep1020.prol, align 8, !tbaa !9
  %indvars.iv.next828.prol = add nsw i64 %indvars.iv827.prol, 1 ; 3 uses
  %indvars.iv.next832.prol = add nuw nsw i64 %indvars.iv831.prol.a, 1 ; 2 uses
  %prol.iter1914.next = add i64 %prol.iter1914, 1 ; 2 uses
  %prol.iter1914.cmp.not = icmp eq i64 %prol.iter1914.next, %xtraiter1912
  br i1 %prol.iter1914.cmp.not, label %vec.epilog.scalar.ph1392.prol.loopexit, label %vec.epilog.scalar.ph1392.prol, !llvm.loop !66

vec.epilog.scalar.ph1392.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1392.prol, %vec.epilog.scalar.ph1392.preheader
  %indvars.iv.next828.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph1392.preheader ], [ %indvars.iv.next828.prol, %vec.epilog.scalar.ph1392.prol ]
  %indvars.iv831.unr.a = phi i64 [ %indvars.iv831.ph.a, %vec.epilog.scalar.ph1392.preheader ], [ %indvars.iv.next832.prol, %vec.epilog.scalar.ph1392.prol ]
  %indvars.iv827.unr = phi i64 [ %indvars.iv827.ph, %vec.epilog.scalar.ph1392.preheader ], [ %indvars.iv.next828.prol, %vec.epilog.scalar.ph1392.prol ]
  %i.acg = sub i64 %indvars.iv831.ph.a, %i.zo
  %i.ach = icmp ugt i64 %i.acg, -8
  br i1 %i.ach, label %._crit_edge569, label %vec.epilog.scalar.ph1392

vec.epilog.scalar.ph1435:                         ; preds = %vec.epilog.scalar.ph1435.preheader, %vec.epilog.scalar.ph1435
  %indvars.iv825.in = phi i32 [ %indvars.iv825, %vec.epilog.scalar.ph1435 ], [ %indvars.iv825.in.ph, %vec.epilog.scalar.ph1435.preheader ]
  %indvars.iv821 = phi i64 [ %indvars.iv.next822.a, %vec.epilog.scalar.ph1435 ], [ %indvars.iv821.ph, %vec.epilog.scalar.ph1435.preheader ] ; 3 uses
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %vec.epilog.scalar.ph1435 ], [ %indvars.iv819.ph, %vec.epilog.scalar.ph1435.preheader ] ; 2 uses
  %indvars.iv825 = add i32 %indvars.iv825.in, 1   ; 2 uses
  %i.aci = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv819
  %i.acj = load double, ptr %i.aci, align 8, !tbaa !9
  %i.ack = mul nsw i64 %indvars.iv821, %i.zq
  %gep1018 = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %i.ack
  store double %i.acj, ptr %gep1018, align 8, !tbaa !9
  %indvars.iv.next820 = add nsw i64 %indvars.iv819, 1 ; 2 uses
  %indvars.iv.next822.a = add nuw nsw i64 %indvars.iv821, 1
  %.not434.not = icmp samesign ult i64 %indvars.iv821, %i.zy
  br i1 %.not434.not, label %vec.epilog.scalar.ph1435, label %.preheader474, !llvm.loop !67

vec.epilog.scalar.ph1392:                         ; preds = %vec.epilog.scalar.ph1392.prol.loopexit, %vec.epilog.scalar.ph1392
  %indvars.iv831.a = phi i64 [ %indvars.iv.next832.7, %vec.epilog.scalar.ph1392 ], [ %indvars.iv831.unr.a, %vec.epilog.scalar.ph1392.prol.loopexit ] ; 9 uses
  %indvars.iv827 = phi i64 [ %indvars.iv.next828.7, %vec.epilog.scalar.ph1392 ], [ %indvars.iv827.unr, %vec.epilog.scalar.ph1392.prol.loopexit ] ; 9 uses
  %i.acl = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv827
  %i.acm = load double, ptr %i.acl, align 8, !tbaa !9
  %gep1020 = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  store double %i.acm, ptr %gep1020, align 8, !tbaa !9
  %i.acn = getelementptr [8 x i8], ptr %3, i64 %indvars.iv827
  %i.aco = getelementptr i8, ptr %i.acn, i64 8
  %i.acp = load double, ptr %i.aco, align 8, !tbaa !9
  %i.acq = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.1 = getelementptr i8, ptr %i.acq, i64 8
  store double %i.acp, ptr %gep1020.1, align 8, !tbaa !9
  %i.acr = getelementptr [8 x i8], ptr %3, i64 %indvars.iv827
  %i.acs = getelementptr i8, ptr %i.acr, i64 16
  %i.act = load double, ptr %i.acs, align 8, !tbaa !9
  %i.acu = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.2 = getelementptr i8, ptr %i.acu, i64 16
  store double %i.act, ptr %gep1020.2, align 8, !tbaa !9
  %i.acv = getelementptr [8 x i8], ptr %3, i64 %indvars.iv827
  %i.acw = getelementptr i8, ptr %i.acv, i64 24
  %i.acx = load double, ptr %i.acw, align 8, !tbaa !9
  %i.acy = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.3 = getelementptr i8, ptr %i.acy, i64 24
  store double %i.acx, ptr %gep1020.3, align 8, !tbaa !9
  %i.acz = getelementptr [8 x i8], ptr %3, i64 %indvars.iv827
  %i.ada = getelementptr i8, ptr %i.acz, i64 32
  %i.adb = load double, ptr %i.ada, align 8, !tbaa !9
  %i.adc = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.4 = getelementptr i8, ptr %i.adc, i64 32
  store double %i.adb, ptr %gep1020.4, align 8, !tbaa !9
  %i.add = getelementptr [8 x i8], ptr %3, i64 %indvars.iv827
  %i.ade = getelementptr i8, ptr %i.add, i64 40
  %i.adf = load double, ptr %i.ade, align 8, !tbaa !9
  %i.adg = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.5 = getelementptr i8, ptr %i.adg, i64 40
  store double %i.adf, ptr %gep1020.5, align 8, !tbaa !9
  %i.adh = getelementptr [8 x i8], ptr %3, i64 %indvars.iv827
  %i.adi = getelementptr i8, ptr %i.adh, i64 48
  %i.adj = load double, ptr %i.adi, align 8, !tbaa !9
  %i.adk = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.6 = getelementptr i8, ptr %i.adk, i64 48
  store double %i.adj, ptr %gep1020.6, align 8, !tbaa !9
  %i.adl = getelementptr [8 x i8], ptr %3, i64 %indvars.iv827
  %i.adm = getelementptr i8, ptr %i.adl, i64 56
  %i.adn = load double, ptr %i.adm, align 8, !tbaa !9
  %i.ado = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.7 = getelementptr i8, ptr %i.ado, i64 56
  store double %i.adn, ptr %gep1020.7, align 8, !tbaa !9
  %indvars.iv.next828.7 = add nsw i64 %indvars.iv827, 8 ; 2 uses
  %indvars.iv.next832.7 = add nuw nsw i64 %indvars.iv831.a, 8 ; 2 uses
  %exitcond837.not.7 = icmp eq i64 %indvars.iv.next832.7, %i.zo
  br i1 %exitcond837.not.7, label %._crit_edge569, label %vec.epilog.scalar.ph1392, !llvm.loop !68

._crit_edge569:                                   ; preds = %vec.epilog.scalar.ph1392.prol.loopexit, %vec.epilog.scalar.ph1392, %middle.block1387, %vec.epilog.middle.block1401, %.preheader474
  %.18.lcssa.in = phi i64 [ %indvars.iv.next820.lcssa, %.preheader474 ], [ %i.abz, %vec.epilog.middle.block1401 ], [ %i.abo, %middle.block1387 ], [ %indvars.iv.next828.lcssa.unr, %vec.epilog.scalar.ph1392.prol.loopexit ], [ %indvars.iv.next828.7, %vec.epilog.scalar.ph1392 ]
  %.18.lcssa = trunc i64 %.18.lcssa.in to i32
  %indvars.iv.next830 = add nuw nsw i64 %indvars.iv829, 1 ; 2 uses
  %exitcond840.not = icmp eq i64 %indvars.iv.next830, %wide.trip.count839
  br i1 %exitcond840.not, label %.loopexit, label %iter.check1434, !llvm.loop !69

.preheader469.lr.ph:                              ; preds = %bb.p
  %i.adp = xor i32 %i.i, -1
  %i.adq = add nsw i32 %i.u, %i.adp
  %i.adr = shl nuw i32 %i.i, 1
  %i.ads = xor i32 %i.v, -1
  %i.adt = add nsw i32 %i.i, %i.ads
  %i.adu = sext i32 %i.d to i64                   ; 12 uses
  %i.adv = zext nneg i32 %i.i to i64              ; 4 uses
  %i.adw = zext nneg i32 %i.v to i64              ; 4 uses
  %i.adx = shl nuw nsw i64 %i.adv, 3
  %i.ady = add i64 %i.adx, %i.b
  %i.adz = add i64 %i.ady, -8
  %i.aea = add nuw nsw i64 %i.adv, 2305843009213693951
  %i.aeb = mul i64 %i.aea, %i.adu
  %i.aec = shl i64 %i.aeb, 3
  %i.aed = add i64 %i.aec, %i.b
  %i.aee = mul nsw i64 %i.adu, -8
  %ident.check1593.not = icmp eq i32 %i.d, 1
  %invariant.op = sub i32 -2, %i.adr
  br label %iter.check1653

iter.check1653:                                   ; preds = %.preheader469.lr.ph, %._crit_edge611
  %indvar1595 = phi i64 [ 0, %.preheader469.lr.ph ], [ %indvar.next1596, %._crit_edge611 ] ; 5 uses
  %indvars.iv916 = phi i64 [ %i.adv, %.preheader469.lr.ph ], [ %indvars.iv.next917, %._crit_edge611 ] ; 10 uses
  %indvars.iv907 = phi i32 [ %i.adt, %.preheader469.lr.ph ], [ %indvars.iv.next908, %._crit_edge611 ] ; 3 uses
  %.19616 = phi i32 [ %i.adq, %.preheader469.lr.ph ], [ %.reass.reass, %._crit_edge611 ] ; 5 uses
  %i.aef = and i64 %indvar1595, 4294967295        ; 3 uses
  %i.aeg = add nuw nsw i64 %i.aef, 1              ; 5 uses
  %i.aeh = add i64 %indvar1595, %i.adw
  %i.aei = sext i32 %indvars.iv907 to i64
  %i.aej = shl nsw i64 %i.aei, 3
  %i.aek = sext i32 %indvars.iv907 to i64         ; 6 uses
  %indvars.iv.next917 = add nsw i64 %indvars.iv916, -1 ; 4 uses
  %i.ael = mul nsw i64 %indvars.iv.next917, %i.adu
  %i.aem = sext i32 %.19616 to i64                ; 7 uses
  %invariant.gep1029 = getelementptr [8 x i8], ptr %4, i64 %i.ael ; 11 uses
  %min.iters.check1630 = icmp ult i64 %indvars.iv916, 4
  br i1 %min.iters.check1630, label %vec.epilog.scalar.ph1654.preheader, label %vector.memcheck1628

vector.memcheck1628:                              ; preds = %iter.check1653
  %i.aen = mul i64 %i.aee, %indvar1595
  %i.aeo = shl nsw i64 %i.aem, 3
  %i.aep = add i64 %i.aed, %i.aen
  %i.aeq = add i64 %i.aeo, %i.a
  %i.aer = sub i64 %i.aeq, %i.aep
  %diff.check1629 = icmp ugt i64 %i.aer, -128
  br i1 %diff.check1629, label %vec.epilog.scalar.ph1654.preheader, label %vector.main.loop.iter.check1631

vector.main.loop.iter.check1631:                  ; preds = %vector.memcheck1628
  %min.iters.check1632 = icmp ult i64 %indvars.iv916, 16
  br i1 %min.iters.check1632, label %vec.epilog.ph1657, label %vector.ph1633

vector.ph1633:                                    ; preds = %vector.main.loop.iter.check1631
  %i.aes = and i64 %indvars.iv916, 12
  %n.vec1634 = and i64 %indvars.iv916, -16        ; 5 uses
  %i.aet = add i64 %n.vec1634, %i.aem             ; 2 uses
  %i.aeu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.19616, i64 0
  %invariant.gep2040.a = getelementptr [8 x i8], ptr %3, i64 %i.aem
  br label %vector.body1635

vector.body1635:                                  ; preds = %vector.body1635, %vector.ph1633
  %index1636 = phi i64 [ 0, %vector.ph1633 ], [ %index.next1645, %vector.body1635 ] ; 3 uses
  %vec.phi1637 = phi <4 x i32> [ %i.aeu, %vector.ph1633 ], [ %i.aev, %vector.body1635 ]
  %vec.phi1638 = phi <4 x i32> [ zeroinitializer, %vector.ph1633 ], [ %i.aew, %vector.body1635 ]
  %vec.phi1639 = phi <4 x i32> [ zeroinitializer, %vector.ph1633 ], [ %i.aex, %vector.body1635 ]
  %vec.phi1640 = phi <4 x i32> [ zeroinitializer, %vector.ph1633 ], [ %i.aey, %vector.body1635 ]
  %i.aev = add <4 x i32> %vec.phi1637, splat (i32 1) ; 2 uses
  %i.aew = add <4 x i32> %vec.phi1638, splat (i32 1) ; 2 uses
  %i.aex = add <4 x i32> %vec.phi1639, splat (i32 1) ; 2 uses
  %i.aey = add <4 x i32> %vec.phi1640, splat (i32 1) ; 2 uses
  %gep2041.a = getelementptr [8 x i8], ptr %invariant.gep2040.a, i64 %index1636 ; 4 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %gep2041.a, i64 32
  %i.afa = getelementptr inbounds nuw i8, ptr %gep2041.a, i64 64
  %i.afb = getelementptr inbounds nuw i8, ptr %gep2041.a, i64 96
  %wide.load1641 = load <4 x double>, ptr %gep2041.a, align 8, !tbaa !9
  %wide.load1642 = load <4 x double>, ptr %i.aez, align 8, !tbaa !9
  %wide.load1643 = load <4 x double>, ptr %i.afa, align 8, !tbaa !9
  %wide.load1644 = load <4 x double>, ptr %i.afb, align 8, !tbaa !9
  %i.afc = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %index1636 ; 4 uses
  %i.afd = getelementptr i8, ptr %i.afc, i64 32
  %i.afe = getelementptr i8, ptr %i.afc, i64 64
  %i.aff = getelementptr i8, ptr %i.afc, i64 96
  store <4 x double> %wide.load1641, ptr %i.afc, align 8, !tbaa !9
  store <4 x double> %wide.load1642, ptr %i.afd, align 8, !tbaa !9
  store <4 x double> %wide.load1643, ptr %i.afe, align 8, !tbaa !9
  store <4 x double> %wide.load1644, ptr %i.aff, align 8, !tbaa !9
  %index.next1645 = add nuw i64 %index1636, 16    ; 2 uses
  %i.afg = icmp eq i64 %index.next1645, %n.vec1634
  br i1 %i.afg, label %middle.block1646, label %vector.body1635, !llvm.loop !70

middle.block1646:                                 ; preds = %vector.body1635
  %bin.rdx1647 = add <4 x i32> %i.aew, %i.aev
  %bin.rdx1648 = add <4 x i32> %i.aex, %bin.rdx1647
  %bin.rdx1649 = add <4 x i32> %i.aey, %bin.rdx1648
  %i.afh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1649) ; 3 uses
  %cmp.n1650 = icmp eq i64 %indvars.iv916, %n.vec1634
  br i1 %cmp.n1650, label %.loopexit1811, label %vec.epilog.iter.check1655

vec.epilog.iter.check1655:                        ; preds = %middle.block1646
  %min.epilog.iters.check1656 = icmp eq i64 %i.aes, 0
  br i1 %min.epilog.iters.check1656, label %vec.epilog.scalar.ph1654.preheader, label %vec.epilog.ph1657, !prof !15

vec.epilog.ph1657:                                ; preds = %vector.main.loop.iter.check1631, %vec.epilog.iter.check1655
  %vec.epilog.resume.val1651 = phi i64 [ %n.vec1634, %vec.epilog.iter.check1655 ], [ 0, %vector.main.loop.iter.check1631 ]
  %bc.merge.rdx1652 = phi i32 [ %i.afh, %vec.epilog.iter.check1655 ], [ %.19616, %vector.main.loop.iter.check1631 ]
  %n.vec1658 = and i64 %indvars.iv916, -4         ; 4 uses
  %i.afi = add i64 %n.vec1658, %i.aem             ; 2 uses
  %i.afj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1652, i64 0
  %invariant.gep2042.a = getelementptr [8 x i8], ptr %3, i64 %i.aem
  br label %vec.epilog.vector.body1659

vec.epilog.vector.body1659:                       ; preds = %vec.epilog.vector.body1659, %vec.epilog.ph1657
  %index1660 = phi i64 [ %vec.epilog.resume.val1651, %vec.epilog.ph1657 ], [ %index.next1663, %vec.epilog.vector.body1659 ] ; 3 uses
  %vec.phi1661 = phi <4 x i32> [ %i.afj, %vec.epilog.ph1657 ], [ %i.afk, %vec.epilog.vector.body1659 ]
  %i.afk = add <4 x i32> %vec.phi1661, splat (i32 1) ; 2 uses
  %gep2043.a = getelementptr [8 x i8], ptr %invariant.gep2042.a, i64 %index1660
  %wide.load1662 = load <4 x double>, ptr %gep2043.a, align 8, !tbaa !9
  %i.afl = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %index1660
  store <4 x double> %wide.load1662, ptr %i.afl, align 8, !tbaa !9
  %index.next1663 = add nuw i64 %index1660, 4     ; 2 uses
  %i.afm = icmp eq i64 %index.next1663, %n.vec1658
  br i1 %i.afm, label %vec.epilog.middle.block1664, label %vec.epilog.vector.body1659, !llvm.loop !71

vec.epilog.middle.block1664:                      ; preds = %vec.epilog.vector.body1659
  %i.afn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.afk) ; 2 uses
  %cmp.n1665 = icmp eq i64 %indvars.iv916, %n.vec1658
  br i1 %cmp.n1665, label %.loopexit1811, label %vec.epilog.scalar.ph1654.preheader

vec.epilog.scalar.ph1654.preheader:               ; preds = %vector.memcheck1628, %iter.check1653, %vec.epilog.iter.check1655, %vec.epilog.middle.block1664
  %indvars.iv903.in.ph = phi i32 [ %.19616, %iter.check1653 ], [ %.19616, %vector.memcheck1628 ], [ %i.afh, %vec.epilog.iter.check1655 ], [ %i.afn, %vec.epilog.middle.block1664 ] ; 2 uses
  %indvars.iv896.ph = phi i64 [ 0, %iter.check1653 ], [ 0, %vector.memcheck1628 ], [ %n.vec1634, %vec.epilog.iter.check1655 ], [ %n.vec1658, %vec.epilog.middle.block1664 ] ; 4 uses
  %indvars.iv894.ph = phi i64 [ %i.aem, %iter.check1653 ], [ %i.aem, %vector.memcheck1628 ], [ %i.aet, %vec.epilog.iter.check1655 ], [ %i.afi, %vec.epilog.middle.block1664 ] ; 2 uses
  %i.afo = sub i64 %indvars.iv916, %indvars.iv896.ph
  %xtraiter1924 = and i64 %i.afo, 7               ; 2 uses
  %lcmp.mod1925.not = icmp eq i64 %xtraiter1924, 0
  br i1 %lcmp.mod1925.not, label %vec.epilog.scalar.ph1654.prol.loopexit, label %vec.epilog.scalar.ph1654.prol

vec.epilog.scalar.ph1654.prol:                    ; preds = %vec.epilog.scalar.ph1654.preheader, %vec.epilog.scalar.ph1654.prol
  %indvars.iv903.in.prol = phi i32 [ %indvars.iv903.prol, %vec.epilog.scalar.ph1654.prol ], [ %indvars.iv903.in.ph, %vec.epilog.scalar.ph1654.preheader ]
  %indvars.iv896.prol = phi i64 [ %indvars.iv.next897.prol, %vec.epilog.scalar.ph1654.prol ], [ %indvars.iv896.ph, %vec.epilog.scalar.ph1654.preheader ] ; 2 uses
  %indvars.iv894.prol = phi i64 [ %indvars.iv.next895.prol, %vec.epilog.scalar.ph1654.prol ], [ %indvars.iv894.ph, %vec.epilog.scalar.ph1654.preheader ] ; 2 uses
  %prol.iter1926 = phi i64 [ %prol.iter1926.next, %vec.epilog.scalar.ph1654.prol ], [ 0, %vec.epilog.scalar.ph1654.preheader ]
  %indvars.iv903.prol = add i32 %indvars.iv903.in.prol, 1 ; 3 uses
  %i.afp = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv894.prol
  %i.afq = load double, ptr %i.afp, align 8, !tbaa !9
  %gep1030.prol = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896.prol
  store double %i.afq, ptr %gep1030.prol, align 8, !tbaa !9
  %indvars.iv.next895.prol = add nsw i64 %indvars.iv894.prol, 1 ; 3 uses
  %indvars.iv.next897.prol = add nuw nsw i64 %indvars.iv896.prol, 1 ; 2 uses
  %prol.iter1926.next = add i64 %prol.iter1926, 1 ; 2 uses
  %prol.iter1926.cmp.not = icmp eq i64 %prol.iter1926.next, %xtraiter1924
  br i1 %prol.iter1926.cmp.not, label %vec.epilog.scalar.ph1654.prol.loopexit, label %vec.epilog.scalar.ph1654.prol, !llvm.loop !72

vec.epilog.scalar.ph1654.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1654.prol, %vec.epilog.scalar.ph1654.preheader
  %indvars.iv903.lcssa1842.unr = phi i32 [ poison, %vec.epilog.scalar.ph1654.preheader ], [ %indvars.iv903.prol, %vec.epilog.scalar.ph1654.prol ]
  %indvars.iv.next895.lcssa1841.unr = phi i64 [ poison, %vec.epilog.scalar.ph1654.preheader ], [ %indvars.iv.next895.prol, %vec.epilog.scalar.ph1654.prol ]
  %indvars.iv903.in.unr = phi i32 [ %indvars.iv903.in.ph, %vec.epilog.scalar.ph1654.preheader ], [ %indvars.iv903.prol, %vec.epilog.scalar.ph1654.prol ]
  %indvars.iv896.unr = phi i64 [ %indvars.iv896.ph, %vec.epilog.scalar.ph1654.preheader ], [ %indvars.iv.next897.prol, %vec.epilog.scalar.ph1654.prol ]
  %indvars.iv894.unr = phi i64 [ %indvars.iv894.ph, %vec.epilog.scalar.ph1654.preheader ], [ %indvars.iv.next895.prol, %vec.epilog.scalar.ph1654.prol ]
  %i.afr = sub i64 %indvar1595, %i.adv
  %i.afs = add i64 %i.afr, %indvars.iv896.ph
  %i.aft = icmp ugt i64 %i.afs, -8
  br i1 %i.aft, label %.loopexit1811, label %vec.epilog.scalar.ph1654

vec.epilog.scalar.ph1654:                         ; preds = %vec.epilog.scalar.ph1654.prol.loopexit, %vec.epilog.scalar.ph1654
  %indvars.iv903.in = phi i32 [ %indvars.iv903.7, %vec.epilog.scalar.ph1654 ], [ %indvars.iv903.in.unr, %vec.epilog.scalar.ph1654.prol.loopexit ]
  %indvars.iv896 = phi i64 [ %indvars.iv.next897.7, %vec.epilog.scalar.ph1654 ], [ %indvars.iv896.unr, %vec.epilog.scalar.ph1654.prol.loopexit ] ; 9 uses
  %indvars.iv894 = phi i64 [ %indvars.iv.next895.7, %vec.epilog.scalar.ph1654 ], [ %indvars.iv894.unr, %vec.epilog.scalar.ph1654.prol.loopexit ] ; 9 uses
  %i.afu = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv894
  %i.afv = load double, ptr %i.afu, align 8, !tbaa !9
  %gep1030 = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  store double %i.afv, ptr %gep1030, align 8, !tbaa !9
  %i.afw = getelementptr [8 x i8], ptr %3, i64 %indvars.iv894
  %i.afx = getelementptr i8, ptr %i.afw, i64 8
  %i.afy = load double, ptr %i.afx, align 8, !tbaa !9
  %i.afz = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.1 = getelementptr i8, ptr %i.afz, i64 8
  store double %i.afy, ptr %gep1030.1, align 8, !tbaa !9
  %i.aga = getelementptr [8 x i8], ptr %3, i64 %indvars.iv894
  %i.agb = getelementptr i8, ptr %i.aga, i64 16
  %i.agc = load double, ptr %i.agb, align 8, !tbaa !9
  %i.agd = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.2 = getelementptr i8, ptr %i.agd, i64 16
  store double %i.agc, ptr %gep1030.2, align 8, !tbaa !9
  %i.age = getelementptr [8 x i8], ptr %3, i64 %indvars.iv894
  %i.agf = getelementptr i8, ptr %i.age, i64 24
  %i.agg = load double, ptr %i.agf, align 8, !tbaa !9
  %i.agh = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.3 = getelementptr i8, ptr %i.agh, i64 24
  store double %i.agg, ptr %gep1030.3, align 8, !tbaa !9
  %i.agi = getelementptr [8 x i8], ptr %3, i64 %indvars.iv894
  %i.agj = getelementptr i8, ptr %i.agi, i64 32
  %i.agk = load double, ptr %i.agj, align 8, !tbaa !9
  %i.agl = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.4 = getelementptr i8, ptr %i.agl, i64 32
  store double %i.agk, ptr %gep1030.4, align 8, !tbaa !9
  %i.agm = getelementptr [8 x i8], ptr %3, i64 %indvars.iv894
  %i.agn = getelementptr i8, ptr %i.agm, i64 40
  %i.ago = load double, ptr %i.agn, align 8, !tbaa !9
  %i.agp = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.5 = getelementptr i8, ptr %i.agp, i64 40
  store double %i.ago, ptr %gep1030.5, align 8, !tbaa !9
  %i.agq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv894
  %i.agr = getelementptr i8, ptr %i.agq, i64 48
  %i.ags = load double, ptr %i.agr, align 8, !tbaa !9
  %i.agt = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.6 = getelementptr i8, ptr %i.agt, i64 48
  store double %i.ags, ptr %gep1030.6, align 8, !tbaa !9
  %indvars.iv903.7 = add i32 %indvars.iv903.in, 8 ; 2 uses
  %i.agu = getelementptr [8 x i8], ptr %3, i64 %indvars.iv894
  %i.agv = getelementptr i8, ptr %i.agu, i64 56
  %i.agw = load double, ptr %i.agv, align 8, !tbaa !9
  %i.agx = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.7 = getelementptr i8, ptr %i.agx, i64 56
  store double %i.agw, ptr %gep1030.7, align 8, !tbaa !9
  %indvars.iv.next895.7 = add nsw i64 %indvars.iv894, 8 ; 2 uses
  %indvars.iv.next897.7 = add nuw nsw i64 %indvars.iv896, 8 ; 2 uses
  %exitcond902.not.7 = icmp eq i64 %indvars.iv.next897.7, %indvars.iv916
  br i1 %exitcond902.not.7, label %.loopexit1811, label %vec.epilog.scalar.ph1654, !llvm.loop !73

.loopexit1811:                                    ; preds = %vec.epilog.scalar.ph1654.prol.loopexit, %vec.epilog.scalar.ph1654, %vec.epilog.middle.block1664, %middle.block1646
  %indvars.iv903.lcssa = phi i32 [ %i.afn, %vec.epilog.middle.block1664 ], [ %i.afh, %middle.block1646 ], [ %indvars.iv903.lcssa1842.unr, %vec.epilog.scalar.ph1654.prol.loopexit ], [ %indvars.iv903.7, %vec.epilog.scalar.ph1654 ]
  %indvars.iv.next895.lcssa = phi i64 [ %i.afi, %vec.epilog.middle.block1664 ], [ %i.aet, %middle.block1646 ], [ %indvars.iv.next895.lcssa1841.unr, %vec.epilog.scalar.ph1654.prol.loopexit ], [ %indvars.iv.next895.7, %vec.epilog.scalar.ph1654 ]
  %i.agy = sub nsw i64 %indvars.iv.next917, %i.adw ; 2 uses
  %.not432.not606 = icmp slt i64 %i.agy, %i.adw
  br i1 %.not432.not606, label %iter.check1614, label %._crit_edge611

iter.check1614:                                   ; preds = %.loopexit1811
  %i.agz = sext i32 %indvars.iv903.lcssa to i64   ; 7 uses
  %invariant.gep1031.a = getelementptr [8 x i8], ptr %4, i64 %i.agy ; 11 uses
  %min.iters.check1598 = icmp samesign ugt i64 %i.aef, 2
  %or.cond1823 = select i1 %min.iters.check1598, i1 %ident.check1593.not, i1 false
  br i1 %or.cond1823, label %vector.memcheck1594, label %.lr.ph610.preheader

vector.memcheck1594:                              ; preds = %iter.check1614
  %i.aha = add i64 %i.adz, %i.aej
  %i.ahb = add i64 %i.aeh, %i.agz
  %i.ahc = shl i64 %i.ahb, 3
  %i.ahd = add i64 %i.ahc, %i.a
  %i.ahe = sub i64 %i.ahd, %i.aha
  %diff.check1597 = icmp ugt i64 %i.ahe, -128
  br i1 %diff.check1597, label %.lr.ph610.preheader, label %vector.main.loop.iter.check1599

vector.main.loop.iter.check1599:                  ; preds = %vector.memcheck1594
  %min.iters.check1600 = icmp samesign ult i64 %i.aef, 15
  br i1 %min.iters.check1600, label %vec.epilog.ph1618, label %vector.ph1601

vector.ph1601:                                    ; preds = %vector.main.loop.iter.check1599
  %i.ahf = and i64 %i.aeg, 12
  %n.vec1602 = and i64 %i.aeg, 8589934576         ; 5 uses
  %i.ahg = add nsw i64 %n.vec1602, %i.aek
  %i.ahh = add nsw i64 %n.vec1602, %i.agz         ; 2 uses
  %invariant.gep2044.a = getelementptr [8 x i8], ptr %3, i64 %i.agz
  %invariant.gep2046.a = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aek
  br label %vector.body1603

vector.body1603:                                  ; preds = %vector.body1603, %vector.ph1601
  %index1604 = phi i64 [ 0, %vector.ph1601 ], [ %index.next1609, %vector.body1603 ] ; 3 uses
  %gep2045.a = getelementptr [8 x i8], ptr %invariant.gep2044.a, i64 %index1604 ; 4 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %gep2045.a, i64 32
  %i.ahj = getelementptr inbounds nuw i8, ptr %gep2045.a, i64 64
  %i.ahk = getelementptr inbounds nuw i8, ptr %gep2045.a, i64 96
  %wide.load1605 = load <4 x double>, ptr %gep2045.a, align 8, !tbaa !9
  %wide.load1606 = load <4 x double>, ptr %i.ahi, align 8, !tbaa !9
  %wide.load1607 = load <4 x double>, ptr %i.ahj, align 8, !tbaa !9
  %wide.load1608 = load <4 x double>, ptr %i.ahk, align 8, !tbaa !9
  %gep2047.a = getelementptr [8 x i8], ptr %invariant.gep2046.a, i64 %index1604 ; 4 uses
  %i.ahl = getelementptr i8, ptr %gep2047.a, i64 32
  %i.ahm = getelementptr i8, ptr %gep2047.a, i64 64
  %i.ahn = getelementptr i8, ptr %gep2047.a, i64 96
  store <4 x double> %wide.load1605, ptr %gep2047.a, align 8, !tbaa !9
  store <4 x double> %wide.load1606, ptr %i.ahl, align 8, !tbaa !9
  store <4 x double> %wide.load1607, ptr %i.ahm, align 8, !tbaa !9
  store <4 x double> %wide.load1608, ptr %i.ahn, align 8, !tbaa !9
  %index.next1609 = add nuw i64 %index1604, 16    ; 2 uses
  %i.aho = icmp eq i64 %index.next1609, %n.vec1602
  br i1 %i.aho, label %middle.block1610, label %vector.body1603, !llvm.loop !74

middle.block1610:                                 ; preds = %vector.body1603
  %cmp.n1611 = icmp eq i64 %i.aeg, %n.vec1602
  br i1 %cmp.n1611, label %._crit_edge611, label %vec.epilog.iter.check1616

vec.epilog.iter.check1616:                        ; preds = %middle.block1610
  %min.epilog.iters.check1617 = icmp eq i64 %i.ahf, 0
  br i1 %min.epilog.iters.check1617, label %.lr.ph610.preheader, label %vec.epilog.ph1618, !prof !15

vec.epilog.ph1618:                                ; preds = %vector.main.loop.iter.check1599, %vec.epilog.iter.check1616
  %vec.epilog.resume.val1612 = phi i64 [ %n.vec1602, %vec.epilog.iter.check1616 ], [ 0, %vector.main.loop.iter.check1599 ]
  %n.vec1619 = and i64 %i.aeg, 8589934588         ; 4 uses
  %i.ahp = add nsw i64 %n.vec1619, %i.aek
  %i.ahq = add nsw i64 %n.vec1619, %i.agz         ; 2 uses
  %invariant.gep2048.a = getelementptr [8 x i8], ptr %3, i64 %i.agz
  %invariant.gep2050.a = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aek
  br label %vec.epilog.vector.body1620

vec.epilog.vector.body1620:                       ; preds = %vec.epilog.vector.body1620, %vec.epilog.ph1618
  %index1621 = phi i64 [ %vec.epilog.resume.val1612, %vec.epilog.ph1618 ], [ %index.next1623, %vec.epilog.vector.body1620 ] ; 3 uses
  %gep2049.a = getelementptr [8 x i8], ptr %invariant.gep2048.a, i64 %index1621
  %wide.load1622 = load <4 x double>, ptr %gep2049.a, align 8, !tbaa !9
  %gep2051.a = getelementptr [8 x i8], ptr %invariant.gep2050.a, i64 %index1621
  store <4 x double> %wide.load1622, ptr %gep2051.a, align 8, !tbaa !9
  %index.next1623 = add nuw i64 %index1621, 4     ; 2 uses
  %i.ahr = icmp eq i64 %index.next1623, %n.vec1619
  br i1 %i.ahr, label %vec.epilog.middle.block1624, label %vec.epilog.vector.body1620, !llvm.loop !75

vec.epilog.middle.block1624:                      ; preds = %vec.epilog.vector.body1620
  %cmp.n1625 = icmp eq i64 %i.aeg, %n.vec1619
  br i1 %cmp.n1625, label %._crit_edge611, label %.lr.ph610.preheader

.lr.ph610.preheader:                              ; preds = %vector.memcheck1594, %iter.check1614, %vec.epilog.iter.check1616, %vec.epilog.middle.block1624
  %indvars.iv909.ph = phi i64 [ %i.aek, %iter.check1614 ], [ %i.aek, %vector.memcheck1594 ], [ %i.ahg, %vec.epilog.iter.check1616 ], [ %i.ahp, %vec.epilog.middle.block1624 ] ; 3 uses
  %indvars.iv905.ph = phi i64 [ %i.agz, %iter.check1614 ], [ %i.agz, %vector.memcheck1594 ], [ %i.ahh, %vec.epilog.iter.check1616 ], [ %i.ahq, %vec.epilog.middle.block1624 ] ; 2 uses
  %i.ahs = trunc i64 %indvars.iv909.ph to i32     ; 2 uses
  %i.aht = sub i32 %i.v, %i.ahs
  %xtraiter1927 = and i32 %i.aht, 7               ; 2 uses
  %lcmp.mod1928.not = icmp eq i32 %xtraiter1927, 0
  br i1 %lcmp.mod1928.not, label %.lr.ph610.prol.loopexit, label %.lr.ph610.prol

.lr.ph610.prol:                                   ; preds = %.lr.ph610.preheader, %.lr.ph610.prol
  %indvars.iv909.prol = phi i64 [ %indvars.iv.next910.prol, %.lr.ph610.prol ], [ %indvars.iv909.ph, %.lr.ph610.preheader ] ; 2 uses
  %indvars.iv905.prol = phi i64 [ %indvars.iv.next906.prol, %.lr.ph610.prol ], [ %indvars.iv905.ph, %.lr.ph610.preheader ] ; 2 uses
  %prol.iter1929 = phi i32 [ %prol.iter1929.next, %.lr.ph610.prol ], [ 0, %.lr.ph610.preheader ]
  %i.ahu = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv905.prol
  %i.ahv = load double, ptr %i.ahu, align 8, !tbaa !9
  %i.ahw = mul nsw i64 %indvars.iv909.prol, %i.adu
  %gep1032.prol = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.ahw
  store double %i.ahv, ptr %gep1032.prol, align 8, !tbaa !9
  %indvars.iv.next906.prol = add nsw i64 %indvars.iv905.prol, 1 ; 3 uses
  %indvars.iv.next910.prol = add nsw i64 %indvars.iv909.prol, 1 ; 2 uses
  %prol.iter1929.next = add i32 %prol.iter1929, 1 ; 2 uses
  %prol.iter1929.cmp.not = icmp eq i32 %prol.iter1929.next, %xtraiter1927
  br i1 %prol.iter1929.cmp.not, label %.lr.ph610.prol.loopexit, label %.lr.ph610.prol, !llvm.loop !76

.lr.ph610.prol.loopexit:                          ; preds = %.lr.ph610.prol, %.lr.ph610.preheader
  %indvars.iv.next906.lcssa.unr = phi i64 [ poison, %.lr.ph610.preheader ], [ %indvars.iv.next906.prol, %.lr.ph610.prol ]
  %indvars.iv909.unr = phi i64 [ %indvars.iv909.ph, %.lr.ph610.preheader ], [ %indvars.iv.next910.prol, %.lr.ph610.prol ]
  %indvars.iv905.unr = phi i64 [ %indvars.iv905.ph, %.lr.ph610.preheader ], [ %indvars.iv.next906.prol, %.lr.ph610.prol ]
  %i.ahx = sub i32 %i.ahs, %i.v
  %i.ahy = icmp ugt i32 %i.ahx, -8
  br i1 %i.ahy, label %._crit_edge611, label %.lr.ph610

.lr.ph610:                                        ; preds = %.lr.ph610.prol.loopexit, %.lr.ph610
  %indvars.iv909 = phi i64 [ %indvars.iv.next910.7, %.lr.ph610 ], [ %indvars.iv909.unr, %.lr.ph610.prol.loopexit ] ; 9 uses
  %indvars.iv905 = phi i64 [ %indvars.iv.next906.7, %.lr.ph610 ], [ %indvars.iv905.unr, %.lr.ph610.prol.loopexit ] ; 9 uses
  %i.ahz = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv905
  %i.aia = load double, ptr %i.ahz, align 8, !tbaa !9
  %i.aib = mul nsw i64 %indvars.iv909, %i.adu
  %gep1032 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aib
  store double %i.aia, ptr %gep1032, align 8, !tbaa !9
  %indvars.iv.next910 = add nsw i64 %indvars.iv909, 1
  %i.aic = getelementptr [8 x i8], ptr %3, i64 %indvars.iv905
  %i.aid = getelementptr i8, ptr %i.aic, i64 8
  %i.aie = load double, ptr %i.aid, align 8, !tbaa !9
  %i.aif = mul nsw i64 %indvars.iv.next910, %i.adu
  %gep1032.1 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aif
  store double %i.aie, ptr %gep1032.1, align 8, !tbaa !9
  %indvars.iv.next910.1 = add nsw i64 %indvars.iv909, 2
  %i.aig = getelementptr [8 x i8], ptr %3, i64 %indvars.iv905
  %i.aih = getelementptr i8, ptr %i.aig, i64 16
  %i.aii = load double, ptr %i.aih, align 8, !tbaa !9
  %i.aij = mul nsw i64 %indvars.iv.next910.1, %i.adu
  %gep1032.2 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aij
  store double %i.aii, ptr %gep1032.2, align 8, !tbaa !9
  %indvars.iv.next910.2 = add nsw i64 %indvars.iv909, 3
  %i.aik = getelementptr [8 x i8], ptr %3, i64 %indvars.iv905
  %i.ail = getelementptr i8, ptr %i.aik, i64 24
  %i.aim = load double, ptr %i.ail, align 8, !tbaa !9
  %i.ain = mul nsw i64 %indvars.iv.next910.2, %i.adu
  %gep1032.3 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.ain
  store double %i.aim, ptr %gep1032.3, align 8, !tbaa !9
  %indvars.iv.next910.3 = add nsw i64 %indvars.iv909, 4
  %i.aio = getelementptr [8 x i8], ptr %3, i64 %indvars.iv905
  %i.aip = getelementptr i8, ptr %i.aio, i64 32
  %i.aiq = load double, ptr %i.aip, align 8, !tbaa !9
  %i.air = mul nsw i64 %indvars.iv.next910.3, %i.adu
  %gep1032.4 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.air
  store double %i.aiq, ptr %gep1032.4, align 8, !tbaa !9
  %indvars.iv.next910.4 = add nsw i64 %indvars.iv909, 5
  %i.ais = getelementptr [8 x i8], ptr %3, i64 %indvars.iv905
  %i.ait = getelementptr i8, ptr %i.ais, i64 40
  %i.aiu = load double, ptr %i.ait, align 8, !tbaa !9
  %i.aiv = mul nsw i64 %indvars.iv.next910.4, %i.adu
  %gep1032.5 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aiv
  store double %i.aiu, ptr %gep1032.5, align 8, !tbaa !9
  %indvars.iv.next910.5 = add nsw i64 %indvars.iv909, 6
  %i.aiw = getelementptr [8 x i8], ptr %3, i64 %indvars.iv905
  %i.aix = getelementptr i8, ptr %i.aiw, i64 48
  %i.aiy = load double, ptr %i.aix, align 8, !tbaa !9
  %i.aiz = mul nsw i64 %indvars.iv.next910.5, %i.adu
  %gep1032.6 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aiz
  store double %i.aiy, ptr %gep1032.6, align 8, !tbaa !9
  %indvars.iv.next910.6 = add nsw i64 %indvars.iv909, 7
  %i.aja = getelementptr [8 x i8], ptr %3, i64 %indvars.iv905
  %i.ajb = getelementptr i8, ptr %i.aja, i64 56
  %i.ajc = load double, ptr %i.ajb, align 8, !tbaa !9
  %i.ajd = mul nsw i64 %indvars.iv.next910.6, %i.adu
  %gep1032.7 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.ajd
  store double %i.ajc, ptr %gep1032.7, align 8, !tbaa !9
  %indvars.iv.next906.7 = add nsw i64 %indvars.iv905, 8 ; 2 uses
  %indvars.iv.next910.7 = add nsw i64 %indvars.iv909, 8 ; 2 uses
  %lftr.wideiv914.7 = trunc i64 %indvars.iv.next910.7 to i32
  %exitcond915.not.7 = icmp eq i32 %i.v, %lftr.wideiv914.7
  br i1 %exitcond915.not.7, label %._crit_edge611, label %.lr.ph610, !llvm.loop !77

._crit_edge611:                                   ; preds = %.lr.ph610.prol.loopexit, %.lr.ph610, %middle.block1610, %vec.epilog.middle.block1624, %.loopexit1811
  %.21.lcssa.in = phi i64 [ %indvars.iv.next895.lcssa, %.loopexit1811 ], [ %i.ahq, %vec.epilog.middle.block1624 ], [ %i.ahh, %middle.block1610 ], [ %indvars.iv.next906.lcssa.unr, %.lr.ph610.prol.loopexit ], [ %indvars.iv.next906.7, %.lr.ph610 ]
  %.21.lcssa = trunc i64 %.21.lcssa.in to i32
  %.reass.reass = add i32 %.21.lcssa, %invariant.op
  %.not430.not = icmp sgt i64 %indvars.iv.next917, %i.adw
  %indvars.iv.next908 = add i32 %indvars.iv907, -1
  %indvar.next1596 = add i64 %indvar1595, 1
  br i1 %.not430.not, label %iter.check1653, label %.loopexit, !llvm.loop !78

iter.check1468:                                   ; preds = %.thread461
  %i.aje = mul nsw i32 %i.v, %i.d
  %i.ajf = lshr exact i32 %i.i, 1
  %i.ajg = zext nneg i32 %i.ajf to i64            ; 10 uses
  %i.ajh = sext i32 %i.aje to i64                 ; 2 uses
  %i.aji = zext nneg i32 %i.i to i64              ; 2 uses
  %invariant.gep1021 = getelementptr [8 x i8], ptr %4, i64 %i.ajh ; 3 uses
  %i.ajj = add nuw nsw i64 %i.ajg, 1
  %umax1452 = tail call i64 @llvm.umax.i64(i64 %i.ajj, i64 %i.aji)
  %i.ajk = sub nsw i64 %umax1452, %i.ajg          ; 7 uses
  %min.iters.check1453 = icmp ult i64 %i.ajk, 4
  br i1 %min.iters.check1453, label %vec.epilog.scalar.ph1469.preheader, label %vector.memcheck1450

vector.memcheck1450:                              ; preds = %iter.check1468
  %i.ajl = add nsw i64 %i.ajg, %i.ajh
  %i.ajm = shl nsw i64 %i.ajl, 3
  %i.ajn = add i64 %i.ajm, %i.b
  %i.ajo = sub i64 %i.a, %i.ajn
  %diff.check1451 = icmp ugt i64 %i.ajo, -128
  br i1 %diff.check1451, label %vec.epilog.scalar.ph1469.preheader, label %vector.main.loop.iter.check1454

vector.main.loop.iter.check1454:                  ; preds = %vector.memcheck1450
  %min.iters.check1455 = icmp ult i64 %i.ajk, 16
  br i1 %min.iters.check1455, label %vec.epilog.ph1472, label %vector.ph1456

vector.ph1456:                                    ; preds = %vector.main.loop.iter.check1454
  %i.ajp = and i64 %i.ajk, 12
  %n.vec1457 = and i64 %i.ajk, -16                ; 6 uses
  %i.ajq = add nsw i64 %n.vec1457, %i.ajg
  %invariant.gep2028 = getelementptr [8 x i8], ptr %invariant.gep1021, i64 %i.ajg
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1456
  %index1459 = phi i64 [ 0, %vector.ph1456 ], [ %index.next1464, %vector.body1458 ] ; 3 uses
  %i.ajr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index1459 ; 4 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 32
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajr, i64 64
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajr, i64 96
  %wide.load1460 = load <4 x double>, ptr %i.ajr, align 8, !tbaa !9
  %wide.load1461 = load <4 x double>, ptr %i.ajs, align 8, !tbaa !9
  %wide.load1462 = load <4 x double>, ptr %i.ajt, align 8, !tbaa !9
  %wide.load1463 = load <4 x double>, ptr %i.aju, align 8, !tbaa !9
  %gep2029 = getelementptr [8 x i8], ptr %invariant.gep2028, i64 %index1459 ; 4 uses
  %i.ajv = getelementptr i8, ptr %gep2029, i64 32
  %i.ajw = getelementptr i8, ptr %gep2029, i64 64
  %i.ajx = getelementptr i8, ptr %gep2029, i64 96
  store <4 x double> %wide.load1460, ptr %gep2029, align 8, !tbaa !9
  store <4 x double> %wide.load1461, ptr %i.ajv, align 8, !tbaa !9
  store <4 x double> %wide.load1462, ptr %i.ajw, align 8, !tbaa !9
  store <4 x double> %wide.load1463, ptr %i.ajx, align 8, !tbaa !9
  %index.next1464 = add nuw i64 %index1459, 16    ; 2 uses
  %i.ajy = icmp eq i64 %index.next1464, %n.vec1457
  br i1 %i.ajy, label %middle.block1465, label %vector.body1458, !llvm.loop !79

middle.block1465:                                 ; preds = %vector.body1458
  %cmp.n1466 = icmp eq i64 %i.ajk, %n.vec1457
  br i1 %cmp.n1466, label %._crit_edge579, label %vec.epilog.iter.check1470

vec.epilog.iter.check1470:                        ; preds = %middle.block1465
  %min.epilog.iters.check1471 = icmp eq i64 %i.ajp, 0
  br i1 %min.epilog.iters.check1471, label %vec.epilog.scalar.ph1469.preheader, label %vec.epilog.ph1472, !prof !15

vec.epilog.ph1472:                                ; preds = %vector.main.loop.iter.check1454, %vec.epilog.iter.check1470
  %vec.epilog.resume.val1467 = phi i64 [ %n.vec1457, %vec.epilog.iter.check1470 ], [ 0, %vector.main.loop.iter.check1454 ]
  %n.vec1473 = and i64 %i.ajk, -4                 ; 5 uses
  %i.ajz = add nsw i64 %n.vec1473, %i.ajg
  %invariant.gep2030 = getelementptr [8 x i8], ptr %invariant.gep1021, i64 %i.ajg
  br label %vec.epilog.vector.body1474

vec.epilog.vector.body1474:                       ; preds = %vec.epilog.vector.body1474, %vec.epilog.ph1472
  %index1475 = phi i64 [ %vec.epilog.resume.val1467, %vec.epilog.ph1472 ], [ %index.next1477, %vec.epilog.vector.body1474 ] ; 3 uses
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index1475
  %wide.load1476 = load <4 x double>, ptr %i.aka, align 8, !tbaa !9
  %gep2031 = getelementptr [8 x i8], ptr %invariant.gep2030, i64 %index1475
  store <4 x double> %wide.load1476, ptr %gep2031, align 8, !tbaa !9
  %index.next1477 = add nuw i64 %index1475, 4     ; 2 uses
  %i.akb = icmp eq i64 %index.next1477, %n.vec1473
  br i1 %i.akb, label %vec.epilog.middle.block1478, label %vec.epilog.vector.body1474, !llvm.loop !80

vec.epilog.middle.block1478:                      ; preds = %vec.epilog.vector.body1474
  %cmp.n1479 = icmp eq i64 %i.ajk, %n.vec1473
  br i1 %cmp.n1479, label %._crit_edge579, label %vec.epilog.scalar.ph1469.preheader

vec.epilog.scalar.ph1469.preheader:               ; preds = %vector.memcheck1450, %iter.check1468, %vec.epilog.iter.check1470, %vec.epilog.middle.block1478
  %indvars.iv843.ph = phi i64 [ %i.ajg, %iter.check1468 ], [ %i.ajg, %vector.memcheck1450 ], [ %i.ajq, %vec.epilog.iter.check1470 ], [ %i.ajz, %vec.epilog.middle.block1478 ]
  %indvars.iv841.ph = phi i64 [ 0, %iter.check1468 ], [ 0, %vector.memcheck1450 ], [ %n.vec1457, %vec.epilog.iter.check1470 ], [ %n.vec1473, %vec.epilog.middle.block1478 ]
  br label %vec.epilog.scalar.ph1469

vec.epilog.scalar.ph1469:                         ; preds = %vec.epilog.scalar.ph1469.preheader, %vec.epilog.scalar.ph1469
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %vec.epilog.scalar.ph1469 ], [ %indvars.iv843.ph, %vec.epilog.scalar.ph1469.preheader ] ; 2 uses
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %vec.epilog.scalar.ph1469 ], [ %indvars.iv841.ph, %vec.epilog.scalar.ph1469.preheader ] ; 2 uses
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv841
  %i.akd = load double, ptr %i.akc, align 8, !tbaa !9
  %gep1022 = getelementptr [8 x i8], ptr %invariant.gep1021, i64 %indvars.iv843
  store double %i.akd, ptr %gep1022, align 8, !tbaa !9
  %indvars.iv.next842 = add nuw nsw i64 %indvars.iv841, 1 ; 2 uses
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 1 ; 2 uses
  %.not424.not = icmp samesign ult i64 %indvars.iv.next844, %i.aji
  br i1 %.not424.not, label %vec.epilog.scalar.ph1469, label %._crit_edge579, !llvm.loop !81

._crit_edge579:                                   ; preds = %vec.epilog.scalar.ph1469, %vec.epilog.middle.block1478, %middle.block1465
  %indvars.iv.next842.lcssa = phi i64 [ %n.vec1473, %vec.epilog.middle.block1478 ], [ %n.vec1457, %middle.block1465 ], [ %indvars.iv.next842, %vec.epilog.scalar.ph1469 ] ; 2 uses
  %.not425590 = icmp samesign ult i32 %i.i, 4
  br i1 %.not425590, label %.preheader471.preheader, label %.preheader473.lr.ph

.preheader473.lr.ph:                              ; preds = %._crit_edge579
  %i.ake = add nuw nsw i32 %i.v, 1                ; 2 uses
  %i.akf = sext i32 %i.d to i64                   ; 8 uses
  %i.akg = zext nneg i32 %i.ake to i64            ; 2 uses
  %i.akh = zext nneg i32 %i.i to i64
  %i.aki = add nsw i32 %i.v, -1
  %wide.trip.count878 = zext nneg i32 %i.aki to i64
  %i.akj = mul nsw i64 %i.akg, %i.akf
  %i.akk = shl i64 %i.akj, 3
  %i.akl = add i64 %i.akk, %i.b
  %i.akm = sub i64 %i.akl, %i.a
  %i.akn = shl nsw i64 %i.akf, 3
  %i.ako = add nsw i32 %i.i, -2
  %ident.check1515.not = icmp eq i32 %i.d, 1
  br label %iter.check1541

iter.check1541:                                   ; preds = %.preheader473.lr.ph, %._crit_edge588
  %indvars.iv873 = phi i64 [ 0, %.preheader473.lr.ph ], [ %indvars.iv.next874, %._crit_edge588 ] ; 7 uses
  %indvars.iv871 = phi i64 [ 1, %.preheader473.lr.ph ], [ %indvars.iv.next872, %._crit_edge588 ] ; 10 uses
  %indvars.iv862 = phi i32 [ %i.ake, %.preheader473.lr.ph ], [ %indvars.iv.next863, %._crit_edge588 ] ; 3 uses
  %.23592.in = phi i64 [ %indvars.iv.next842.lcssa, %.preheader473.lr.ph ], [ %.25.lcssa.in, %._crit_edge588 ] ; 2 uses
  %i.akp = trunc i64 %indvars.iv873 to i32
  %i.akq = add i32 %i.v, %i.akp
  %i.akr = sub i32 %i.ako, %i.akq                 ; 3 uses
  %i.aks = zext i32 %i.akr to i64
  %i.akt = add nuw nsw i64 %i.aks, 1              ; 5 uses
  %i.aku = mul i64 %i.akn, %indvars.iv873
  %i.akv = add i64 %i.akm, %i.aku
  %i.akw = sext i32 %indvars.iv862 to i64
  %i.akx = shl nsw i64 %i.akw, 3
  %.23592 = trunc i64 %.23592.in to i32           ; 4 uses
  %i.aky = sext i32 %indvars.iv862 to i64         ; 6 uses
  %sext983 = shl i64 %.23592.in, 32               ; 2 uses
  %i.akz = ashr exact i64 %sext983, 32            ; 6 uses
  %invariant.gep1023 = getelementptr [8 x i8], ptr %4, i64 %indvars.iv873 ; 7 uses
  %min.iters.check1518 = icmp samesign ugt i64 %indvars.iv871, 3
  %or.cond1824 = select i1 %min.iters.check1518, i1 %ident.check1515.not, i1 false
  br i1 %or.cond1824, label %vector.memcheck1516, label %vec.epilog.scalar.ph1542.preheader

vector.memcheck1516:                              ; preds = %iter.check1541
  %i.ala = shl nuw nsw i64 %indvars.iv873, 3
  %i.alb = ashr exact i64 %sext983, 29
  %i.alc = add i64 %i.ala, %i.b
  %i.ald = add i64 %i.alb, %i.a
  %i.ale = sub i64 %i.ald, %i.alc
  %diff.check1517 = icmp ugt i64 %i.ale, -128
  br i1 %diff.check1517, label %vec.epilog.scalar.ph1542.preheader, label %vector.main.loop.iter.check1519

vector.main.loop.iter.check1519:                  ; preds = %vector.memcheck1516
  %min.iters.check1520 = icmp samesign ult i64 %indvars.iv871, 16
  br i1 %min.iters.check1520, label %vec.epilog.ph1545, label %vector.ph1521

vector.ph1521:                                    ; preds = %vector.main.loop.iter.check1519
  %i.alf = and i64 %indvars.iv871, 12
  %n.vec1522 = and i64 %indvars.iv871, 9223372036854775792 ; 5 uses
  %i.alg = add i64 %i.akz, %n.vec1522             ; 2 uses
  %i.alh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.23592, i64 0
  %i.ali = getelementptr [8 x i8], ptr %3, i64 %i.akz
  br label %vector.body1523

vector.body1523:                                  ; preds = %vector.body1523, %vector.ph1521
  %index1524 = phi i64 [ 0, %vector.ph1521 ], [ %index.next1533, %vector.body1523 ] ; 3 uses
  %vec.phi1525 = phi <4 x i32> [ %i.alh, %vector.ph1521 ], [ %i.alj, %vector.body1523 ]
  %vec.phi1526 = phi <4 x i32> [ zeroinitializer, %vector.ph1521 ], [ %i.alk, %vector.body1523 ]
  %vec.phi1527 = phi <4 x i32> [ zeroinitializer, %vector.ph1521 ], [ %i.all, %vector.body1523 ]
  %vec.phi1528 = phi <4 x i32> [ zeroinitializer, %vector.ph1521 ], [ %i.alm, %vector.body1523 ]
  %i.alj = add <4 x i32> %vec.phi1525, splat (i32 1) ; 2 uses
  %i.alk = add <4 x i32> %vec.phi1526, splat (i32 1) ; 2 uses
  %i.all = add <4 x i32> %vec.phi1527, splat (i32 1) ; 2 uses
  %i.alm = add <4 x i32> %vec.phi1528, splat (i32 1) ; 2 uses
  %i.aln = getelementptr [8 x i8], ptr %i.ali, i64 %index1524 ; 4 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 32
  %i.alp = getelementptr inbounds nuw i8, ptr %i.aln, i64 64
  %i.alq = getelementptr inbounds nuw i8, ptr %i.aln, i64 96
  %wide.load1529 = load <4 x double>, ptr %i.aln, align 8, !tbaa !9
  %wide.load1530 = load <4 x double>, ptr %i.alo, align 8, !tbaa !9
  %wide.load1531 = load <4 x double>, ptr %i.alp, align 8, !tbaa !9
  %wide.load1532 = load <4 x double>, ptr %i.alq, align 8, !tbaa !9
  %i.alr = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %index1524 ; 4 uses
  %i.als = getelementptr i8, ptr %i.alr, i64 32
  %i.alt = getelementptr i8, ptr %i.alr, i64 64
  %i.alu = getelementptr i8, ptr %i.alr, i64 96
  store <4 x double> %wide.load1529, ptr %i.alr, align 8, !tbaa !9
  store <4 x double> %wide.load1530, ptr %i.als, align 8, !tbaa !9
  store <4 x double> %wide.load1531, ptr %i.alt, align 8, !tbaa !9
  store <4 x double> %wide.load1532, ptr %i.alu, align 8, !tbaa !9
  %index.next1533 = add nuw i64 %index1524, 16    ; 2 uses
  %i.alv = icmp eq i64 %index.next1533, %n.vec1522
  br i1 %i.alv, label %middle.block1534, label %vector.body1523, !llvm.loop !82

middle.block1534:                                 ; preds = %vector.body1523
  %bin.rdx1535 = add <4 x i32> %i.alk, %i.alj
  %bin.rdx1536 = add <4 x i32> %i.all, %bin.rdx1535
  %bin.rdx1537 = add <4 x i32> %i.alm, %bin.rdx1536
  %i.alw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1537) ; 3 uses
  %cmp.n1538 = icmp eq i64 %indvars.iv871, %n.vec1522
  br i1 %cmp.n1538, label %.loopexit1812, label %vec.epilog.iter.check1543

vec.epilog.iter.check1543:                        ; preds = %middle.block1534
  %min.epilog.iters.check1544 = icmp eq i64 %i.alf, 0
  br i1 %min.epilog.iters.check1544, label %vec.epilog.scalar.ph1542.preheader, label %vec.epilog.ph1545, !prof !15

vec.epilog.ph1545:                                ; preds = %vector.main.loop.iter.check1519, %vec.epilog.iter.check1543
  %vec.epilog.resume.val1539 = phi i64 [ %n.vec1522, %vec.epilog.iter.check1543 ], [ 0, %vector.main.loop.iter.check1519 ]
  %bc.merge.rdx1540 = phi i32 [ %i.alw, %vec.epilog.iter.check1543 ], [ %.23592, %vector.main.loop.iter.check1519 ]
  %n.vec1546 = and i64 %indvars.iv871, 9223372036854775804 ; 4 uses
  %i.alx = add i64 %i.akz, %n.vec1546             ; 2 uses
  %i.aly = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1540, i64 0
  %i.alz = getelementptr [8 x i8], ptr %3, i64 %i.akz
  br label %vec.epilog.vector.body1547

vec.epilog.vector.body1547:                       ; preds = %vec.epilog.vector.body1547, %vec.epilog.ph1545
  %index1548 = phi i64 [ %vec.epilog.resume.val1539, %vec.epilog.ph1545 ], [ %index.next1551, %vec.epilog.vector.body1547 ] ; 3 uses
  %vec.phi1549 = phi <4 x i32> [ %i.aly, %vec.epilog.ph1545 ], [ %i.ama, %vec.epilog.vector.body1547 ]
  %i.ama = add <4 x i32> %vec.phi1549, splat (i32 1) ; 2 uses
  %i.amb = getelementptr [8 x i8], ptr %i.alz, i64 %index1548
  %wide.load1550 = load <4 x double>, ptr %i.amb, align 8, !tbaa !9
  %i.amc = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %index1548
  store <4 x double> %wide.load1550, ptr %i.amc, align 8, !tbaa !9
  %index.next1551 = add nuw i64 %index1548, 4     ; 2 uses
  %i.amd = icmp eq i64 %index.next1551, %n.vec1546
  br i1 %i.amd, label %vec.epilog.middle.block1552, label %vec.epilog.vector.body1547, !llvm.loop !83

vec.epilog.middle.block1552:                      ; preds = %vec.epilog.vector.body1547
  %i.ame = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ama) ; 2 uses
  %cmp.n1553 = icmp eq i64 %indvars.iv871, %n.vec1546
  br i1 %cmp.n1553, label %.loopexit1812, label %vec.epilog.scalar.ph1542.preheader

vec.epilog.scalar.ph1542.preheader:               ; preds = %vector.memcheck1516, %iter.check1541, %vec.epilog.iter.check1543, %vec.epilog.middle.block1552
  %indvars.iv858.in.ph = phi i32 [ %.23592, %iter.check1541 ], [ %.23592, %vector.memcheck1516 ], [ %i.alw, %vec.epilog.iter.check1543 ], [ %i.ame, %vec.epilog.middle.block1552 ] ; 2 uses
  %indvars.iv848.ph = phi i64 [ 0, %iter.check1541 ], [ 0, %vector.memcheck1516 ], [ %n.vec1522, %vec.epilog.iter.check1543 ], [ %n.vec1546, %vec.epilog.middle.block1552 ] ; 3 uses
  %indvars.iv846.ph = phi i64 [ %i.akz, %iter.check1541 ], [ %i.akz, %vector.memcheck1516 ], [ %i.alg, %vec.epilog.iter.check1543 ], [ %i.alx, %vec.epilog.middle.block1552 ] ; 2 uses
  %i.amf = sub nsw i64 %indvars.iv873, %indvars.iv848.ph
  %xtraiter1915 = and i64 %indvars.iv871, 3       ; 2 uses
  %lcmp.mod1916.not = icmp eq i64 %xtraiter1915, 0
  br i1 %lcmp.mod1916.not, label %vec.epilog.scalar.ph1542.prol.loopexit, label %vec.epilog.scalar.ph1542.prol

vec.epilog.scalar.ph1542.prol:                    ; preds = %vec.epilog.scalar.ph1542.preheader, %vec.epilog.scalar.ph1542.prol
  %indvars.iv858.in.prol = phi i32 [ %indvars.iv858.prol, %vec.epilog.scalar.ph1542.prol ], [ %indvars.iv858.in.ph, %vec.epilog.scalar.ph1542.preheader ]
  %indvars.iv848.prol = phi i64 [ %indvars.iv.next849.prol, %vec.epilog.scalar.ph1542.prol ], [ %indvars.iv848.ph, %vec.epilog.scalar.ph1542.preheader ] ; 2 uses
  %indvars.iv846.prol = phi i64 [ %indvars.iv.next847.prol, %vec.epilog.scalar.ph1542.prol ], [ %indvars.iv846.ph, %vec.epilog.scalar.ph1542.preheader ] ; 2 uses
  %prol.iter1917 = phi i64 [ %prol.iter1917.next, %vec.epilog.scalar.ph1542.prol ], [ 0, %vec.epilog.scalar.ph1542.preheader ]
  %indvars.iv858.prol = add i32 %indvars.iv858.in.prol, 1 ; 3 uses
  %i.amg = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv846.prol
  %i.amh = load double, ptr %i.amg, align 8, !tbaa !9
  %i.ami = mul nsw i64 %indvars.iv848.prol, %i.akf
  %gep1024.prol = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.ami
  store double %i.amh, ptr %gep1024.prol, align 8, !tbaa !9
  %indvars.iv.next847.prol = add nsw i64 %indvars.iv846.prol, 1 ; 3 uses
  %indvars.iv.next849.prol = add nuw nsw i64 %indvars.iv848.prol, 1 ; 2 uses
  %prol.iter1917.next = add i64 %prol.iter1917, 1 ; 2 uses
  %prol.iter1917.cmp.not = icmp eq i64 %prol.iter1917.next, %xtraiter1915
  br i1 %prol.iter1917.cmp.not, label %vec.epilog.scalar.ph1542.prol.loopexit, label %vec.epilog.scalar.ph1542.prol, !llvm.loop !84

vec.epilog.scalar.ph1542.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1542.prol, %vec.epilog.scalar.ph1542.preheader
  %indvars.iv858.lcssa1851.unr = phi i32 [ poison, %vec.epilog.scalar.ph1542.preheader ], [ %indvars.iv858.prol, %vec.epilog.scalar.ph1542.prol ]
  %indvars.iv.next847.lcssa1850.unr = phi i64 [ poison, %vec.epilog.scalar.ph1542.preheader ], [ %indvars.iv.next847.prol, %vec.epilog.scalar.ph1542.prol ]
  %indvars.iv858.in.unr = phi i32 [ %indvars.iv858.in.ph, %vec.epilog.scalar.ph1542.preheader ], [ %indvars.iv858.prol, %vec.epilog.scalar.ph1542.prol ]
  %indvars.iv848.unr = phi i64 [ %indvars.iv848.ph, %vec.epilog.scalar.ph1542.preheader ], [ %indvars.iv.next849.prol, %vec.epilog.scalar.ph1542.prol ]
  %indvars.iv846.unr = phi i64 [ %indvars.iv846.ph, %vec.epilog.scalar.ph1542.preheader ], [ %indvars.iv.next847.prol, %vec.epilog.scalar.ph1542.prol ]
  %i.amj = icmp ult i64 %i.amf, 3
  br i1 %i.amj, label %.loopexit1812, label %vec.epilog.scalar.ph1542

vec.epilog.scalar.ph1542:                         ; preds = %vec.epilog.scalar.ph1542.prol.loopexit, %vec.epilog.scalar.ph1542
  %indvars.iv858.in = phi i32 [ %indvars.iv858.3, %vec.epilog.scalar.ph1542 ], [ %indvars.iv858.in.unr, %vec.epilog.scalar.ph1542.prol.loopexit ]
  %indvars.iv848 = phi i64 [ %indvars.iv.next849.3, %vec.epilog.scalar.ph1542 ], [ %indvars.iv848.unr, %vec.epilog.scalar.ph1542.prol.loopexit ] ; 5 uses
  %indvars.iv846 = phi i64 [ %indvars.iv.next847.3, %vec.epilog.scalar.ph1542 ], [ %indvars.iv846.unr, %vec.epilog.scalar.ph1542.prol.loopexit ] ; 5 uses
  %i.amk = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv846
  %i.aml = load double, ptr %i.amk, align 8, !tbaa !9
  %i.amm = mul nsw i64 %indvars.iv848, %i.akf
  %gep1024 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amm
  store double %i.aml, ptr %gep1024, align 8, !tbaa !9
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1
  %i.amn = getelementptr [8 x i8], ptr %3, i64 %indvars.iv846
  %i.amo = getelementptr i8, ptr %i.amn, i64 8
  %i.amp = load double, ptr %i.amo, align 8, !tbaa !9
  %i.amq = mul nsw i64 %indvars.iv.next849, %i.akf
  %gep1024.1 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amq
  store double %i.amp, ptr %gep1024.1, align 8, !tbaa !9
  %indvars.iv.next849.1 = add nuw nsw i64 %indvars.iv848, 2
  %i.amr = getelementptr [8 x i8], ptr %3, i64 %indvars.iv846
  %i.ams = getelementptr i8, ptr %i.amr, i64 16
  %i.amt = load double, ptr %i.ams, align 8, !tbaa !9
  %i.amu = mul nsw i64 %indvars.iv.next849.1, %i.akf
  %gep1024.2 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amu
  store double %i.amt, ptr %gep1024.2, align 8, !tbaa !9
  %indvars.iv.next849.2 = add nuw nsw i64 %indvars.iv848, 3
  %indvars.iv858.3 = add i32 %indvars.iv858.in, 4 ; 2 uses
  %i.amv = getelementptr [8 x i8], ptr %3, i64 %indvars.iv846
  %i.amw = getelementptr i8, ptr %i.amv, i64 24
  %i.amx = load double, ptr %i.amw, align 8, !tbaa !9
  %i.amy = mul nsw i64 %indvars.iv.next849.2, %i.akf
  %gep1024.3 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amy
  store double %i.amx, ptr %gep1024.3, align 8, !tbaa !9
  %indvars.iv.next847.3 = add nsw i64 %indvars.iv846, 4 ; 2 uses
  %indvars.iv.next849.3 = add nuw nsw i64 %indvars.iv848, 4 ; 2 uses
  %exitcond856.not.3 = icmp eq i64 %indvars.iv.next849.3, %indvars.iv871
  br i1 %exitcond856.not.3, label %.loopexit1812, label %vec.epilog.scalar.ph1542, !llvm.loop !85

.loopexit1812:                                    ; preds = %vec.epilog.scalar.ph1542.prol.loopexit, %vec.epilog.scalar.ph1542, %vec.epilog.middle.block1552, %middle.block1534
  %indvars.iv858.lcssa = phi i32 [ %i.ame, %vec.epilog.middle.block1552 ], [ %i.alw, %middle.block1534 ], [ %indvars.iv858.lcssa1851.unr, %vec.epilog.scalar.ph1542.prol.loopexit ], [ %indvars.iv858.3, %vec.epilog.scalar.ph1542 ]
  %indvars.iv.next847.lcssa = phi i64 [ %i.alx, %vec.epilog.middle.block1552 ], [ %i.alg, %middle.block1534 ], [ %indvars.iv.next847.lcssa1850.unr, %vec.epilog.scalar.ph1542.prol.loopexit ], [ %indvars.iv.next847.3, %vec.epilog.scalar.ph1542 ]
  %i.amz = add nuw nsw i64 %indvars.iv873, %i.akg ; 2 uses
  %.not429.not583 = icmp samesign ult i64 %i.amz, %i.akh
  br i1 %.not429.not583, label %iter.check1500, label %._crit_edge588

iter.check1500:                                   ; preds = %.loopexit1812
  %i.ana = mul nsw i64 %i.amz, %i.akf
  %i.anb = sext i32 %indvars.iv858.lcssa to i64   ; 7 uses
  %invariant.gep1025 = getelementptr [8 x i8], ptr %4, i64 %i.ana ; 11 uses
  %min.iters.check1484 = icmp ult i32 %i.akr, 3
  br i1 %min.iters.check1484, label %vec.epilog.scalar.ph1501.preheader, label %vector.memcheck1482

vector.memcheck1482:                              ; preds = %iter.check1500
  %i.anc = add i64 %i.akv, %i.akx
  %i.and = shl nsw i64 %i.anb, 3
  %i.ane = sub i64 %i.and, %i.anc
  %diff.check1483 = icmp ugt i64 %i.ane, -128
  br i1 %diff.check1483, label %vec.epilog.scalar.ph1501.preheader, label %vector.main.loop.iter.check1485

vector.main.loop.iter.check1485:                  ; preds = %vector.memcheck1482
  %min.iters.check1486 = icmp ult i32 %i.akr, 15
  br i1 %min.iters.check1486, label %vec.epilog.ph1504, label %vector.ph1487

vector.ph1487:                                    ; preds = %vector.main.loop.iter.check1485
  %i.anf = and i64 %i.akt, 12
  %n.vec1488 = and i64 %i.akt, 8589934576         ; 5 uses
  %i.ang = add nsw i64 %n.vec1488, %i.aky
  %i.anh = add nsw i64 %n.vec1488, %i.anb         ; 2 uses
  %invariant.gep2032 = getelementptr [8 x i8], ptr %3, i64 %i.anb
  %invariant.gep2034 = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %i.aky
  br label %vector.body1489

vector.body1489:                                  ; preds = %vector.body1489, %vector.ph1487
  %index1490 = phi i64 [ 0, %vector.ph1487 ], [ %index.next1495, %vector.body1489 ] ; 3 uses
  %gep2033 = getelementptr [8 x i8], ptr %invariant.gep2032, i64 %index1490 ; 4 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %gep2033, i64 32
  %i.anj = getelementptr inbounds nuw i8, ptr %gep2033, i64 64
  %i.ank = getelementptr inbounds nuw i8, ptr %gep2033, i64 96
  %wide.load1491 = load <4 x double>, ptr %gep2033, align 8, !tbaa !9
  %wide.load1492 = load <4 x double>, ptr %i.ani, align 8, !tbaa !9
  %wide.load1493 = load <4 x double>, ptr %i.anj, align 8, !tbaa !9
  %wide.load1494 = load <4 x double>, ptr %i.ank, align 8, !tbaa !9
  %gep2035 = getelementptr [8 x i8], ptr %invariant.gep2034, i64 %index1490 ; 4 uses
  %i.anl = getelementptr i8, ptr %gep2035, i64 32
  %i.anm = getelementptr i8, ptr %gep2035, i64 64
  %i.ann = getelementptr i8, ptr %gep2035, i64 96
  store <4 x double> %wide.load1491, ptr %gep2035, align 8, !tbaa !9
  store <4 x double> %wide.load1492, ptr %i.anl, align 8, !tbaa !9
  store <4 x double> %wide.load1493, ptr %i.anm, align 8, !tbaa !9
  store <4 x double> %wide.load1494, ptr %i.ann, align 8, !tbaa !9
  %index.next1495 = add nuw i64 %index1490, 16    ; 2 uses
  %i.ano = icmp eq i64 %index.next1495, %n.vec1488
  br i1 %i.ano, label %middle.block1496, label %vector.body1489, !llvm.loop !86

middle.block1496:                                 ; preds = %vector.body1489
  %cmp.n1497 = icmp eq i64 %i.akt, %n.vec1488
  br i1 %cmp.n1497, label %._crit_edge588, label %vec.epilog.iter.check1502

vec.epilog.iter.check1502:                        ; preds = %middle.block1496
  %min.epilog.iters.check1503 = icmp eq i64 %i.anf, 0
  br i1 %min.epilog.iters.check1503, label %vec.epilog.scalar.ph1501.preheader, label %vec.epilog.ph1504, !prof !15

vec.epilog.ph1504:                                ; preds = %vector.main.loop.iter.check1485, %vec.epilog.iter.check1502
  %vec.epilog.resume.val1498 = phi i64 [ %n.vec1488, %vec.epilog.iter.check1502 ], [ 0, %vector.main.loop.iter.check1485 ]
  %n.vec1505 = and i64 %i.akt, 8589934588         ; 4 uses
  %i.anp = add nsw i64 %n.vec1505, %i.aky
  %i.anq = add nsw i64 %n.vec1505, %i.anb         ; 2 uses
  %invariant.gep2036 = getelementptr [8 x i8], ptr %3, i64 %i.anb
  %invariant.gep2038 = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %i.aky
  br label %vec.epilog.vector.body1506

vec.epilog.vector.body1506:                       ; preds = %vec.epilog.vector.body1506, %vec.epilog.ph1504
  %index1507 = phi i64 [ %vec.epilog.resume.val1498, %vec.epilog.ph1504 ], [ %index.next1509, %vec.epilog.vector.body1506 ] ; 3 uses
  %gep2037 = getelementptr [8 x i8], ptr %invariant.gep2036, i64 %index1507
  %wide.load1508 = load <4 x double>, ptr %gep2037, align 8, !tbaa !9
  %gep2039 = getelementptr [8 x i8], ptr %invariant.gep2038, i64 %index1507
  store <4 x double> %wide.load1508, ptr %gep2039, align 8, !tbaa !9
  %index.next1509 = add nuw i64 %index1507, 4     ; 2 uses
  %i.anr = icmp eq i64 %index.next1509, %n.vec1505
  br i1 %i.anr, label %vec.epilog.middle.block1510, label %vec.epilog.vector.body1506, !llvm.loop !87

vec.epilog.middle.block1510:                      ; preds = %vec.epilog.vector.body1506
  %cmp.n1511 = icmp eq i64 %i.akt, %n.vec1505
  br i1 %cmp.n1511, label %._crit_edge588, label %vec.epilog.scalar.ph1501.preheader

vec.epilog.scalar.ph1501.preheader:               ; preds = %vector.memcheck1482, %iter.check1500, %vec.epilog.iter.check1502, %vec.epilog.middle.block1510
  %indvars.iv864.ph = phi i64 [ %i.aky, %iter.check1500 ], [ %i.aky, %vector.memcheck1482 ], [ %i.ang, %vec.epilog.iter.check1502 ], [ %i.anp, %vec.epilog.middle.block1510 ] ; 3 uses
  %indvars.iv860.ph = phi i64 [ %i.anb, %iter.check1500 ], [ %i.anb, %vector.memcheck1482 ], [ %i.anh, %vec.epilog.iter.check1502 ], [ %i.anq, %vec.epilog.middle.block1510 ] ; 2 uses
  %i.ans = trunc i64 %indvars.iv864.ph to i32     ; 2 uses
  %i.ant = sub i32 %i.i, %i.ans
  %xtraiter1918 = and i32 %i.ant, 7               ; 2 uses
  %lcmp.mod1919.not = icmp eq i32 %xtraiter1918, 0
  br i1 %lcmp.mod1919.not, label %vec.epilog.scalar.ph1501.prol.loopexit, label %vec.epilog.scalar.ph1501.prol

vec.epilog.scalar.ph1501.prol:                    ; preds = %vec.epilog.scalar.ph1501.preheader, %vec.epilog.scalar.ph1501.prol
  %indvars.iv864.prol = phi i64 [ %indvars.iv.next865.prol, %vec.epilog.scalar.ph1501.prol ], [ %indvars.iv864.ph, %vec.epilog.scalar.ph1501.preheader ] ; 2 uses
  %indvars.iv860.prol = phi i64 [ %indvars.iv.next861.prol, %vec.epilog.scalar.ph1501.prol ], [ %indvars.iv860.ph, %vec.epilog.scalar.ph1501.preheader ] ; 2 uses
  %prol.iter1920 = phi i32 [ %prol.iter1920.next, %vec.epilog.scalar.ph1501.prol ], [ 0, %vec.epilog.scalar.ph1501.preheader ]
  %i.anu = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv860.prol
  %i.anv = load double, ptr %i.anu, align 8, !tbaa !9
  %gep1026.prol = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864.prol
  store double %i.anv, ptr %gep1026.prol, align 8, !tbaa !9
  %indvars.iv.next861.prol = add nsw i64 %indvars.iv860.prol, 1 ; 3 uses
  %indvars.iv.next865.prol = add nsw i64 %indvars.iv864.prol, 1 ; 2 uses
  %prol.iter1920.next = add i32 %prol.iter1920, 1 ; 2 uses
  %prol.iter1920.cmp.not = icmp eq i32 %prol.iter1920.next, %xtraiter1918
  br i1 %prol.iter1920.cmp.not, label %vec.epilog.scalar.ph1501.prol.loopexit, label %vec.epilog.scalar.ph1501.prol, !llvm.loop !88

vec.epilog.scalar.ph1501.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1501.prol, %vec.epilog.scalar.ph1501.preheader
  %indvars.iv.next861.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph1501.preheader ], [ %indvars.iv.next861.prol, %vec.epilog.scalar.ph1501.prol ]
  %indvars.iv864.unr = phi i64 [ %indvars.iv864.ph, %vec.epilog.scalar.ph1501.preheader ], [ %indvars.iv.next865.prol, %vec.epilog.scalar.ph1501.prol ]
  %indvars.iv860.unr = phi i64 [ %indvars.iv860.ph, %vec.epilog.scalar.ph1501.preheader ], [ %indvars.iv.next861.prol, %vec.epilog.scalar.ph1501.prol ]
  %i.anw = sub i32 %i.ans, %i.i
  %i.anx = icmp ugt i32 %i.anw, -8
  br i1 %i.anx, label %._crit_edge588, label %vec.epilog.scalar.ph1501

vec.epilog.scalar.ph1501:                         ; preds = %vec.epilog.scalar.ph1501.prol.loopexit, %vec.epilog.scalar.ph1501
  %indvars.iv864 = phi i64 [ %indvars.iv.next865.7, %vec.epilog.scalar.ph1501 ], [ %indvars.iv864.unr, %vec.epilog.scalar.ph1501.prol.loopexit ] ; 9 uses
  %indvars.iv860 = phi i64 [ %indvars.iv.next861.7, %vec.epilog.scalar.ph1501 ], [ %indvars.iv860.unr, %vec.epilog.scalar.ph1501.prol.loopexit ] ; 9 uses
  %i.any = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv860
  %i.anz = load double, ptr %i.any, align 8, !tbaa !9
  %gep1026 = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  store double %i.anz, ptr %gep1026, align 8, !tbaa !9
  %i.aoa = getelementptr [8 x i8], ptr %3, i64 %indvars.iv860
  %i.aob = getelementptr i8, ptr %i.aoa, i64 8
  %i.aoc = load double, ptr %i.aob, align 8, !tbaa !9
  %i.aod = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.1 = getelementptr i8, ptr %i.aod, i64 8
  store double %i.aoc, ptr %gep1026.1, align 8, !tbaa !9
  %i.aoe = getelementptr [8 x i8], ptr %3, i64 %indvars.iv860
  %i.aof = getelementptr i8, ptr %i.aoe, i64 16
  %i.aog = load double, ptr %i.aof, align 8, !tbaa !9
  %i.aoh = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.2 = getelementptr i8, ptr %i.aoh, i64 16
  store double %i.aog, ptr %gep1026.2, align 8, !tbaa !9
  %i.aoi = getelementptr [8 x i8], ptr %3, i64 %indvars.iv860
  %i.aoj = getelementptr i8, ptr %i.aoi, i64 24
  %i.aok = load double, ptr %i.aoj, align 8, !tbaa !9
  %i.aol = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.3 = getelementptr i8, ptr %i.aol, i64 24
  store double %i.aok, ptr %gep1026.3, align 8, !tbaa !9
  %i.aom = getelementptr [8 x i8], ptr %3, i64 %indvars.iv860
  %i.aon = getelementptr i8, ptr %i.aom, i64 32
  %i.aoo = load double, ptr %i.aon, align 8, !tbaa !9
  %i.aop = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.4 = getelementptr i8, ptr %i.aop, i64 32
  store double %i.aoo, ptr %gep1026.4, align 8, !tbaa !9
  %i.aoq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv860
  %i.aor = getelementptr i8, ptr %i.aoq, i64 40
  %i.aos = load double, ptr %i.aor, align 8, !tbaa !9
  %i.aot = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.5 = getelementptr i8, ptr %i.aot, i64 40
  store double %i.aos, ptr %gep1026.5, align 8, !tbaa !9
  %i.aou = getelementptr [8 x i8], ptr %3, i64 %indvars.iv860
  %i.aov = getelementptr i8, ptr %i.aou, i64 48
  %i.aow = load double, ptr %i.aov, align 8, !tbaa !9
  %i.aox = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.6 = getelementptr i8, ptr %i.aox, i64 48
  store double %i.aow, ptr %gep1026.6, align 8, !tbaa !9
  %i.aoy = getelementptr [8 x i8], ptr %3, i64 %indvars.iv860
  %i.aoz = getelementptr i8, ptr %i.aoy, i64 56
  %i.apa = load double, ptr %i.aoz, align 8, !tbaa !9
  %i.apb = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.7 = getelementptr i8, ptr %i.apb, i64 56
  store double %i.apa, ptr %gep1026.7, align 8, !tbaa !9
  %indvars.iv.next861.7 = add nsw i64 %indvars.iv860, 8 ; 2 uses
  %indvars.iv.next865.7 = add nsw i64 %indvars.iv864, 8 ; 2 uses
  %lftr.wideiv869.7 = trunc i64 %indvars.iv.next865.7 to i32
  %exitcond870.not.7 = icmp eq i32 %i.i, %lftr.wideiv869.7
  br i1 %exitcond870.not.7, label %._crit_edge588, label %vec.epilog.scalar.ph1501, !llvm.loop !89

._crit_edge588:                                   ; preds = %vec.epilog.scalar.ph1501.prol.loopexit, %vec.epilog.scalar.ph1501, %middle.block1496, %vec.epilog.middle.block1510, %.loopexit1812
  %.25.lcssa.in = phi i64 [ %indvars.iv.next847.lcssa, %.loopexit1812 ], [ %i.anq, %vec.epilog.middle.block1510 ], [ %i.anh, %middle.block1496 ], [ %indvars.iv.next861.lcssa.unr, %vec.epilog.scalar.ph1501.prol.loopexit ], [ %indvars.iv.next861.7, %vec.epilog.scalar.ph1501 ] ; 2 uses
  %indvars.iv.next874 = add nuw nsw i64 %indvars.iv873, 1 ; 2 uses
  %indvars.iv.next872 = add nuw nsw i64 %indvars.iv871, 1
  %indvars.iv.next863 = add nuw i32 %indvars.iv862, 1
  %exitcond879.not = icmp eq i64 %indvars.iv.next874, %wide.trip.count878
  br i1 %exitcond879.not, label %.preheader471.preheader, label %iter.check1541, !llvm.loop !90

.preheader471.preheader:                          ; preds = %._crit_edge588, %._crit_edge579
  %.23.lcssa = phi i64 [ %indvars.iv.next842.lcssa, %._crit_edge579 ], [ %.25.lcssa.in, %._crit_edge588 ]
  %i.apc = sext i32 %i.d to i64                   ; 9 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.v, i32 1)
  %i.apd = lshr exact i32 %i.i, 1                 ; 2 uses
  %i.ape = zext nneg i32 %i.apd to i64
  %i.apf = add nsw i64 %i.ape, -1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.v)
  %i.apg = add nuw i32 %smax, %i.apd
  %i.aph = sub i32 %i.apg, %i.v
  %wide.trip.count891 = zext i32 %i.aph to i64
  %sext982 = shl i64 %.23.lcssa, 32
  %i.api = ashr exact i64 %sext982, 32
  %wide.trip.count887 = zext nneg i32 %umax to i64 ; 8 uses
  %i.apj = shl nuw nsw i64 %i.ajg, 3
  %i.apk = add i64 %i.apj, %i.b
  %i.apl = add i64 %i.apk, -8
  %min.iters.check1563 = icmp ugt i32 %i.i, 7
  %ident.check1558.not = icmp eq i32 %i.d, 1
  %or.cond1825 = select i1 %min.iters.check1563, i1 %ident.check1558.not, i1 false
  %min.iters.check1565 = icmp ult i32 %i.i, 32
  %i.apm = and i64 %wide.trip.count887, 12
  %n.vec1567 = and i64 %wide.trip.count887, 1073741808 ; 5 uses
  %cmp.n1576 = icmp eq i64 %n.vec1567, %wide.trip.count887
  %min.epilog.iters.check1581 = icmp eq i64 %i.apm, 0
  %n.vec1583 = and i64 %wide.trip.count887, 1073741820 ; 4 uses
  %cmp.n1589 = icmp eq i64 %n.vec1583, %wide.trip.count887
  br label %iter.check1578

iter.check1578:                                   ; preds = %.preheader471.preheader, %._crit_edge599
  %indvar1560 = phi i64 [ 0, %.preheader471.preheader ], [ %indvar.next1561, %._crit_edge599 ] ; 2 uses
  %indvars.iv889 = phi i64 [ %i.apf, %.preheader471.preheader ], [ %indvars.iv.next890, %._crit_edge599 ] ; 2 uses
  %.26603 = phi i64 [ %i.api, %.preheader471.preheader ], [ %indvars.iv.next881.lcssa, %._crit_edge599 ] ; 7 uses
  %invariant.gep1027 = getelementptr [8 x i8], ptr %4, i64 %indvars.iv889 ; 11 uses
  br i1 %or.cond1825, label %vector.memcheck1559, label %vec.epilog.scalar.ph1579.preheader

vector.memcheck1559:                              ; preds = %iter.check1578
  %i.apn = shl i64 %indvar1560, 3
  %i.apo = shl i64 %.26603, 3
  %i.app = add i64 %i.apl, %i.apn
  %i.apq = add i64 %i.apo, %i.a
  %i.apr = sub i64 %i.apq, %i.app
  %diff.check1562 = icmp ugt i64 %i.apr, -128
  br i1 %diff.check1562, label %vec.epilog.scalar.ph1579.preheader, label %vector.main.loop.iter.check1564

vector.main.loop.iter.check1564:                  ; preds = %vector.memcheck1559
  br i1 %min.iters.check1565, label %vec.epilog.ph1582, label %vector.ph1566

vector.ph1566:                                    ; preds = %vector.main.loop.iter.check1564
  %i.aps = add i64 %.26603, %n.vec1567            ; 2 uses
  %i.apt = getelementptr [8 x i8], ptr %3, i64 %.26603
  br label %vector.body1568

vector.body1568:                                  ; preds = %vector.body1568, %vector.ph1566
  %index1569 = phi i64 [ 0, %vector.ph1566 ], [ %index.next1574, %vector.body1568 ] ; 3 uses
  %i.apu = getelementptr [8 x i8], ptr %i.apt, i64 %index1569 ; 4 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 32
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apu, i64 64
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apu, i64 96
  %wide.load1570 = load <4 x double>, ptr %i.apu, align 8, !tbaa !9
  %wide.load1571 = load <4 x double>, ptr %i.apv, align 8, !tbaa !9
  %wide.load1572 = load <4 x double>, ptr %i.apw, align 8, !tbaa !9
  %wide.load1573 = load <4 x double>, ptr %i.apx, align 8, !tbaa !9
  %i.apy = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %index1569 ; 4 uses
  %i.apz = getelementptr i8, ptr %i.apy, i64 32
  %i.aqa = getelementptr i8, ptr %i.apy, i64 64
  %i.aqb = getelementptr i8, ptr %i.apy, i64 96
  store <4 x double> %wide.load1570, ptr %i.apy, align 8, !tbaa !9
  store <4 x double> %wide.load1571, ptr %i.apz, align 8, !tbaa !9
  store <4 x double> %wide.load1572, ptr %i.aqa, align 8, !tbaa !9
  store <4 x double> %wide.load1573, ptr %i.aqb, align 8, !tbaa !9
  %index.next1574 = add nuw i64 %index1569, 16    ; 2 uses
  %i.aqc = icmp eq i64 %index.next1574, %n.vec1567
  br i1 %i.aqc, label %middle.block1575, label %vector.body1568, !llvm.loop !91

middle.block1575:                                 ; preds = %vector.body1568
  br i1 %cmp.n1576, label %._crit_edge599, label %vec.epilog.iter.check1580

vec.epilog.iter.check1580:                        ; preds = %middle.block1575
  br i1 %min.epilog.iters.check1581, label %vec.epilog.scalar.ph1579.preheader, label %vec.epilog.ph1582, !prof !15

vec.epilog.ph1582:                                ; preds = %vector.main.loop.iter.check1564, %vec.epilog.iter.check1580
  %vec.epilog.resume.val1577 = phi i64 [ %n.vec1567, %vec.epilog.iter.check1580 ], [ 0, %vector.main.loop.iter.check1564 ]
  %i.aqd = add i64 %.26603, %n.vec1583            ; 2 uses
  %i.aqe = getelementptr [8 x i8], ptr %3, i64 %.26603
  br label %vec.epilog.vector.body1584

vec.epilog.vector.body1584:                       ; preds = %vec.epilog.vector.body1584, %vec.epilog.ph1582
  %index1585 = phi i64 [ %vec.epilog.resume.val1577, %vec.epilog.ph1582 ], [ %index.next1587, %vec.epilog.vector.body1584 ] ; 3 uses
  %i.aqf = getelementptr [8 x i8], ptr %i.aqe, i64 %index1585
  %wide.load1586 = load <4 x double>, ptr %i.aqf, align 8, !tbaa !9
  %i.aqg = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %index1585
  store <4 x double> %wide.load1586, ptr %i.aqg, align 8, !tbaa !9
  %index.next1587 = add nuw i64 %index1585, 4     ; 2 uses
  %i.aqh = icmp eq i64 %index.next1587, %n.vec1583
  br i1 %i.aqh, label %vec.epilog.middle.block1588, label %vec.epilog.vector.body1584, !llvm.loop !92

vec.epilog.middle.block1588:                      ; preds = %vec.epilog.vector.body1584
  br i1 %cmp.n1589, label %._crit_edge599, label %vec.epilog.scalar.ph1579.preheader

vec.epilog.scalar.ph1579.preheader:               ; preds = %vector.memcheck1559, %iter.check1578, %vec.epilog.iter.check1580, %vec.epilog.middle.block1588
  %indvars.iv882.ph = phi i64 [ 0, %iter.check1578 ], [ 0, %vector.memcheck1559 ], [ %n.vec1567, %vec.epilog.iter.check1580 ], [ %n.vec1583, %vec.epilog.middle.block1588 ] ; 4 uses
  %indvars.iv880.ph = phi i64 [ %.26603, %iter.check1578 ], [ %.26603, %vector.memcheck1559 ], [ %i.aps, %vec.epilog.iter.check1580 ], [ %i.aqd, %vec.epilog.middle.block1588 ] ; 2 uses
  %i.aqi = sub nsw i64 %wide.trip.count887, %indvars.iv882.ph
  %xtraiter1921 = and i64 %i.aqi, 7               ; 2 uses
  %lcmp.mod1922.not = icmp eq i64 %xtraiter1921, 0
  br i1 %lcmp.mod1922.not, label %vec.epilog.scalar.ph1579.prol.loopexit, label %vec.epilog.scalar.ph1579.prol

vec.epilog.scalar.ph1579.prol:                    ; preds = %vec.epilog.scalar.ph1579.preheader, %vec.epilog.scalar.ph1579.prol
  %indvars.iv882.prol = phi i64 [ %indvars.iv.next883.prol, %vec.epilog.scalar.ph1579.prol ], [ %indvars.iv882.ph, %vec.epilog.scalar.ph1579.preheader ] ; 2 uses
  %indvars.iv880.prol = phi i64 [ %indvars.iv.next881.prol, %vec.epilog.scalar.ph1579.prol ], [ %indvars.iv880.ph, %vec.epilog.scalar.ph1579.preheader ] ; 2 uses
  %prol.iter1923 = phi i64 [ %prol.iter1923.next, %vec.epilog.scalar.ph1579.prol ], [ 0, %vec.epilog.scalar.ph1579.preheader ]
  %i.aqj = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv880.prol
  %i.aqk = load double, ptr %i.aqj, align 8, !tbaa !9
  %i.aql = mul nsw i64 %indvars.iv882.prol, %i.apc
  %gep1028.prol.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aql
  store double %i.aqk, ptr %gep1028.prol.a, align 8, !tbaa !9
  %indvars.iv.next881.prol = add nsw i64 %indvars.iv880.prol, 1 ; 3 uses
  %indvars.iv.next883.prol = add nuw nsw i64 %indvars.iv882.prol, 1 ; 2 uses
  %prol.iter1923.next = add i64 %prol.iter1923, 1 ; 2 uses
  %prol.iter1923.cmp.not = icmp eq i64 %prol.iter1923.next, %xtraiter1921
  br i1 %prol.iter1923.cmp.not, label %vec.epilog.scalar.ph1579.prol.loopexit, label %vec.epilog.scalar.ph1579.prol, !llvm.loop !93

vec.epilog.scalar.ph1579.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1579.prol, %vec.epilog.scalar.ph1579.preheader
  %indvars.iv.next881.lcssa1844.unr = phi i64 [ poison, %vec.epilog.scalar.ph1579.preheader ], [ %indvars.iv.next881.prol, %vec.epilog.scalar.ph1579.prol ]
  %indvars.iv882.unr = phi i64 [ %indvars.iv882.ph, %vec.epilog.scalar.ph1579.preheader ], [ %indvars.iv.next883.prol, %vec.epilog.scalar.ph1579.prol ]
  %indvars.iv880.unr = phi i64 [ %indvars.iv880.ph, %vec.epilog.scalar.ph1579.preheader ], [ %indvars.iv.next881.prol, %vec.epilog.scalar.ph1579.prol ]
  %i.aqm = sub nsw i64 %indvars.iv882.ph, %wide.trip.count887
  %i.aqn = icmp ugt i64 %i.aqm, -8
  br i1 %i.aqn, label %._crit_edge599, label %vec.epilog.scalar.ph1579

vec.epilog.scalar.ph1579:                         ; preds = %vec.epilog.scalar.ph1579.prol.loopexit, %vec.epilog.scalar.ph1579
  %indvars.iv882 = phi i64 [ %indvars.iv.next883.7, %vec.epilog.scalar.ph1579 ], [ %indvars.iv882.unr, %vec.epilog.scalar.ph1579.prol.loopexit ] ; 9 uses
  %indvars.iv880 = phi i64 [ %indvars.iv.next881.7, %vec.epilog.scalar.ph1579 ], [ %indvars.iv880.unr, %vec.epilog.scalar.ph1579.prol.loopexit ] ; 9 uses
  %i.aqo = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv880
  %i.aqp = load double, ptr %i.aqo, align 8, !tbaa !9
  %i.aqq = mul nsw i64 %indvars.iv882, %i.apc
  %gep1028.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aqq
  store double %i.aqp, ptr %gep1028.a, align 8, !tbaa !9
  %indvars.iv.next883 = add nuw nsw i64 %indvars.iv882, 1
  %i.aqr = getelementptr [8 x i8], ptr %3, i64 %indvars.iv880
  %i.aqs = getelementptr i8, ptr %i.aqr, i64 8
  %i.aqt = load double, ptr %i.aqs, align 8, !tbaa !9
  %i.aqu = mul nsw i64 %indvars.iv.next883, %i.apc
  %gep1028.1.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aqu
  store double %i.aqt, ptr %gep1028.1.a, align 8, !tbaa !9
  %indvars.iv.next883.1 = add nuw nsw i64 %indvars.iv882, 2
  %i.aqv = getelementptr [8 x i8], ptr %3, i64 %indvars.iv880
  %i.aqw = getelementptr i8, ptr %i.aqv, i64 16
  %i.aqx = load double, ptr %i.aqw, align 8, !tbaa !9
  %i.aqy = mul nsw i64 %indvars.iv.next883.1, %i.apc
  %gep1028.2.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aqy
  store double %i.aqx, ptr %gep1028.2.a, align 8, !tbaa !9
  %indvars.iv.next883.2 = add nuw nsw i64 %indvars.iv882, 3
  %i.aqz = getelementptr [8 x i8], ptr %3, i64 %indvars.iv880
  %i.ara = getelementptr i8, ptr %i.aqz, i64 24
  %i.arb = load double, ptr %i.ara, align 8, !tbaa !9
  %i.arc = mul nsw i64 %indvars.iv.next883.2, %i.apc
  %gep1028.3 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.arc
  store double %i.arb, ptr %gep1028.3, align 8, !tbaa !9
  %indvars.iv.next883.3 = add nuw nsw i64 %indvars.iv882, 4
  %i.ard = getelementptr [8 x i8], ptr %3, i64 %indvars.iv880
  %i.are = getelementptr i8, ptr %i.ard, i64 32
  %i.arf = load double, ptr %i.are, align 8, !tbaa !9
  %i.arg = mul nsw i64 %indvars.iv.next883.3, %i.apc
  %gep1028.4 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.arg
  store double %i.arf, ptr %gep1028.4, align 8, !tbaa !9
  %indvars.iv.next883.4 = add nuw nsw i64 %indvars.iv882, 5
  %i.arh = getelementptr [8 x i8], ptr %3, i64 %indvars.iv880
  %i.ari = getelementptr i8, ptr %i.arh, i64 40
  %i.arj = load double, ptr %i.ari, align 8, !tbaa !9
  %i.ark = mul nsw i64 %indvars.iv.next883.4, %i.apc
  %gep1028.5 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.ark
  store double %i.arj, ptr %gep1028.5, align 8, !tbaa !9
  %indvars.iv.next883.5 = add nuw nsw i64 %indvars.iv882, 6
  %i.arl = getelementptr [8 x i8], ptr %3, i64 %indvars.iv880
  %i.arm = getelementptr i8, ptr %i.arl, i64 48
  %i.arn = load double, ptr %i.arm, align 8, !tbaa !9
  %i.aro = mul nsw i64 %indvars.iv.next883.5, %i.apc
  %gep1028.6 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aro
  store double %i.arn, ptr %gep1028.6, align 8, !tbaa !9
  %indvars.iv.next883.6 = add nuw nsw i64 %indvars.iv882, 7
  %i.arp = getelementptr [8 x i8], ptr %3, i64 %indvars.iv880
  %i.arq = getelementptr i8, ptr %i.arp, i64 56
  %i.arr = load double, ptr %i.arq, align 8, !tbaa !9
  %i.ars = mul nsw i64 %indvars.iv.next883.6, %i.apc
  %gep1028.7 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.ars
  store double %i.arr, ptr %gep1028.7, align 8, !tbaa !9
  %indvars.iv.next881.7 = add nsw i64 %indvars.iv880, 8 ; 2 uses
  %indvars.iv.next883.7 = add nuw nsw i64 %indvars.iv882, 8 ; 2 uses
  %exitcond888.not.7 = icmp eq i64 %indvars.iv.next883.7, %wide.trip.count887
  br i1 %exitcond888.not.7, label %._crit_edge599, label %vec.epilog.scalar.ph1579, !llvm.loop !94

._crit_edge599:                                   ; preds = %vec.epilog.scalar.ph1579.prol.loopexit, %vec.epilog.scalar.ph1579, %vec.epilog.middle.block1588, %middle.block1575
  %indvars.iv.next881.lcssa = phi i64 [ %i.aqd, %vec.epilog.middle.block1588 ], [ %i.aps, %middle.block1575 ], [ %indvars.iv.next881.lcssa1844.unr, %vec.epilog.scalar.ph1579.prol.loopexit ], [ %indvars.iv.next881.7, %vec.epilog.scalar.ph1579 ]
  %indvars.iv.next890 = add nsw i64 %indvars.iv889, 1 ; 2 uses
  %exitcond892.not = icmp eq i64 %indvars.iv.next890, %wide.trip.count891
  %indvar.next1561 = add i64 %indvar1560, 1
  br i1 %exitcond892.not, label %.loopexit, label %iter.check1578, !llvm.loop !95

.preheader468.us.preheader:                       ; preds = %bb.p
  %i.art = lshr exact i32 %i.i, 1
  %i.aru = zext nneg i32 %i.art to i64            ; 9 uses
  %i.arv = sext i32 %i.d to i64                   ; 2 uses
  %i.arw = zext nneg i32 %i.i to i64              ; 2 uses
  %i.arx = add nuw nsw i32 %i.v, 1
  %wide.trip.count927 = zext nneg i32 %i.arx to i64 ; 2 uses
  %umax1673 = tail call i64 @llvm.umax.i64(i64 %wide.trip.count927, i64 %i.arw)
  %i.ary = sub nsw i64 %umax1673, %i.aru          ; 7 uses
  %min.iters.check1674 = icmp ugt i64 %i.ary, 3
  %ident.check1670.not = icmp eq i32 %i.d, 1
  %or.cond1826 = select i1 %min.iters.check1674, i1 %ident.check1670.not, i1 false
  %min.iters.check1676 = icmp ult i64 %i.ary, 16
  %i.arz = and i64 %i.ary, 12
  %n.vec1678 = and i64 %i.ary, -16                ; 5 uses
  %i.asa = add nsw i64 %n.vec1678, %i.aru
  %cmp.n1687 = icmp eq i64 %i.ary, %n.vec1678
  %min.epilog.iters.check1693 = icmp eq i64 %i.arz, 0
  %n.vec1695 = and i64 %i.ary, -4                 ; 4 uses
  %i.asb = add nsw i64 %n.vec1695, %i.aru
  %cmp.n1701 = icmp eq i64 %i.ary, %n.vec1695
  br label %iter.check1690

iter.check1690:                                   ; preds = %.preheader468.us.preheader, %._crit_edge622.us
  %indvars.iv924 = phi i64 [ 0, %.preheader468.us.preheader ], [ %indvars.iv.next925, %._crit_edge622.us ] ; 3 uses
  %.28625.us = phi i64 [ 0, %.preheader468.us.preheader ], [ %indvars.iv.next920.lcssa, %._crit_edge622.us ] ; 7 uses
  %invariant.gep1033 = getelementptr [8 x i8], ptr %4, i64 %indvars.iv924 ; 3 uses
  br i1 %or.cond1826, label %vector.memcheck1671, label %vec.epilog.scalar.ph1691.preheader

vector.memcheck1671:                              ; preds = %iter.check1690
  %i.asc = shl i64 %.28625.us, 3
  %i.asd = add nuw i64 %indvars.iv924, %i.aru
  %i.ase = shl i64 %i.asd, 3
  %i.asf = add i64 %i.ase, %i.b
  %i.asg = add i64 %i.asc, %i.a
  %i.ash = sub i64 %i.asg, %i.asf
  %diff.check1672 = icmp ugt i64 %i.ash, -128
  br i1 %diff.check1672, label %vec.epilog.scalar.ph1691.preheader, label %vector.main.loop.iter.check1675

vector.main.loop.iter.check1675:                  ; preds = %vector.memcheck1671
  br i1 %min.iters.check1676, label %vec.epilog.ph1694, label %vector.ph1677

vector.ph1677:                                    ; preds = %vector.main.loop.iter.check1675
  %i.asi = add i64 %.28625.us, %n.vec1678         ; 2 uses
  %i.asj = getelementptr [8 x i8], ptr %3, i64 %.28625.us
  %invariant.gep2052 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.aru
  br label %vector.body1679

vector.body1679:                                  ; preds = %vector.body1679, %vector.ph1677
  %index1680 = phi i64 [ 0, %vector.ph1677 ], [ %index.next1685, %vector.body1679 ] ; 3 uses
  %i.ask = getelementptr [8 x i8], ptr %i.asj, i64 %index1680 ; 4 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 32
  %i.asm = getelementptr inbounds nuw i8, ptr %i.ask, i64 64
  %i.asn = getelementptr inbounds nuw i8, ptr %i.ask, i64 96
  %wide.load1681 = load <4 x double>, ptr %i.ask, align 8, !tbaa !9
  %wide.load1682 = load <4 x double>, ptr %i.asl, align 8, !tbaa !9
  %wide.load1683 = load <4 x double>, ptr %i.asm, align 8, !tbaa !9
  %wide.load1684 = load <4 x double>, ptr %i.asn, align 8, !tbaa !9
  %gep2053 = getelementptr [8 x i8], ptr %invariant.gep2052, i64 %index1680 ; 4 uses
  %i.aso = getelementptr i8, ptr %gep2053, i64 32
  %i.asp = getelementptr i8, ptr %gep2053, i64 64
  %i.asq = getelementptr i8, ptr %gep2053, i64 96
  store <4 x double> %wide.load1681, ptr %gep2053, align 8, !tbaa !9
  store <4 x double> %wide.load1682, ptr %i.aso, align 8, !tbaa !9
  store <4 x double> %wide.load1683, ptr %i.asp, align 8, !tbaa !9
  store <4 x double> %wide.load1684, ptr %i.asq, align 8, !tbaa !9
  %index.next1685 = add nuw i64 %index1680, 16    ; 2 uses
  %i.asr = icmp eq i64 %index.next1685, %n.vec1678
  br i1 %i.asr, label %middle.block1686, label %vector.body1679, !llvm.loop !96

middle.block1686:                                 ; preds = %vector.body1679
  br i1 %cmp.n1687, label %._crit_edge622.us, label %vec.epilog.iter.check1692

vec.epilog.iter.check1692:                        ; preds = %middle.block1686
  br i1 %min.epilog.iters.check1693, label %vec.epilog.scalar.ph1691.preheader, label %vec.epilog.ph1694, !prof !15

vec.epilog.ph1694:                                ; preds = %vector.main.loop.iter.check1675, %vec.epilog.iter.check1692
  %vec.epilog.resume.val1688 = phi i64 [ %n.vec1678, %vec.epilog.iter.check1692 ], [ 0, %vector.main.loop.iter.check1675 ]
  %i.ass = add i64 %.28625.us, %n.vec1695         ; 2 uses
  %i.ast = getelementptr [8 x i8], ptr %3, i64 %.28625.us
  %invariant.gep2054 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.aru
  br label %vec.epilog.vector.body1696

vec.epilog.vector.body1696:                       ; preds = %vec.epilog.vector.body1696, %vec.epilog.ph1694
  %index1697 = phi i64 [ %vec.epilog.resume.val1688, %vec.epilog.ph1694 ], [ %index.next1699, %vec.epilog.vector.body1696 ] ; 3 uses
  %i.asu = getelementptr [8 x i8], ptr %i.ast, i64 %index1697
  %wide.load1698 = load <4 x double>, ptr %i.asu, align 8, !tbaa !9
  %gep2055 = getelementptr [8 x i8], ptr %invariant.gep2054, i64 %index1697
  store <4 x double> %wide.load1698, ptr %gep2055, align 8, !tbaa !9
  %index.next1699 = add nuw i64 %index1697, 4     ; 2 uses
  %i.asv = icmp eq i64 %index.next1699, %n.vec1695
  br i1 %i.asv, label %vec.epilog.middle.block1700, label %vec.epilog.vector.body1696, !llvm.loop !97

vec.epilog.middle.block1700:                      ; preds = %vec.epilog.vector.body1696
  br i1 %cmp.n1701, label %._crit_edge622.us, label %vec.epilog.scalar.ph1691.preheader

vec.epilog.scalar.ph1691.preheader:               ; preds = %vector.memcheck1671, %iter.check1690, %vec.epilog.iter.check1692, %vec.epilog.middle.block1700
  %indvars.iv921.ph = phi i64 [ %i.aru, %iter.check1690 ], [ %i.aru, %vector.memcheck1671 ], [ %i.asa, %vec.epilog.iter.check1692 ], [ %i.asb, %vec.epilog.middle.block1700 ]
  %indvars.iv919.ph = phi i64 [ %.28625.us, %iter.check1690 ], [ %.28625.us, %vector.memcheck1671 ], [ %i.asi, %vec.epilog.iter.check1692 ], [ %i.ass, %vec.epilog.middle.block1700 ]
  br label %vec.epilog.scalar.ph1691

vec.epilog.scalar.ph1691:                         ; preds = %vec.epilog.scalar.ph1691.preheader, %vec.epilog.scalar.ph1691
  %indvars.iv921 = phi i64 [ %indvars.iv.next922, %vec.epilog.scalar.ph1691 ], [ %indvars.iv921.ph, %vec.epilog.scalar.ph1691.preheader ] ; 2 uses
  %indvars.iv919 = phi i64 [ %indvars.iv.next920, %vec.epilog.scalar.ph1691 ], [ %indvars.iv919.ph, %vec.epilog.scalar.ph1691.preheader ] ; 2 uses
  %i.asw = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv919
  %i.asx = load double, ptr %i.asw, align 8, !tbaa !9
  %i.asy = mul nsw i64 %indvars.iv921, %i.arv
  %gep1034 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.asy
  store double %i.asx, ptr %gep1034, align 8, !tbaa !9
  %indvars.iv.next920 = add nsw i64 %indvars.iv919, 1 ; 2 uses
  %indvars.iv.next922 = add nuw nsw i64 %indvars.iv921, 1 ; 2 uses
  %.not423.not.us = icmp samesign ult i64 %indvars.iv.next922, %i.arw
  br i1 %.not423.not.us, label %vec.epilog.scalar.ph1691, label %._crit_edge622.us, !llvm.loop !98

._crit_edge622.us:                                ; preds = %vec.epilog.scalar.ph1691, %vec.epilog.middle.block1700, %middle.block1686
  %indvars.iv.next920.lcssa = phi i64 [ %i.ass, %vec.epilog.middle.block1700 ], [ %i.asi, %middle.block1686 ], [ %indvars.iv.next920, %vec.epilog.scalar.ph1691 ] ; 3 uses
  %indvars.iv.next925 = add nuw nsw i64 %indvars.iv924, 1 ; 2 uses
  %exitcond928.not = icmp eq i64 %indvars.iv.next925, %wide.trip.count927
  br i1 %exitcond928.not, label %.split627.us, label %iter.check1690, !llvm.loop !99

.split627.us:                                     ; preds = %._crit_edge622.us
  %.not419638 = icmp ult i32 %i.i, 4
  br i1 %.not419638, label %iter.check1796, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.split627.us
  %i.asz = add nuw nsw i32 %i.v, 1                ; 2 uses
  %i.ata = sext i32 %i.d to i64                   ; 10 uses
  %i.atb = zext nneg i32 %i.asz to i64
  %i.atc = zext nneg i32 %i.i to i64
  %i.atd = add nsw i32 %i.v, -1                   ; 2 uses
  %wide.trip.count961 = zext nneg i32 %i.atd to i64
  %i.ate = shl nuw nsw i64 %i.aru, 3
  %i.atf = add i64 %i.ate, %i.b
  %i.atg = add i64 %i.atf, 8
  %i.ath = add nsw i32 %i.i, -2
  %i.ati = shl nsw i64 %i.arv, 3
  %ident.check1705.not = icmp eq i32 %i.d, 1
  br label %iter.check1763

iter.check1763:                                   ; preds = %.preheader.lr.ph, %._crit_edge636
  %indvars.iv956 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next957, %._crit_edge636 ] ; 7 uses
  %indvars.iv954 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next955, %._crit_edge636 ] ; 10 uses
  %indvars.iv945 = phi i32 [ %i.asz, %.preheader.lr.ph ], [ %indvars.iv.next946, %._crit_edge636 ] ; 3 uses
  %.30640.in = phi i64 [ %indvars.iv.next920.lcssa, %.preheader.lr.ph ], [ %.32.lcssa.in, %._crit_edge636 ] ; 2 uses
  %i.atj = trunc i64 %indvars.iv956 to i32
  %i.atk = add i32 %i.v, %i.atj
  %i.atl = sub i32 %i.ath, %i.atk                 ; 3 uses
  %i.atm = zext i32 %i.atl to i64
  %i.atn = add nuw nsw i64 %i.atm, 1              ; 5 uses
  %i.ato = sext i32 %indvars.iv945 to i64
  %.30640 = trunc i64 %.30640.in to i32           ; 4 uses
  %i.atp = sext i32 %indvars.iv945 to i64         ; 6 uses
  %i.atq = mul nsw i64 %indvars.iv956, %i.ata
  %sext985 = shl i64 %.30640.in, 32               ; 2 uses
  %i.atr = ashr exact i64 %sext985, 32            ; 6 uses
  %invariant.gep1035 = getelementptr [8 x i8], ptr %4, i64 %i.atq ; 11 uses
  %min.iters.check1740 = icmp samesign ult i64 %indvars.iv954, 4
  br i1 %min.iters.check1740, label %vec.epilog.scalar.ph1764.preheader, label %vector.memcheck1738

vector.memcheck1738:                              ; preds = %iter.check1763
  %i.ats = mul i64 %i.ati, %indvars.iv956
  %i.att = ashr exact i64 %sext985, 29
  %i.atu = add i64 %i.ats, %i.b
  %i.atv = add i64 %i.att, %i.a
  %i.atw = sub i64 %i.atv, %i.atu
  %diff.check1739 = icmp ugt i64 %i.atw, -128
  br i1 %diff.check1739, label %vec.epilog.scalar.ph1764.preheader, label %vector.main.loop.iter.check1741

vector.main.loop.iter.check1741:                  ; preds = %vector.memcheck1738
  %min.iters.check1742 = icmp samesign ult i64 %indvars.iv954, 16
  br i1 %min.iters.check1742, label %vec.epilog.ph1767, label %vector.ph1743

vector.ph1743:                                    ; preds = %vector.main.loop.iter.check1741
  %i.atx = and i64 %indvars.iv954, 12
  %n.vec1744 = and i64 %indvars.iv954, 9223372036854775792 ; 5 uses
  %i.aty = add i64 %i.atr, %n.vec1744             ; 2 uses
  %i.atz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.30640, i64 0
  %i.aua = getelementptr [8 x i8], ptr %3, i64 %i.atr
  br label %vector.body1745

vector.body1745:                                  ; preds = %vector.body1745, %vector.ph1743
  %index1746 = phi i64 [ 0, %vector.ph1743 ], [ %index.next1755, %vector.body1745 ] ; 3 uses
  %vec.phi1747 = phi <4 x i32> [ %i.atz, %vector.ph1743 ], [ %i.aub, %vector.body1745 ]
  %vec.phi1748 = phi <4 x i32> [ zeroinitializer, %vector.ph1743 ], [ %i.auc, %vector.body1745 ]
  %vec.phi1749 = phi <4 x i32> [ zeroinitializer, %vector.ph1743 ], [ %i.aud, %vector.body1745 ]
  %vec.phi1750 = phi <4 x i32> [ zeroinitializer, %vector.ph1743 ], [ %i.aue, %vector.body1745 ]
  %i.aub = add <4 x i32> %vec.phi1747, splat (i32 1) ; 2 uses
  %i.auc = add <4 x i32> %vec.phi1748, splat (i32 1) ; 2 uses
  %i.aud = add <4 x i32> %vec.phi1749, splat (i32 1) ; 2 uses
  %i.aue = add <4 x i32> %vec.phi1750, splat (i32 1) ; 2 uses
  %i.auf = getelementptr [8 x i8], ptr %i.aua, i64 %index1746 ; 4 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 32
  %i.auh = getelementptr inbounds nuw i8, ptr %i.auf, i64 64
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auf, i64 96
  %wide.load1751 = load <4 x double>, ptr %i.auf, align 8, !tbaa !9
  %wide.load1752 = load <4 x double>, ptr %i.aug, align 8, !tbaa !9
  %wide.load1753 = load <4 x double>, ptr %i.auh, align 8, !tbaa !9
  %wide.load1754 = load <4 x double>, ptr %i.aui, align 8, !tbaa !9
  %i.auj = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %index1746 ; 4 uses
  %i.auk = getelementptr i8, ptr %i.auj, i64 32
  %i.aul = getelementptr i8, ptr %i.auj, i64 64
  %i.aum = getelementptr i8, ptr %i.auj, i64 96
  store <4 x double> %wide.load1751, ptr %i.auj, align 8, !tbaa !9
  store <4 x double> %wide.load1752, ptr %i.auk, align 8, !tbaa !9
  store <4 x double> %wide.load1753, ptr %i.aul, align 8, !tbaa !9
  store <4 x double> %wide.load1754, ptr %i.aum, align 8, !tbaa !9
  %index.next1755 = add nuw i64 %index1746, 16    ; 2 uses
  %i.aun = icmp eq i64 %index.next1755, %n.vec1744
  br i1 %i.aun, label %middle.block1756, label %vector.body1745, !llvm.loop !100

middle.block1756:                                 ; preds = %vector.body1745
  %bin.rdx1757 = add <4 x i32> %i.auc, %i.aub
  %bin.rdx1758 = add <4 x i32> %i.aud, %bin.rdx1757
  %bin.rdx1759 = add <4 x i32> %i.aue, %bin.rdx1758
  %i.auo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1759) ; 3 uses
  %cmp.n1760 = icmp eq i64 %indvars.iv954, %n.vec1744
  br i1 %cmp.n1760, label %.loopexit1810, label %vec.epilog.iter.check1765

vec.epilog.iter.check1765:                        ; preds = %middle.block1756
  %min.epilog.iters.check1766 = icmp eq i64 %i.atx, 0
  br i1 %min.epilog.iters.check1766, label %vec.epilog.scalar.ph1764.preheader, label %vec.epilog.ph1767, !prof !15

vec.epilog.ph1767:                                ; preds = %vector.main.loop.iter.check1741, %vec.epilog.iter.check1765
  %vec.epilog.resume.val1761 = phi i64 [ %n.vec1744, %vec.epilog.iter.check1765 ], [ 0, %vector.main.loop.iter.check1741 ]
  %bc.merge.rdx1762 = phi i32 [ %i.auo, %vec.epilog.iter.check1765 ], [ %.30640, %vector.main.loop.iter.check1741 ]
  %n.vec1768 = and i64 %indvars.iv954, 9223372036854775804 ; 4 uses
  %i.aup = add i64 %i.atr, %n.vec1768             ; 2 uses
  %i.auq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1762, i64 0
  %i.aur = getelementptr [8 x i8], ptr %3, i64 %i.atr
  br label %vec.epilog.vector.body1769

vec.epilog.vector.body1769:                       ; preds = %vec.epilog.vector.body1769, %vec.epilog.ph1767
  %index1770 = phi i64 [ %vec.epilog.resume.val1761, %vec.epilog.ph1767 ], [ %index.next1773, %vec.epilog.vector.body1769 ] ; 3 uses
  %vec.phi1771 = phi <4 x i32> [ %i.auq, %vec.epilog.ph1767 ], [ %i.aus, %vec.epilog.vector.body1769 ]
  %i.aus = add <4 x i32> %vec.phi1771, splat (i32 1) ; 2 uses
  %i.aut = getelementptr [8 x i8], ptr %i.aur, i64 %index1770
  %wide.load1772 = load <4 x double>, ptr %i.aut, align 8, !tbaa !9
  %i.auu = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %index1770
  store <4 x double> %wide.load1772, ptr %i.auu, align 8, !tbaa !9
  %index.next1773 = add nuw i64 %index1770, 4     ; 2 uses
  %i.auv = icmp eq i64 %index.next1773, %n.vec1768
  br i1 %i.auv, label %vec.epilog.middle.block1774, label %vec.epilog.vector.body1769, !llvm.loop !101

vec.epilog.middle.block1774:                      ; preds = %vec.epilog.vector.body1769
  %i.auw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aus) ; 2 uses
  %cmp.n1775 = icmp eq i64 %indvars.iv954, %n.vec1768
  br i1 %cmp.n1775, label %.loopexit1810, label %vec.epilog.scalar.ph1764.preheader

vec.epilog.scalar.ph1764.preheader:               ; preds = %vector.memcheck1738, %iter.check1763, %vec.epilog.iter.check1765, %vec.epilog.middle.block1774
  %indvars.iv941.in.ph = phi i32 [ %.30640, %iter.check1763 ], [ %.30640, %vector.memcheck1738 ], [ %i.auo, %vec.epilog.iter.check1765 ], [ %i.auw, %vec.epilog.middle.block1774 ] ; 2 uses
  %indvars.iv932.ph = phi i64 [ 0, %iter.check1763 ], [ 0, %vector.memcheck1738 ], [ %n.vec1744, %vec.epilog.iter.check1765 ], [ %n.vec1768, %vec.epilog.middle.block1774 ] ; 4 uses
  %indvars.iv930.ph = phi i64 [ %i.atr, %iter.check1763 ], [ %i.atr, %vector.memcheck1738 ], [ %i.aty, %vec.epilog.iter.check1765 ], [ %i.aup, %vec.epilog.middle.block1774 ] ; 2 uses
  %i.aux = sub nsw i64 %indvars.iv954, %indvars.iv932.ph
  %i.auy = sub nsw i64 %indvars.iv956, %indvars.iv932.ph
  %xtraiter1930 = and i64 %i.aux, 7               ; 2 uses
  %lcmp.mod1931.not = icmp eq i64 %xtraiter1930, 0
  br i1 %lcmp.mod1931.not, label %vec.epilog.scalar.ph1764.prol.loopexit, label %vec.epilog.scalar.ph1764.prol

vec.epilog.scalar.ph1764.prol:                    ; preds = %vec.epilog.scalar.ph1764.preheader, %vec.epilog.scalar.ph1764.prol
  %indvars.iv941.in.prol = phi i32 [ %indvars.iv941.prol, %vec.epilog.scalar.ph1764.prol ], [ %indvars.iv941.in.ph, %vec.epilog.scalar.ph1764.preheader ]
  %indvars.iv932.prol = phi i64 [ %indvars.iv.next933.prol, %vec.epilog.scalar.ph1764.prol ], [ %indvars.iv932.ph, %vec.epilog.scalar.ph1764.preheader ] ; 2 uses
  %indvars.iv930.prol = phi i64 [ %indvars.iv.next931.prol, %vec.epilog.scalar.ph1764.prol ], [ %indvars.iv930.ph, %vec.epilog.scalar.ph1764.preheader ] ; 2 uses
  %prol.iter1932 = phi i64 [ %prol.iter1932.next, %vec.epilog.scalar.ph1764.prol ], [ 0, %vec.epilog.scalar.ph1764.preheader ]
  %indvars.iv941.prol = add i32 %indvars.iv941.in.prol, 1 ; 3 uses
  %i.auz = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv930.prol
  %i.ava = load double, ptr %i.auz, align 8, !tbaa !9
  %gep1036.prol = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932.prol
  store double %i.ava, ptr %gep1036.prol, align 8, !tbaa !9
  %indvars.iv.next931.prol = add nsw i64 %indvars.iv930.prol, 1 ; 3 uses
  %indvars.iv.next933.prol = add nuw nsw i64 %indvars.iv932.prol, 1 ; 2 uses
  %prol.iter1932.next = add i64 %prol.iter1932, 1 ; 2 uses
  %prol.iter1932.cmp.not = icmp eq i64 %prol.iter1932.next, %xtraiter1930
  br i1 %prol.iter1932.cmp.not, label %vec.epilog.scalar.ph1764.prol.loopexit, label %vec.epilog.scalar.ph1764.prol, !llvm.loop !102

vec.epilog.scalar.ph1764.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1764.prol, %vec.epilog.scalar.ph1764.preheader
  %indvars.iv941.lcssa1833.unr = phi i32 [ poison, %vec.epilog.scalar.ph1764.preheader ], [ %indvars.iv941.prol, %vec.epilog.scalar.ph1764.prol ]
  %indvars.iv.next931.lcssa1832.unr = phi i64 [ poison, %vec.epilog.scalar.ph1764.preheader ], [ %indvars.iv.next931.prol, %vec.epilog.scalar.ph1764.prol ]
  %indvars.iv941.in.unr = phi i32 [ %indvars.iv941.in.ph, %vec.epilog.scalar.ph1764.preheader ], [ %indvars.iv941.prol, %vec.epilog.scalar.ph1764.prol ]
  %indvars.iv932.unr = phi i64 [ %indvars.iv932.ph, %vec.epilog.scalar.ph1764.preheader ], [ %indvars.iv.next933.prol, %vec.epilog.scalar.ph1764.prol ]
  %indvars.iv930.unr = phi i64 [ %indvars.iv930.ph, %vec.epilog.scalar.ph1764.preheader ], [ %indvars.iv.next931.prol, %vec.epilog.scalar.ph1764.prol ]
  %i.avb = icmp ult i64 %i.auy, 7
  br i1 %i.avb, label %.loopexit1810, label %vec.epilog.scalar.ph1764

vec.epilog.scalar.ph1764:                         ; preds = %vec.epilog.scalar.ph1764.prol.loopexit, %vec.epilog.scalar.ph1764
  %indvars.iv941.in = phi i32 [ %indvars.iv941.7, %vec.epilog.scalar.ph1764 ], [ %indvars.iv941.in.unr, %vec.epilog.scalar.ph1764.prol.loopexit ]
  %indvars.iv932 = phi i64 [ %indvars.iv.next933.7, %vec.epilog.scalar.ph1764 ], [ %indvars.iv932.unr, %vec.epilog.scalar.ph1764.prol.loopexit ] ; 9 uses
  %indvars.iv930 = phi i64 [ %indvars.iv.next931.7, %vec.epilog.scalar.ph1764 ], [ %indvars.iv930.unr, %vec.epilog.scalar.ph1764.prol.loopexit ] ; 9 uses
  %i.avc = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv930
  %i.avd = load double, ptr %i.avc, align 8, !tbaa !9
  %gep1036 = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  store double %i.avd, ptr %gep1036, align 8, !tbaa !9
  %i.ave = getelementptr [8 x i8], ptr %3, i64 %indvars.iv930
  %i.avf = getelementptr i8, ptr %i.ave, i64 8
  %i.avg = load double, ptr %i.avf, align 8, !tbaa !9
  %i.avh = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.1 = getelementptr i8, ptr %i.avh, i64 8
  store double %i.avg, ptr %gep1036.1, align 8, !tbaa !9
  %i.avi = getelementptr [8 x i8], ptr %3, i64 %indvars.iv930
  %i.avj = getelementptr i8, ptr %i.avi, i64 16
  %i.avk = load double, ptr %i.avj, align 8, !tbaa !9
  %i.avl = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.2 = getelementptr i8, ptr %i.avl, i64 16
  store double %i.avk, ptr %gep1036.2, align 8, !tbaa !9
  %i.avm = getelementptr [8 x i8], ptr %3, i64 %indvars.iv930
  %i.avn = getelementptr i8, ptr %i.avm, i64 24
  %i.avo = load double, ptr %i.avn, align 8, !tbaa !9
  %i.avp = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.3 = getelementptr i8, ptr %i.avp, i64 24
  store double %i.avo, ptr %gep1036.3, align 8, !tbaa !9
  %i.avq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv930
  %i.avr = getelementptr i8, ptr %i.avq, i64 32
  %i.avs = load double, ptr %i.avr, align 8, !tbaa !9
  %i.avt = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.4 = getelementptr i8, ptr %i.avt, i64 32
  store double %i.avs, ptr %gep1036.4, align 8, !tbaa !9
  %i.avu = getelementptr [8 x i8], ptr %3, i64 %indvars.iv930
  %i.avv = getelementptr i8, ptr %i.avu, i64 40
  %i.avw = load double, ptr %i.avv, align 8, !tbaa !9
  %i.avx = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.5 = getelementptr i8, ptr %i.avx, i64 40
  store double %i.avw, ptr %gep1036.5, align 8, !tbaa !9
  %i.avy = getelementptr [8 x i8], ptr %3, i64 %indvars.iv930
  %i.avz = getelementptr i8, ptr %i.avy, i64 48
  %i.awa = load double, ptr %i.avz, align 8, !tbaa !9
  %i.awb = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.6 = getelementptr i8, ptr %i.awb, i64 48
  store double %i.awa, ptr %gep1036.6, align 8, !tbaa !9
  %indvars.iv941.7 = add i32 %indvars.iv941.in, 8 ; 2 uses
  %i.awc = getelementptr [8 x i8], ptr %3, i64 %indvars.iv930
  %i.awd = getelementptr i8, ptr %i.awc, i64 56
  %i.awe = load double, ptr %i.awd, align 8, !tbaa !9
  %i.awf = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.7 = getelementptr i8, ptr %i.awf, i64 56
  store double %i.awe, ptr %gep1036.7, align 8, !tbaa !9
  %indvars.iv.next931.7 = add nsw i64 %indvars.iv930, 8 ; 2 uses
  %indvars.iv.next933.7 = add nuw nsw i64 %indvars.iv932, 8 ; 2 uses
  %exitcond940.not.7 = icmp eq i64 %indvars.iv.next933.7, %indvars.iv954
  br i1 %exitcond940.not.7, label %.loopexit1810, label %vec.epilog.scalar.ph1764, !llvm.loop !103

.loopexit1810:                                    ; preds = %vec.epilog.scalar.ph1764.prol.loopexit, %vec.epilog.scalar.ph1764, %vec.epilog.middle.block1774, %middle.block1756
  %indvars.iv941.lcssa = phi i32 [ %i.auw, %vec.epilog.middle.block1774 ], [ %i.auo, %middle.block1756 ], [ %indvars.iv941.lcssa1833.unr, %vec.epilog.scalar.ph1764.prol.loopexit ], [ %indvars.iv941.7, %vec.epilog.scalar.ph1764 ]
  %indvars.iv.next931.lcssa = phi i64 [ %i.aup, %vec.epilog.middle.block1774 ], [ %i.aty, %middle.block1756 ], [ %indvars.iv.next931.lcssa1832.unr, %vec.epilog.scalar.ph1764.prol.loopexit ], [ %indvars.iv.next931.7, %vec.epilog.scalar.ph1764 ]
  %i.awg = add nuw nsw i64 %indvars.iv956, %i.atb ; 2 uses
  %.not422.not631 = icmp samesign ult i64 %i.awg, %i.atc
  br i1 %.not422.not631, label %iter.check1724, label %._crit_edge636

iter.check1724:                                   ; preds = %.loopexit1810
  %i.awh = sext i32 %indvars.iv941.lcssa to i64   ; 7 uses
  %invariant.gep1037 = getelementptr [8 x i8], ptr %4, i64 %i.awg ; 11 uses
  %min.iters.check1708 = icmp ugt i32 %i.atl, 2
  %or.cond1827 = select i1 %min.iters.check1708, i1 %ident.check1705.not, i1 false
  br i1 %or.cond1827, label %vector.memcheck1706, label %.lr.ph635.preheader

vector.memcheck1706:                              ; preds = %iter.check1724
  %i.awi = add i64 %indvars.iv956, %i.ato
  %i.awj = shl i64 %i.awi, 3
  %i.awk = shl nsw i64 %i.awh, 3
  %i.awl = add i64 %i.atg, %i.awj
  %i.awm = add i64 %i.awk, %i.a
  %i.awn = sub i64 %i.awm, %i.awl
  %diff.check1707 = icmp ugt i64 %i.awn, -128
  br i1 %diff.check1707, label %.lr.ph635.preheader, label %vector.main.loop.iter.check1709

vector.main.loop.iter.check1709:                  ; preds = %vector.memcheck1706
  %min.iters.check1710 = icmp ult i32 %i.atl, 15
  br i1 %min.iters.check1710, label %vec.epilog.ph1728, label %vector.ph1711

vector.ph1711:                                    ; preds = %vector.main.loop.iter.check1709
  %i.awo = and i64 %i.atn, 12
  %n.vec1712 = and i64 %i.atn, 8589934576         ; 5 uses
  %i.awp = add nsw i64 %n.vec1712, %i.atp
  %i.awq = add nsw i64 %n.vec1712, %i.awh         ; 2 uses
  %invariant.gep2056 = getelementptr [8 x i8], ptr %3, i64 %i.awh
  %invariant.gep2058 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.atp
  br label %vector.body1713

vector.body1713:                                  ; preds = %vector.body1713, %vector.ph1711
  %index1714 = phi i64 [ 0, %vector.ph1711 ], [ %index.next1719, %vector.body1713 ] ; 3 uses
  %gep2057 = getelementptr [8 x i8], ptr %invariant.gep2056, i64 %index1714 ; 4 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %gep2057, i64 32
  %i.aws = getelementptr inbounds nuw i8, ptr %gep2057, i64 64
  %i.awt = getelementptr inbounds nuw i8, ptr %gep2057, i64 96
  %wide.load1715 = load <4 x double>, ptr %gep2057, align 8, !tbaa !9
  %wide.load1716 = load <4 x double>, ptr %i.awr, align 8, !tbaa !9
  %wide.load1717 = load <4 x double>, ptr %i.aws, align 8, !tbaa !9
  %wide.load1718 = load <4 x double>, ptr %i.awt, align 8, !tbaa !9
  %gep2059 = getelementptr [8 x i8], ptr %invariant.gep2058, i64 %index1714 ; 4 uses
  %i.awu = getelementptr i8, ptr %gep2059, i64 32
  %i.awv = getelementptr i8, ptr %gep2059, i64 64
  %i.aww = getelementptr i8, ptr %gep2059, i64 96
  store <4 x double> %wide.load1715, ptr %gep2059, align 8, !tbaa !9
  store <4 x double> %wide.load1716, ptr %i.awu, align 8, !tbaa !9
  store <4 x double> %wide.load1717, ptr %i.awv, align 8, !tbaa !9
  store <4 x double> %wide.load1718, ptr %i.aww, align 8, !tbaa !9
  %index.next1719 = add nuw i64 %index1714, 16    ; 2 uses
  %i.awx = icmp eq i64 %index.next1719, %n.vec1712
  br i1 %i.awx, label %middle.block1720, label %vector.body1713, !llvm.loop !104

middle.block1720:                                 ; preds = %vector.body1713
  %cmp.n1721 = icmp eq i64 %i.atn, %n.vec1712
  br i1 %cmp.n1721, label %._crit_edge636, label %vec.epilog.iter.check1726

vec.epilog.iter.check1726:                        ; preds = %middle.block1720
  %min.epilog.iters.check1727 = icmp eq i64 %i.awo, 0
  br i1 %min.epilog.iters.check1727, label %.lr.ph635.preheader, label %vec.epilog.ph1728, !prof !15

vec.epilog.ph1728:                                ; preds = %vector.main.loop.iter.check1709, %vec.epilog.iter.check1726
  %vec.epilog.resume.val1722 = phi i64 [ %n.vec1712, %vec.epilog.iter.check1726 ], [ 0, %vector.main.loop.iter.check1709 ]
  %n.vec1729 = and i64 %i.atn, 8589934588         ; 4 uses
  %i.awy = add nsw i64 %n.vec1729, %i.atp
  %i.awz = add nsw i64 %n.vec1729, %i.awh         ; 2 uses
  %invariant.gep2060 = getelementptr [8 x i8], ptr %3, i64 %i.awh
  %invariant.gep2062 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.atp
  br label %vec.epilog.vector.body1730

vec.epilog.vector.body1730:                       ; preds = %vec.epilog.vector.body1730, %vec.epilog.ph1728
  %index1731 = phi i64 [ %vec.epilog.resume.val1722, %vec.epilog.ph1728 ], [ %index.next1733, %vec.epilog.vector.body1730 ] ; 3 uses
  %gep2061 = getelementptr [8 x i8], ptr %invariant.gep2060, i64 %index1731
  %wide.load1732 = load <4 x double>, ptr %gep2061, align 8, !tbaa !9
  %gep2063 = getelementptr [8 x i8], ptr %invariant.gep2062, i64 %index1731
  store <4 x double> %wide.load1732, ptr %gep2063, align 8, !tbaa !9
  %index.next1733 = add nuw i64 %index1731, 4     ; 2 uses
  %i.axa = icmp eq i64 %index.next1733, %n.vec1729
  br i1 %i.axa, label %vec.epilog.middle.block1734, label %vec.epilog.vector.body1730, !llvm.loop !105

vec.epilog.middle.block1734:                      ; preds = %vec.epilog.vector.body1730
  %cmp.n1735 = icmp eq i64 %i.atn, %n.vec1729
  br i1 %cmp.n1735, label %._crit_edge636, label %.lr.ph635.preheader

.lr.ph635.preheader:                              ; preds = %vector.memcheck1706, %iter.check1724, %vec.epilog.iter.check1726, %vec.epilog.middle.block1734
  %indvars.iv947.ph = phi i64 [ %i.atp, %iter.check1724 ], [ %i.atp, %vector.memcheck1706 ], [ %i.awp, %vec.epilog.iter.check1726 ], [ %i.awy, %vec.epilog.middle.block1734 ] ; 3 uses
  %indvars.iv943.ph = phi i64 [ %i.awh, %iter.check1724 ], [ %i.awh, %vector.memcheck1706 ], [ %i.awq, %vec.epilog.iter.check1726 ], [ %i.awz, %vec.epilog.middle.block1734 ] ; 2 uses
  %i.axb = trunc i64 %indvars.iv947.ph to i32     ; 2 uses
  %i.axc = sub i32 %i.i, %i.axb
  %xtraiter1933 = and i32 %i.axc, 7               ; 2 uses
  %lcmp.mod1934.not = icmp eq i32 %xtraiter1933, 0
  br i1 %lcmp.mod1934.not, label %.lr.ph635.prol.loopexit, label %.lr.ph635.prol

.lr.ph635.prol:                                   ; preds = %.lr.ph635.preheader, %.lr.ph635.prol
  %indvars.iv947.prol = phi i64 [ %indvars.iv.next948.prol, %.lr.ph635.prol ], [ %indvars.iv947.ph, %.lr.ph635.preheader ] ; 2 uses
  %indvars.iv943.prol = phi i64 [ %indvars.iv.next944.prol, %.lr.ph635.prol ], [ %indvars.iv943.ph, %.lr.ph635.preheader ] ; 2 uses
  %prol.iter1935 = phi i32 [ %prol.iter1935.next, %.lr.ph635.prol ], [ 0, %.lr.ph635.preheader ]
  %i.axd = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv943.prol
  %i.axe = load double, ptr %i.axd, align 8, !tbaa !9
  %i.axf = mul nsw i64 %indvars.iv947.prol, %i.ata
  %gep1038.prol = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axf
  store double %i.axe, ptr %gep1038.prol, align 8, !tbaa !9
  %indvars.iv.next944.prol = add nsw i64 %indvars.iv943.prol, 1 ; 3 uses
  %indvars.iv.next948.prol = add nsw i64 %indvars.iv947.prol, 1 ; 2 uses
  %prol.iter1935.next = add i32 %prol.iter1935, 1 ; 2 uses
  %prol.iter1935.cmp.not = icmp eq i32 %prol.iter1935.next, %xtraiter1933
  br i1 %prol.iter1935.cmp.not, label %.lr.ph635.prol.loopexit, label %.lr.ph635.prol, !llvm.loop !106

.lr.ph635.prol.loopexit:                          ; preds = %.lr.ph635.prol, %.lr.ph635.preheader
  %indvars.iv.next944.lcssa.unr = phi i64 [ poison, %.lr.ph635.preheader ], [ %indvars.iv.next944.prol, %.lr.ph635.prol ]
  %indvars.iv947.unr = phi i64 [ %indvars.iv947.ph, %.lr.ph635.preheader ], [ %indvars.iv.next948.prol, %.lr.ph635.prol ]
  %indvars.iv943.unr = phi i64 [ %indvars.iv943.ph, %.lr.ph635.preheader ], [ %indvars.iv.next944.prol, %.lr.ph635.prol ]
  %i.axg = sub i32 %i.axb, %i.i
  %i.axh = icmp ugt i32 %i.axg, -8
  br i1 %i.axh, label %._crit_edge636, label %.lr.ph635

.lr.ph635:                                        ; preds = %.lr.ph635.prol.loopexit, %.lr.ph635
  %indvars.iv947 = phi i64 [ %indvars.iv.next948.7, %.lr.ph635 ], [ %indvars.iv947.unr, %.lr.ph635.prol.loopexit ] ; 9 uses
  %indvars.iv943 = phi i64 [ %indvars.iv.next944.7, %.lr.ph635 ], [ %indvars.iv943.unr, %.lr.ph635.prol.loopexit ] ; 9 uses
  %i.axi = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv943
  %i.axj = load double, ptr %i.axi, align 8, !tbaa !9
  %i.axk = mul nsw i64 %indvars.iv947, %i.ata
  %gep1038 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axk
  store double %i.axj, ptr %gep1038, align 8, !tbaa !9
  %indvars.iv.next948 = add nsw i64 %indvars.iv947, 1
  %i.axl = getelementptr [8 x i8], ptr %3, i64 %indvars.iv943
  %i.axm = getelementptr i8, ptr %i.axl, i64 8
  %i.axn = load double, ptr %i.axm, align 8, !tbaa !9
  %i.axo = mul nsw i64 %indvars.iv.next948, %i.ata
  %gep1038.1 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axo
  store double %i.axn, ptr %gep1038.1, align 8, !tbaa !9
  %indvars.iv.next948.1 = add nsw i64 %indvars.iv947, 2
  %i.axp = getelementptr [8 x i8], ptr %3, i64 %indvars.iv943
  %i.axq = getelementptr i8, ptr %i.axp, i64 16
  %i.axr = load double, ptr %i.axq, align 8, !tbaa !9
  %i.axs = mul nsw i64 %indvars.iv.next948.1, %i.ata
  %gep1038.2 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axs
  store double %i.axr, ptr %gep1038.2, align 8, !tbaa !9
  %indvars.iv.next948.2 = add nsw i64 %indvars.iv947, 3
  %i.axt = getelementptr [8 x i8], ptr %3, i64 %indvars.iv943
  %i.axu = getelementptr i8, ptr %i.axt, i64 24
  %i.axv = load double, ptr %i.axu, align 8, !tbaa !9
  %i.axw = mul nsw i64 %indvars.iv.next948.2, %i.ata
  %gep1038.3 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axw
  store double %i.axv, ptr %gep1038.3, align 8, !tbaa !9
  %indvars.iv.next948.3 = add nsw i64 %indvars.iv947, 4
  %i.axx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv943
  %i.axy = getelementptr i8, ptr %i.axx, i64 32
  %i.axz = load double, ptr %i.axy, align 8, !tbaa !9
  %i.aya = mul nsw i64 %indvars.iv.next948.3, %i.ata
  %gep1038.4 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.aya
  store double %i.axz, ptr %gep1038.4, align 8, !tbaa !9
  %indvars.iv.next948.4 = add nsw i64 %indvars.iv947, 5
  %i.ayb = getelementptr [8 x i8], ptr %3, i64 %indvars.iv943
  %i.ayc = getelementptr i8, ptr %i.ayb, i64 40
  %i.ayd = load double, ptr %i.ayc, align 8, !tbaa !9
  %i.aye = mul nsw i64 %indvars.iv.next948.4, %i.ata
  %gep1038.5 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.aye
  store double %i.ayd, ptr %gep1038.5, align 8, !tbaa !9
  %indvars.iv.next948.5 = add nsw i64 %indvars.iv947, 6
  %i.ayf = getelementptr [8 x i8], ptr %3, i64 %indvars.iv943
  %i.ayg = getelementptr i8, ptr %i.ayf, i64 48
  %i.ayh = load double, ptr %i.ayg, align 8, !tbaa !9
  %i.ayi = mul nsw i64 %indvars.iv.next948.5, %i.ata
  %gep1038.6 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.ayi
  store double %i.ayh, ptr %gep1038.6, align 8, !tbaa !9
  %indvars.iv.next948.6 = add nsw i64 %indvars.iv947, 7
  %i.ayj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv943
  %i.ayk = getelementptr i8, ptr %i.ayj, i64 56
  %i.ayl = load double, ptr %i.ayk, align 8, !tbaa !9
  %i.aym = mul nsw i64 %indvars.iv.next948.6, %i.ata
  %gep1038.7 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.aym
  store double %i.ayl, ptr %gep1038.7, align 8, !tbaa !9
  %indvars.iv.next944.7 = add nsw i64 %indvars.iv943, 8 ; 2 uses
  %indvars.iv.next948.7 = add nsw i64 %indvars.iv947, 8 ; 2 uses
  %lftr.wideiv952.7 = trunc i64 %indvars.iv.next948.7 to i32
  %exitcond953.not.7 = icmp eq i32 %i.i, %lftr.wideiv952.7
  br i1 %exitcond953.not.7, label %._crit_edge636, label %.lr.ph635, !llvm.loop !107

._crit_edge636:                                   ; preds = %.lr.ph635.prol.loopexit, %.lr.ph635, %middle.block1720, %vec.epilog.middle.block1734, %.loopexit1810
  %.32.lcssa.in = phi i64 [ %indvars.iv.next931.lcssa, %.loopexit1810 ], [ %i.awz, %vec.epilog.middle.block1734 ], [ %i.awq, %middle.block1720 ], [ %indvars.iv.next944.lcssa.unr, %.lr.ph635.prol.loopexit ], [ %indvars.iv.next944.7, %.lr.ph635 ] ; 2 uses
  %indvars.iv.next957 = add nuw nsw i64 %indvars.iv956, 1 ; 2 uses
  %indvars.iv.next955 = add nuw nsw i64 %indvars.iv954, 1
  %indvars.iv.next946 = add nuw i32 %indvars.iv945, 1
  %exitcond962.not = icmp eq i64 %indvars.iv.next957, %wide.trip.count961
  br i1 %exitcond962.not, label %._crit_edge641.loopexit, label %iter.check1763, !llvm.loop !108

._crit_edge641.loopexit:                          ; preds = %._crit_edge636
  %sext984 = shl i64 %.32.lcssa.in, 32
  %i.ayn = ashr exact i64 %sext984, 32
  br label %iter.check1796

iter.check1796:                                   ; preds = %._crit_edge641.loopexit, %.split627.us
  %.11387.lcssa = phi i32 [ 0, %.split627.us ], [ %i.atd, %._crit_edge641.loopexit ] ; 4 uses
  %.30.lcssa = phi i64 [ %indvars.iv.next920.lcssa, %.split627.us ], [ %i.ayn, %._crit_edge641.loopexit ] ; 7 uses
  %i.ayo = mul nsw i32 %.11387.lcssa, %i.d
  %i.ayp = sext i32 %i.ayo to i64                 ; 2 uses
  %i.ayq = add nsw i32 %.11387.lcssa, 1
  %wide.trip.count971 = zext i32 %i.ayq to i64    ; 8 uses
  %invariant.gep1039 = getelementptr [8 x i8], ptr %4, i64 %i.ayp ; 11 uses
  %min.iters.check1781 = icmp ult i32 %.11387.lcssa, 3
  br i1 %min.iters.check1781, label %vec.epilog.scalar.ph1797.preheader, label %vector.memcheck1779

vector.memcheck1779:                              ; preds = %iter.check1796
  %i.ayr = shl nsw i64 %i.ayp, 3
  %i.ays = add i64 %i.ayr, %i.b
  %i.ayt = shl i64 %.30.lcssa, 3
  %i.ayu = add i64 %i.ayt, %i.a
  %i.ayv = sub i64 %i.ayu, %i.ays
  %diff.check1780 = icmp ugt i64 %i.ayv, -128
  br i1 %diff.check1780, label %vec.epilog.scalar.ph1797.preheader, label %vector.main.loop.iter.check1782

vector.main.loop.iter.check1782:                  ; preds = %vector.memcheck1779
  %min.iters.check1783 = icmp ult i32 %.11387.lcssa, 15
  br i1 %min.iters.check1783, label %vec.epilog.ph1800, label %vector.ph1784

vector.ph1784:                                    ; preds = %vector.main.loop.iter.check1782
  %i.ayw = and i64 %wide.trip.count971, 12
  %n.vec1785 = and i64 %wide.trip.count971, 2147483632 ; 5 uses
  %i.ayx = add i64 %.30.lcssa, %n.vec1785
  %i.ayy = getelementptr [8 x i8], ptr %3, i64 %.30.lcssa
  br label %vector.body1786

vector.body1786:                                  ; preds = %vector.body1786, %vector.ph1784
  %index1787 = phi i64 [ 0, %vector.ph1784 ], [ %index.next1792, %vector.body1786 ] ; 3 uses
  %i.ayz = getelementptr [8 x i8], ptr %i.ayy, i64 %index1787 ; 4 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 32
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayz, i64 64
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayz, i64 96
  %wide.load1788 = load <4 x double>, ptr %i.ayz, align 8, !tbaa !9
  %wide.load1789 = load <4 x double>, ptr %i.aza, align 8, !tbaa !9
  %wide.load1790 = load <4 x double>, ptr %i.azb, align 8, !tbaa !9
  %wide.load1791 = load <4 x double>, ptr %i.azc, align 8, !tbaa !9
  %i.azd = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %index1787 ; 4 uses
  %i.aze = getelementptr i8, ptr %i.azd, i64 32
  %i.azf = getelementptr i8, ptr %i.azd, i64 64
  %i.azg = getelementptr i8, ptr %i.azd, i64 96
  store <4 x double> %wide.load1788, ptr %i.azd, align 8, !tbaa !9
  store <4 x double> %wide.load1789, ptr %i.aze, align 8, !tbaa !9
  store <4 x double> %wide.load1790, ptr %i.azf, align 8, !tbaa !9
  store <4 x double> %wide.load1791, ptr %i.azg, align 8, !tbaa !9
  %index.next1792 = add nuw i64 %index1787, 16    ; 2 uses
  %i.azh = icmp eq i64 %index.next1792, %n.vec1785
  br i1 %i.azh, label %middle.block1793, label %vector.body1786, !llvm.loop !109

middle.block1793:                                 ; preds = %vector.body1786
  %cmp.n1794 = icmp eq i64 %n.vec1785, %wide.trip.count971
  br i1 %cmp.n1794, label %.loopexit, label %vec.epilog.iter.check1798

vec.epilog.iter.check1798:                        ; preds = %middle.block1793
  %min.epilog.iters.check1799 = icmp eq i64 %i.ayw, 0
  br i1 %min.epilog.iters.check1799, label %vec.epilog.scalar.ph1797.preheader, label %vec.epilog.ph1800, !prof !15

vec.epilog.ph1800:                                ; preds = %vector.main.loop.iter.check1782, %vec.epilog.iter.check1798
  %vec.epilog.resume.val1795 = phi i64 [ %n.vec1785, %vec.epilog.iter.check1798 ], [ 0, %vector.main.loop.iter.check1782 ]
  %n.vec1801 = and i64 %wide.trip.count971, 2147483644 ; 4 uses
  %i.azi = add i64 %.30.lcssa, %n.vec1801
  %i.azj = getelementptr [8 x i8], ptr %3, i64 %.30.lcssa
  br label %vec.epilog.vector.body1802

vec.epilog.vector.body1802:                       ; preds = %vec.epilog.vector.body1802, %vec.epilog.ph1800
  %index1803 = phi i64 [ %vec.epilog.resume.val1795, %vec.epilog.ph1800 ], [ %index.next1805, %vec.epilog.vector.body1802 ] ; 3 uses
  %i.azk = getelementptr [8 x i8], ptr %i.azj, i64 %index1803
  %wide.load1804 = load <4 x double>, ptr %i.azk, align 8, !tbaa !9
  %i.azl = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %index1803
  store <4 x double> %wide.load1804, ptr %i.azl, align 8, !tbaa !9
  %index.next1805 = add nuw i64 %index1803, 4     ; 2 uses
  %i.azm = icmp eq i64 %index.next1805, %n.vec1801
  br i1 %i.azm, label %vec.epilog.middle.block1806, label %vec.epilog.vector.body1802, !llvm.loop !110

vec.epilog.middle.block1806:                      ; preds = %vec.epilog.vector.body1802
  %cmp.n1807 = icmp eq i64 %n.vec1801, %wide.trip.count971
  br i1 %cmp.n1807, label %.loopexit, label %vec.epilog.scalar.ph1797.preheader

vec.epilog.scalar.ph1797.preheader:               ; preds = %vector.memcheck1779, %iter.check1796, %vec.epilog.iter.check1798, %vec.epilog.middle.block1806
  %indvars.iv966.ph = phi i64 [ 0, %iter.check1796 ], [ 0, %vector.memcheck1779 ], [ %n.vec1785, %vec.epilog.iter.check1798 ], [ %n.vec1801, %vec.epilog.middle.block1806 ] ; 4 uses
  %indvars.iv964.ph = phi i64 [ %.30.lcssa, %iter.check1796 ], [ %.30.lcssa, %vector.memcheck1779 ], [ %i.ayx, %vec.epilog.iter.check1798 ], [ %i.azi, %vec.epilog.middle.block1806 ] ; 2 uses
  %i.azn = sub nsw i64 %wide.trip.count971, %indvars.iv966.ph
  %xtraiter1936 = and i64 %i.azn, 7               ; 2 uses
  %lcmp.mod1937.not = icmp eq i64 %xtraiter1936, 0
  br i1 %lcmp.mod1937.not, label %vec.epilog.scalar.ph1797.prol.loopexit, label %vec.epilog.scalar.ph1797.prol

vec.epilog.scalar.ph1797.prol:                    ; preds = %vec.epilog.scalar.ph1797.preheader, %vec.epilog.scalar.ph1797.prol
  %indvars.iv966.prol = phi i64 [ %indvars.iv.next967.prol, %vec.epilog.scalar.ph1797.prol ], [ %indvars.iv966.ph, %vec.epilog.scalar.ph1797.preheader ] ; 2 uses
  %indvars.iv964.prol = phi i64 [ %indvars.iv.next965.prol, %vec.epilog.scalar.ph1797.prol ], [ %indvars.iv964.ph, %vec.epilog.scalar.ph1797.preheader ] ; 2 uses
  %prol.iter1938 = phi i64 [ %prol.iter1938.next, %vec.epilog.scalar.ph1797.prol ], [ 0, %vec.epilog.scalar.ph1797.preheader ]
  %i.azo = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv964.prol
  %i.azp = load double, ptr %i.azo, align 8, !tbaa !9
  %gep1040.prol = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966.prol
  store double %i.azp, ptr %gep1040.prol, align 8, !tbaa !9
  %indvars.iv.next965.prol = add nsw i64 %indvars.iv964.prol, 1 ; 2 uses
  %indvars.iv.next967.prol = add nuw nsw i64 %indvars.iv966.prol, 1 ; 2 uses
  %prol.iter1938.next = add i64 %prol.iter1938, 1 ; 2 uses
  %prol.iter1938.cmp.not = icmp eq i64 %prol.iter1938.next, %xtraiter1936
  br i1 %prol.iter1938.cmp.not, label %vec.epilog.scalar.ph1797.prol.loopexit, label %vec.epilog.scalar.ph1797.prol, !llvm.loop !111

vec.epilog.scalar.ph1797.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1797.prol, %vec.epilog.scalar.ph1797.preheader
  %indvars.iv966.unr = phi i64 [ %indvars.iv966.ph, %vec.epilog.scalar.ph1797.preheader ], [ %indvars.iv.next967.prol, %vec.epilog.scalar.ph1797.prol ]
  %indvars.iv964.unr = phi i64 [ %indvars.iv964.ph, %vec.epilog.scalar.ph1797.preheader ], [ %indvars.iv.next965.prol, %vec.epilog.scalar.ph1797.prol ]
  %i.azq = sub nsw i64 %indvars.iv966.ph, %wide.trip.count971
  %i.azr = icmp ugt i64 %i.azq, -8
  br i1 %i.azr, label %.loopexit, label %vec.epilog.scalar.ph1797

vec.epilog.scalar.ph1797:                         ; preds = %vec.epilog.scalar.ph1797.prol.loopexit, %vec.epilog.scalar.ph1797
  %indvars.iv966 = phi i64 [ %indvars.iv.next967.7, %vec.epilog.scalar.ph1797 ], [ %indvars.iv966.unr, %vec.epilog.scalar.ph1797.prol.loopexit ] ; 9 uses
  %indvars.iv964 = phi i64 [ %indvars.iv.next965.7, %vec.epilog.scalar.ph1797 ], [ %indvars.iv964.unr, %vec.epilog.scalar.ph1797.prol.loopexit ] ; 9 uses
  %i.azs = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv964
  %i.azt = load double, ptr %i.azs, align 8, !tbaa !9
  %gep1040 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  store double %i.azt, ptr %gep1040, align 8, !tbaa !9
  %i.azu = getelementptr [8 x i8], ptr %3, i64 %indvars.iv964
  %i.azv = getelementptr i8, ptr %i.azu, i64 8
  %i.azw = load double, ptr %i.azv, align 8, !tbaa !9
  %i.azx = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.1 = getelementptr i8, ptr %i.azx, i64 8
  store double %i.azw, ptr %gep1040.1, align 8, !tbaa !9
  %i.azy = getelementptr [8 x i8], ptr %3, i64 %indvars.iv964
  %i.azz = getelementptr i8, ptr %i.azy, i64 16
  %i.baa = load double, ptr %i.azz, align 8, !tbaa !9
  %i.bab = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.2 = getelementptr i8, ptr %i.bab, i64 16
  store double %i.baa, ptr %gep1040.2, align 8, !tbaa !9
  %i.bac = getelementptr [8 x i8], ptr %3, i64 %indvars.iv964
  %i.bad = getelementptr i8, ptr %i.bac, i64 24
  %i.bae = load double, ptr %i.bad, align 8, !tbaa !9
  %i.baf = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.3 = getelementptr i8, ptr %i.baf, i64 24
  store double %i.bae, ptr %gep1040.3, align 8, !tbaa !9
  %i.bag = getelementptr [8 x i8], ptr %3, i64 %indvars.iv964
  %i.bah = getelementptr i8, ptr %i.bag, i64 32
  %i.bai = load double, ptr %i.bah, align 8, !tbaa !9
  %i.baj = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.4 = getelementptr i8, ptr %i.baj, i64 32
  store double %i.bai, ptr %gep1040.4, align 8, !tbaa !9
  %i.bak = getelementptr [8 x i8], ptr %3, i64 %indvars.iv964
  %i.bal = getelementptr i8, ptr %i.bak, i64 40
  %i.bam = load double, ptr %i.bal, align 8, !tbaa !9
  %i.ban = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.5 = getelementptr i8, ptr %i.ban, i64 40
  store double %i.bam, ptr %gep1040.5, align 8, !tbaa !9
  %i.bao = getelementptr [8 x i8], ptr %3, i64 %indvars.iv964
  %i.bap = getelementptr i8, ptr %i.bao, i64 48
  %i.baq = load double, ptr %i.bap, align 8, !tbaa !9
  %i.bar = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.6 = getelementptr i8, ptr %i.bar, i64 48
  store double %i.baq, ptr %gep1040.6, align 8, !tbaa !9
  %i.bas = getelementptr [8 x i8], ptr %3, i64 %indvars.iv964
  %i.bat = getelementptr i8, ptr %i.bas, i64 56
  %i.bau = load double, ptr %i.bat, align 8, !tbaa !9
  %i.bav = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.7 = getelementptr i8, ptr %i.bav, i64 56
  store double %i.bau, ptr %gep1040.7, align 8, !tbaa !9
  %indvars.iv.next965.7 = add nsw i64 %indvars.iv964, 8
  %indvars.iv.next967.7 = add nuw nsw i64 %indvars.iv966, 8 ; 2 uses
  %exitcond972.not.7 = icmp eq i64 %indvars.iv.next967.7, %wide.trip.count971
  br i1 %exitcond972.not.7, label %.loopexit, label %vec.epilog.scalar.ph1797, !llvm.loop !112

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
!64 = distinct !{!64, !12, !13, !14}
!65 = distinct !{!65, !12, !13, !14}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !12, !13}
!68 = distinct !{!68, !12, !13}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12, !13, !14}
!71 = distinct !{!71, !12, !13, !14}
!72 = distinct !{!72, !18}
!73 = distinct !{!73, !12, !13}
!74 = distinct !{!74, !12, !13, !14}
!75 = distinct !{!75, !12, !13, !14}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !12, !13}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12, !13, !14}
!80 = distinct !{!80, !12, !13, !14}
!81 = distinct !{!81, !12, !13}
!82 = distinct !{!82, !12, !13, !14}
!83 = distinct !{!83, !12, !13, !14}
!84 = distinct !{!84, !18}
!85 = distinct !{!85, !12, !13}
!86 = distinct !{!86, !12, !13, !14}
!87 = distinct !{!87, !12, !13, !14}
!88 = distinct !{!88, !18}
!89 = distinct !{!89, !12, !13}
!90 = distinct !{!90, !12}
!91 = distinct !{!91, !12, !13, !14}
!92 = distinct !{!92, !12, !13, !14}
!93 = distinct !{!93, !18}
!94 = distinct !{!94, !12, !13}
!95 = distinct !{!95, !12}
!96 = distinct !{!96, !12, !13, !14}
!97 = distinct !{!97, !12, !13, !14}
!98 = distinct !{!98, !12, !13}
!99 = distinct !{!99, !12}
!100 = distinct !{!100, !12, !13, !14}
!101 = distinct !{!101, !12, !13, !14}
!102 = distinct !{!102, !18}
!103 = distinct !{!103, !12, !13}
!104 = distinct !{!104, !12, !13, !14}
!105 = distinct !{!105, !12, !13, !14}
!106 = distinct !{!106, !18}
!107 = distinct !{!107, !12, !13}
!108 = distinct !{!108, !12}
!109 = distinct !{!109, !12, !13, !14}
!110 = distinct !{!110, !12, !13, !14}
!111 = distinct !{!111, !18}
!112 = distinct !{!112, !12, !13}
end_hunk_0
