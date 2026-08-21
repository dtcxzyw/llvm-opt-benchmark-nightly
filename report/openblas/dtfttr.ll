Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtfttr?download=true
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@dtfttr_:bb.a
  %indvars.iv.next787.lcssa = phi i64 [ %i.vn, %vec.epilog.middle.block1368 ], [ %i.uw, %middle.block1350 ], [ %indvars.iv.next787.lcssa1867.unr, %vec.epilog.scalar.ph1358.prol.loopexit ], [ %indvars.iv.next787.7, %vec.epilog.scalar.ph1358 ]
  %i.xe = add nsw i64 %indvars.iv812, %i.ud       ; 2 uses
  %.not439.not553 = icmp slt i64 %i.xe, %i.ue
  br i1 %.not439.not553, label %iter.check1318, label %._crit_edge558

iter.check1318:                                   ; preds = %.loopexit1813
  %i.xf = sext i32 %indvars.iv797.lcssa to i64    ; 7 uses
  %invariant.gep1015 = getelementptr [8 x i8], ptr %4, i64 %i.xe ; 11 uses
  %min.iters.check1302 = icmp ugt i32 %i.uj, 2
  %or.cond1821 = select i1 %min.iters.check1302, i1 %ident.check1299.not, i1 false
  br i1 %or.cond1821, label %vector.memcheck1300, label %.lr.ph557.preheader

vector.memcheck1300:                              ; preds = %iter.check1318
  %i.xg = add i64 %indvars.iv812, %i.um
  %i.xh = shl nsw i64 %i.xf, 3
  %i.xi = add i64 %i.xg, %i.ud
  %i.xj = shl i64 %i.xi, 3
  %i.xk = add i64 %i.xj, %i.b
  %i.xl = add i64 %i.xh, %i.a
  %i.xm = sub i64 %i.xl, %i.xk
  %diff.check1301 = icmp ugt i64 %i.xm, -128
  br i1 %diff.check1301, label %.lr.ph557.preheader, label %vector.main.loop.iter.check1303

vector.main.loop.iter.check1303:                  ; preds = %vector.memcheck1300
  %min.iters.check1304 = icmp ult i32 %i.uj, 15
  br i1 %min.iters.check1304, label %vec.epilog.ph1322, label %vector.ph1305

vector.ph1305:                                    ; preds = %vector.main.loop.iter.check1303
  %i.xn = and i64 %i.ul, 12
  %n.vec1306 = and i64 %i.ul, 8589934576          ; 5 uses
  %i.xo = add nsw i64 %n.vec1306, %i.un
  %i.xp = add nsw i64 %n.vec1306, %i.xf           ; 2 uses
  %invariant.gep2012 = getelementptr [8 x i8], ptr %3, i64 %i.xf
  %invariant.gep2014 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.un
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1305
  %index1308 = phi i64 [ 0, %vector.ph1305 ], [ %index.next1313, %vector.body1307 ] ; 3 uses
  %gep2013 = getelementptr [8 x i8], ptr %invariant.gep2012, i64 %index1308 ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %gep2013, i64 32
  %i.xr = getelementptr inbounds nuw i8, ptr %gep2013, i64 64
  %i.xs = getelementptr inbounds nuw i8, ptr %gep2013, i64 96
  %wide.load1309 = load <4 x double>, ptr %gep2013, align 8, !tbaa !9
  %wide.load1310 = load <4 x double>, ptr %i.xq, align 8, !tbaa !9
  %wide.load1311 = load <4 x double>, ptr %i.xr, align 8, !tbaa !9
  %wide.load1312 = load <4 x double>, ptr %i.xs, align 8, !tbaa !9
  %gep2015 = getelementptr [8 x i8], ptr %invariant.gep2014, i64 %index1308 ; 4 uses
  %i.xt = getelementptr i8, ptr %gep2015, i64 32
  %i.xu = getelementptr i8, ptr %gep2015, i64 64
  %i.xv = getelementptr i8, ptr %gep2015, i64 96
  store <4 x double> %wide.load1309, ptr %gep2015, align 8, !tbaa !9
  store <4 x double> %wide.load1310, ptr %i.xt, align 8, !tbaa !9
  store <4 x double> %wide.load1311, ptr %i.xu, align 8, !tbaa !9
  store <4 x double> %wide.load1312, ptr %i.xv, align 8, !tbaa !9
  %index.next1313 = add nuw i64 %index1308, 16    ; 2 uses
  %i.xw = icmp eq i64 %index.next1313, %n.vec1306
  br i1 %i.xw, label %middle.block1314, label %vector.body1307, !llvm.loop !57

middle.block1314:                                 ; preds = %vector.body1307
  %cmp.n1315 = icmp eq i64 %i.ul, %n.vec1306
  br i1 %cmp.n1315, label %._crit_edge558, label %vec.epilog.iter.check1320

vec.epilog.iter.check1320:                        ; preds = %middle.block1314
  %min.epilog.iters.check1321 = icmp eq i64 %i.xn, 0
  br i1 %min.epilog.iters.check1321, label %.lr.ph557.preheader, label %vec.epilog.ph1322, !prof !15

vec.epilog.ph1322:                                ; preds = %vector.main.loop.iter.check1303, %vec.epilog.iter.check1320
  %vec.epilog.resume.val1316 = phi i64 [ %n.vec1306, %vec.epilog.iter.check1320 ], [ 0, %vector.main.loop.iter.check1303 ]
  %n.vec1323 = and i64 %i.ul, 8589934588          ; 4 uses
  %i.xx = add nsw i64 %n.vec1323, %i.un
  %i.xy = add nsw i64 %n.vec1323, %i.xf           ; 2 uses
  %invariant.gep2016 = getelementptr [8 x i8], ptr %3, i64 %i.xf
  %invariant.gep2018 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.un
  br label %vec.epilog.vector.body1324

vec.epilog.vector.body1324:                       ; preds = %vec.epilog.vector.body1324, %vec.epilog.ph1322
  %index1325 = phi i64 [ %vec.epilog.resume.val1316, %vec.epilog.ph1322 ], [ %index.next1327, %vec.epilog.vector.body1324 ] ; 3 uses
  %gep2017 = getelementptr [8 x i8], ptr %invariant.gep2016, i64 %index1325
  %wide.load1326 = load <4 x double>, ptr %gep2017, align 8, !tbaa !9
  %gep2019 = getelementptr [8 x i8], ptr %invariant.gep2018, i64 %index1325
  store <4 x double> %wide.load1326, ptr %gep2019, align 8, !tbaa !9
  %index.next1327 = add nuw i64 %index1325, 4     ; 2 uses
  %i.xz = icmp eq i64 %index.next1327, %n.vec1323
  br i1 %i.xz, label %vec.epilog.middle.block1328, label %vec.epilog.vector.body1324, !llvm.loop !58

vec.epilog.middle.block1328:                      ; preds = %vec.epilog.vector.body1324
  %cmp.n1329 = icmp eq i64 %i.ul, %n.vec1323
  br i1 %cmp.n1329, label %._crit_edge558, label %.lr.ph557.preheader

.lr.ph557.preheader:                              ; preds = %vector.memcheck1300, %iter.check1318, %vec.epilog.iter.check1320, %vec.epilog.middle.block1328
  %indvars.iv803.ph = phi i64 [ %i.un, %iter.check1318 ], [ %i.un, %vector.memcheck1300 ], [ %i.xo, %vec.epilog.iter.check1320 ], [ %i.xx, %vec.epilog.middle.block1328 ] ; 3 uses
  %indvars.iv799.ph = phi i64 [ %i.xf, %iter.check1318 ], [ %i.xf, %vector.memcheck1300 ], [ %i.xp, %vec.epilog.iter.check1320 ], [ %i.xy, %vec.epilog.middle.block1328 ] ; 2 uses
  %i.ya = trunc i64 %indvars.iv803.ph to i32      ; 2 uses
  %i.yb = sub i32 %i.i, %i.ya
  %xtraiter1909 = and i32 %i.yb, 7                ; 2 uses
  %lcmp.mod1910.not = icmp eq i32 %xtraiter1909, 0
  br i1 %lcmp.mod1910.not, label %.lr.ph557.prol.loopexit, label %.lr.ph557.prol

.lr.ph557.prol:                                   ; preds = %.lr.ph557.preheader, %.lr.ph557.prol
  %indvars.iv803.prol = phi i64 [ %indvars.iv.next804.prol, %.lr.ph557.prol ], [ %indvars.iv803.ph, %.lr.ph557.preheader ] ; 2 uses
  %indvars.iv799.prol = phi i64 [ %indvars.iv.next800.prol, %.lr.ph557.prol ], [ %indvars.iv799.ph, %.lr.ph557.preheader ] ; 2 uses
  %prol.iter1911 = phi i32 [ %prol.iter1911.next, %.lr.ph557.prol ], [ 0, %.lr.ph557.preheader ]
  %i.yc = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv799.prol
  %i.yd = load double, ptr %i.yc, align 8, !tbaa !9
  %i.ye = mul nsw i64 %indvars.iv803.prol, %i.uc
  %gep1016.prol = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.ye
  store double %i.yd, ptr %gep1016.prol, align 8, !tbaa !9
  %indvars.iv.next800.prol = add nsw i64 %indvars.iv799.prol, 1 ; 3 uses
  %indvars.iv.next804.prol = add nsw i64 %indvars.iv803.prol, 1 ; 2 uses
  %prol.iter1911.next = add i32 %prol.iter1911, 1 ; 2 uses
  %prol.iter1911.cmp.not = icmp eq i32 %prol.iter1911.next, %xtraiter1909
  br i1 %prol.iter1911.cmp.not, label %.lr.ph557.prol.loopexit, label %.lr.ph557.prol, !llvm.loop !59

.lr.ph557.prol.loopexit:                          ; preds = %.lr.ph557.prol, %.lr.ph557.preheader
  %indvars.iv.next800.lcssa.unr = phi i64 [ poison, %.lr.ph557.preheader ], [ %indvars.iv.next800.prol, %.lr.ph557.prol ]
  %indvars.iv803.unr = phi i64 [ %indvars.iv803.ph, %.lr.ph557.preheader ], [ %indvars.iv.next804.prol, %.lr.ph557.prol ]
  %indvars.iv799.unr = phi i64 [ %indvars.iv799.ph, %.lr.ph557.preheader ], [ %indvars.iv.next800.prol, %.lr.ph557.prol ]
  %i.yf = sub i32 %i.ya, %i.i
  %i.yg = icmp ugt i32 %i.yf, -8
  br i1 %i.yg, label %._crit_edge558, label %.lr.ph557

.lr.ph557:                                        ; preds = %.lr.ph557.prol.loopexit, %.lr.ph557
  %indvars.iv803 = phi i64 [ %indvars.iv.next804.7, %.lr.ph557 ], [ %indvars.iv803.unr, %.lr.ph557.prol.loopexit ] ; 9 uses
  %indvars.iv799 = phi i64 [ %indvars.iv.next800.7, %.lr.ph557 ], [ %indvars.iv799.unr, %.lr.ph557.prol.loopexit ] ; 9 uses
  %i.yh = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv799
  %i.yi = load double, ptr %i.yh, align 8, !tbaa !9
  %i.yj = mul nsw i64 %indvars.iv803, %i.uc
  %gep1016 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yj
  store double %i.yi, ptr %gep1016, align 8, !tbaa !9
  %indvars.iv.next804 = add nsw i64 %indvars.iv803, 1
  %i.yk = getelementptr [8 x i8], ptr %3, i64 %indvars.iv799
  %i.yl = getelementptr i8, ptr %i.yk, i64 8
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !9
  %i.yn = mul nsw i64 %indvars.iv.next804, %i.uc
  %gep1016.1 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yn
  store double %i.ym, ptr %gep1016.1, align 8, !tbaa !9
  %indvars.iv.next804.1 = add nsw i64 %indvars.iv803, 2
  %i.yo = getelementptr [8 x i8], ptr %3, i64 %indvars.iv799
  %i.yp = getelementptr i8, ptr %i.yo, i64 16
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !9
  %i.yr = mul nsw i64 %indvars.iv.next804.1, %i.uc
  %gep1016.2 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yr
  store double %i.yq, ptr %gep1016.2, align 8, !tbaa !9
  %indvars.iv.next804.2 = add nsw i64 %indvars.iv803, 3
  %i.ys = getelementptr [8 x i8], ptr %3, i64 %indvars.iv799
  %i.yt = getelementptr i8, ptr %i.ys, i64 24
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !9
  %i.yv = mul nsw i64 %indvars.iv.next804.2, %i.uc
  %gep1016.3 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yv
  store double %i.yu, ptr %gep1016.3, align 8, !tbaa !9
  %indvars.iv.next804.3 = add nsw i64 %indvars.iv803, 4
  %i.yw = getelementptr [8 x i8], ptr %3, i64 %indvars.iv799
  %i.yx = getelementptr i8, ptr %i.yw, i64 32
  %i.yy = load double, ptr %i.yx, align 8, !tbaa !9
  %i.yz = mul nsw i64 %indvars.iv.next804.3, %i.uc
  %gep1016.4 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yz
  store double %i.yy, ptr %gep1016.4, align 8, !tbaa !9
  %indvars.iv.next804.4 = add nsw i64 %indvars.iv803, 5
  %i.za = getelementptr [8 x i8], ptr %3, i64 %indvars.iv799
  %i.zb = getelementptr i8, ptr %i.za, i64 40
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !9
  %i.zd = mul nsw i64 %indvars.iv.next804.4, %i.uc
  %gep1016.5 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.zd
  store double %i.zc, ptr %gep1016.5, align 8, !tbaa !9
  %indvars.iv.next804.5 = add nsw i64 %indvars.iv803, 6
  %i.ze = getelementptr [8 x i8], ptr %3, i64 %indvars.iv799
  %i.zf = getelementptr i8, ptr %i.ze, i64 48
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !9
  %i.zh = mul nsw i64 %indvars.iv.next804.5, %i.uc
  %gep1016.6 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.zh
  store double %i.zg, ptr %gep1016.6, align 8, !tbaa !9
  %indvars.iv.next804.6 = add nsw i64 %indvars.iv803, 7
  %i.zi = getelementptr [8 x i8], ptr %3, i64 %indvars.iv799
  %i.zj = getelementptr i8, ptr %i.zi, i64 56
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !9
  %i.zl = mul nsw i64 %indvars.iv.next804.6, %i.uc
  %gep1016.7 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.zl
  store double %i.zk, ptr %gep1016.7, align 8, !tbaa !9
  %indvars.iv.next800.7 = add nsw i64 %indvars.iv799, 8 ; 2 uses
  %indvars.iv.next804.7 = add nsw i64 %indvars.iv803, 8 ; 2 uses
  %lftr.wideiv808.7 = trunc i64 %indvars.iv.next804.7 to i32
  %exitcond809.not.7 = icmp eq i32 %i.i, %lftr.wideiv808.7
  br i1 %exitcond809.not.7, label %._crit_edge558, label %.lr.ph557, !llvm.loop !60

._crit_edge558:                                   ; preds = %.lr.ph557.prol.loopexit, %.lr.ph557, %middle.block1314, %vec.epilog.middle.block1328, %.loopexit1813
  %.15.lcssa.in = phi i64 [ %indvars.iv.next787.lcssa, %.loopexit1813 ], [ %i.xy, %vec.epilog.middle.block1328 ], [ %i.xp, %middle.block1314 ], [ %indvars.iv.next800.lcssa.unr, %.lr.ph557.prol.loopexit ], [ %indvars.iv.next800.7, %.lr.ph557 ]
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
  %i.zm = zext nneg i32 %i.i to i64               ; 6 uses
  %i.zn = lshr exact i64 %i.zm, 1                 ; 6 uses
  %i.zo = sext i32 %i.d to i64                    ; 3 uses
  %i.zp = zext nneg i32 %i.i to i64
  %i.zq = zext nneg i32 %i.v to i64
  %wide.trip.count839 = zext nneg i32 %i.v to i64
  %i.zr = shl nsw i64 %i.zo, 3
  %i.zs = add nsw i64 %i.zr, 8
  %ident.check1406.not = icmp eq i32 %i.d, 1
  br label %iter.check1434

iter.check1434:                                   ; preds = %.lr.ph574.preheader, %._crit_edge569
  %indvars.iv829 = phi i64 [ 0, %.lr.ph574.preheader ], [ %indvars.iv.next830, %._crit_edge569 ] ; 16 uses
  %.16573 = phi i32 [ 0, %.lr.ph574.preheader ], [ %.18.lcssa, %._crit_edge569 ] ; 5 uses
  %i.zt = add nuw i64 %indvars.iv829, 1           ; 5 uses
  %i.zu = sub nsw i64 %i.zm, %indvars.iv829       ; 7 uses
  %i.zv = mul i64 %i.zs, %indvars.iv829
  %i.zw = add nuw nsw i64 %indvars.iv829, %i.zq   ; 2 uses
  %i.zx = sext i32 %.16573 to i64                 ; 7 uses
  %invariant.gep1017 = getelementptr [8 x i8], ptr %4, i64 %i.zw ; 3 uses
  %min.iters.check1410 = icmp samesign ugt i64 %indvars.iv829, 2
  %or.cond1822 = select i1 %min.iters.check1410, i1 %ident.check1406.not, i1 false
  br i1 %or.cond1822, label %vector.memcheck1407, label %vec.epilog.scalar.ph1435.preheader

vector.memcheck1407:                              ; preds = %iter.check1434
  %i.zy = shl nsw i64 %i.zx, 3
  %i.zz = add nuw i64 %indvars.iv829, %i.zm
  %i.aaa = shl i64 %i.zz, 3
  %i.aab = add i64 %i.aaa, %i.b
  %i.aac = add i64 %i.zy, %i.a
  %i.aad = sub i64 %i.aac, %i.aab
  %diff.check1408 = icmp ugt i64 %i.aad, -128
  br i1 %diff.check1408, label %vec.epilog.scalar.ph1435.preheader, label %vector.main.loop.iter.check1411

vector.main.loop.iter.check1411:                  ; preds = %vector.memcheck1407
  %min.iters.check1412 = icmp samesign ult i64 %indvars.iv829, 15
  br i1 %min.iters.check1412, label %vec.epilog.ph1438, label %vector.ph1413

vector.ph1413:                                    ; preds = %vector.main.loop.iter.check1411
  %i.aae = and i64 %i.zt, 12
  %n.vec1414 = and i64 %i.zt, -16                 ; 5 uses
  %i.aaf = add i64 %i.zn, %n.vec1414
  %i.aag = add i64 %n.vec1414, %i.zx              ; 2 uses
  %i.aah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.16573, i64 0
  %invariant.gep2020 = getelementptr [8 x i8], ptr %3, i64 %i.zx
  %i.aai = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %i.zn
  br label %vector.body1415

vector.body1415:                                  ; preds = %vector.body1415, %vector.ph1413
  %index1416 = phi i64 [ 0, %vector.ph1413 ], [ %index.next1425, %vector.body1415 ] ; 3 uses
  %vec.phi1417 = phi <4 x i32> [ %i.aah, %vector.ph1413 ], [ %i.aaj, %vector.body1415 ]
  %vec.phi1418 = phi <4 x i32> [ zeroinitializer, %vector.ph1413 ], [ %i.aak, %vector.body1415 ]
  %vec.phi1419 = phi <4 x i32> [ zeroinitializer, %vector.ph1413 ], [ %i.aal, %vector.body1415 ]
  %vec.phi1420 = phi <4 x i32> [ zeroinitializer, %vector.ph1413 ], [ %i.aam, %vector.body1415 ]
  %i.aaj = add <4 x i32> %vec.phi1417, splat (i32 1) ; 2 uses
  %i.aak = add <4 x i32> %vec.phi1418, splat (i32 1) ; 2 uses
  %i.aal = add <4 x i32> %vec.phi1419, splat (i32 1) ; 2 uses
  %i.aam = add <4 x i32> %vec.phi1420, splat (i32 1) ; 2 uses
  %gep2021 = getelementptr [8 x i8], ptr %invariant.gep2020, i64 %index1416 ; 4 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %gep2021, i64 32
  %i.aao = getelementptr inbounds nuw i8, ptr %gep2021, i64 64
  %i.aap = getelementptr inbounds nuw i8, ptr %gep2021, i64 96
  %wide.load1421 = load <4 x double>, ptr %gep2021, align 8, !tbaa !9
  %wide.load1422 = load <4 x double>, ptr %i.aan, align 8, !tbaa !9
  %wide.load1423 = load <4 x double>, ptr %i.aao, align 8, !tbaa !9
  %wide.load1424 = load <4 x double>, ptr %i.aap, align 8, !tbaa !9
  %i.aaq = getelementptr [8 x i8], ptr %i.aai, i64 %index1416 ; 4 uses
  %i.aar = getelementptr i8, ptr %i.aaq, i64 32
  %i.aas = getelementptr i8, ptr %i.aaq, i64 64
  %i.aat = getelementptr i8, ptr %i.aaq, i64 96
  store <4 x double> %wide.load1421, ptr %i.aaq, align 8, !tbaa !9
  store <4 x double> %wide.load1422, ptr %i.aar, align 8, !tbaa !9
  store <4 x double> %wide.load1423, ptr %i.aas, align 8, !tbaa !9
  store <4 x double> %wide.load1424, ptr %i.aat, align 8, !tbaa !9
  %index.next1425 = add nuw i64 %index1416, 16    ; 2 uses
  %i.aau = icmp eq i64 %index.next1425, %n.vec1414
  br i1 %i.aau, label %middle.block1426, label %vector.body1415, !llvm.loop !62

middle.block1426:                                 ; preds = %vector.body1415
  %bin.rdx1427 = add <4 x i32> %i.aak, %i.aaj
  %bin.rdx1428 = add <4 x i32> %i.aal, %bin.rdx1427
  %bin.rdx1429 = add <4 x i32> %i.aam, %bin.rdx1428
  %i.aav = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1429) ; 3 uses
  %cmp.n1430 = icmp eq i64 %i.zt, %n.vec1414
  br i1 %cmp.n1430, label %.preheader474, label %vec.epilog.iter.check1436

vec.epilog.iter.check1436:                        ; preds = %middle.block1426
  %min.epilog.iters.check1437 = icmp eq i64 %i.aae, 0
  br i1 %min.epilog.iters.check1437, label %vec.epilog.scalar.ph1435.preheader, label %vec.epilog.ph1438, !prof !15

vec.epilog.ph1438:                                ; preds = %vector.main.loop.iter.check1411, %vec.epilog.iter.check1436
  %vec.epilog.resume.val1431 = phi i64 [ %n.vec1414, %vec.epilog.iter.check1436 ], [ 0, %vector.main.loop.iter.check1411 ]
  %bc.merge.rdx1432 = phi i32 [ %i.aav, %vec.epilog.iter.check1436 ], [ %.16573, %vector.main.loop.iter.check1411 ]
  %n.vec1439 = and i64 %i.zt, -4                  ; 4 uses
  %i.aaw = add i64 %i.zn, %n.vec1439
  %i.aax = add i64 %n.vec1439, %i.zx              ; 2 uses
  %i.aay = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1432, i64 0
  %invariant.gep2022 = getelementptr [8 x i8], ptr %3, i64 %i.zx
  %i.aaz = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %i.zn
  br label %vec.epilog.vector.body1440

vec.epilog.vector.body1440:                       ; preds = %vec.epilog.vector.body1440, %vec.epilog.ph1438
  %index1441 = phi i64 [ %vec.epilog.resume.val1431, %vec.epilog.ph1438 ], [ %index.next1444, %vec.epilog.vector.body1440 ] ; 3 uses
  %vec.phi1442 = phi <4 x i32> [ %i.aay, %vec.epilog.ph1438 ], [ %i.aba, %vec.epilog.vector.body1440 ]
  %i.aba = add <4 x i32> %vec.phi1442, splat (i32 1) ; 2 uses
  %gep2023 = getelementptr [8 x i8], ptr %invariant.gep2022, i64 %index1441
  %wide.load1443 = load <4 x double>, ptr %gep2023, align 8, !tbaa !9
  %i.abb = getelementptr [8 x i8], ptr %i.aaz, i64 %index1441
  store <4 x double> %wide.load1443, ptr %i.abb, align 8, !tbaa !9
  %index.next1444 = add nuw i64 %index1441, 4     ; 2 uses
  %i.abc = icmp eq i64 %index.next1444, %n.vec1439
  br i1 %i.abc, label %vec.epilog.middle.block1445, label %vec.epilog.vector.body1440, !llvm.loop !63

vec.epilog.middle.block1445:                      ; preds = %vec.epilog.vector.body1440
  %i.abd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aba) ; 2 uses
  %cmp.n1446 = icmp eq i64 %i.zt, %n.vec1439
  br i1 %cmp.n1446, label %.preheader474, label %vec.epilog.scalar.ph1435.preheader

vec.epilog.scalar.ph1435.preheader:               ; preds = %vector.memcheck1407, %iter.check1434, %vec.epilog.iter.check1436, %vec.epilog.middle.block1445
  %indvars.iv825.in.ph = phi i32 [ %.16573, %iter.check1434 ], [ %.16573, %vector.memcheck1407 ], [ %i.aav, %vec.epilog.iter.check1436 ], [ %i.abd, %vec.epilog.middle.block1445 ]
  %indvars.iv821.ph = phi i64 [ %i.zn, %iter.check1434 ], [ %i.zn, %vector.memcheck1407 ], [ %i.aaf, %vec.epilog.iter.check1436 ], [ %i.aaw, %vec.epilog.middle.block1445 ]
  %indvars.iv819.ph = phi i64 [ %i.zx, %iter.check1434 ], [ %i.zx, %vector.memcheck1407 ], [ %i.aag, %vec.epilog.iter.check1436 ], [ %i.aax, %vec.epilog.middle.block1445 ]
  br label %vec.epilog.scalar.ph1435

.preheader474:                                    ; preds = %vec.epilog.scalar.ph1435, %vec.epilog.middle.block1445, %middle.block1426
  %indvars.iv825.lcssa = phi i32 [ %i.abd, %vec.epilog.middle.block1445 ], [ %i.aav, %middle.block1426 ], [ %indvars.iv825, %vec.epilog.scalar.ph1435 ]
  %indvars.iv.next820.lcssa = phi i64 [ %i.aax, %vec.epilog.middle.block1445 ], [ %i.aag, %middle.block1426 ], [ %indvars.iv.next820, %vec.epilog.scalar.ph1435 ]
  %.not435.not565 = icmp samesign ult i64 %indvars.iv829, %i.zp
  br i1 %.not435.not565, label %iter.check1391, label %._crit_edge569

iter.check1391:                                   ; preds = %.preheader474
  %i.abe = mul nsw i64 %indvars.iv829, %i.zo
  %i.abf = sext i32 %indvars.iv825.lcssa to i64   ; 7 uses
  %invariant.gep1019 = getelementptr [8 x i8], ptr %4, i64 %i.abe ; 11 uses
  %min.iters.check1375 = icmp ult i64 %i.zu, 4
  br i1 %min.iters.check1375, label %vec.epilog.scalar.ph1392.preheader, label %vector.memcheck1373

vector.memcheck1373:                              ; preds = %iter.check1391
  %i.abg = shl nsw i64 %i.abf, 3
  %i.abh = add i64 %i.zv, %i.b
  %i.abi = add i64 %i.abg, %i.a
  %i.abj = sub i64 %i.abi, %i.abh
  %diff.check1374 = icmp ugt i64 %i.abj, -128
  br i1 %diff.check1374, label %vec.epilog.scalar.ph1392.preheader, label %vector.main.loop.iter.check1376

vector.main.loop.iter.check1376:                  ; preds = %vector.memcheck1373
  %min.iters.check1377 = icmp ult i64 %i.zu, 16
  br i1 %min.iters.check1377, label %vec.epilog.ph1395, label %vector.ph1378

vector.ph1378:                                    ; preds = %vector.main.loop.iter.check1376
  %i.abk = and i64 %i.zu, 12
  %n.vec1379 = and i64 %i.zu, -16                 ; 5 uses
  %i.abl = add i64 %indvars.iv829, %n.vec1379
  %i.abm = add i64 %n.vec1379, %i.abf             ; 2 uses
  %invariant.gep2024 = getelementptr [8 x i8], ptr %3, i64 %i.abf
  %i.abn = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv829
  br label %vector.body1380

vector.body1380:                                  ; preds = %vector.body1380, %vector.ph1378
  %index1381 = phi i64 [ 0, %vector.ph1378 ], [ %index.next1386, %vector.body1380 ] ; 3 uses
  %gep2025 = getelementptr [8 x i8], ptr %invariant.gep2024, i64 %index1381 ; 4 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %gep2025, i64 32
  %i.abp = getelementptr inbounds nuw i8, ptr %gep2025, i64 64
  %i.abq = getelementptr inbounds nuw i8, ptr %gep2025, i64 96
  %wide.load1382 = load <4 x double>, ptr %gep2025, align 8, !tbaa !9
  %wide.load1383 = load <4 x double>, ptr %i.abo, align 8, !tbaa !9
  %wide.load1384 = load <4 x double>, ptr %i.abp, align 8, !tbaa !9
  %wide.load1385 = load <4 x double>, ptr %i.abq, align 8, !tbaa !9
  %i.abr = getelementptr [8 x i8], ptr %i.abn, i64 %index1381 ; 4 uses
  %i.abs = getelementptr i8, ptr %i.abr, i64 32
  %i.abt = getelementptr i8, ptr %i.abr, i64 64
  %i.abu = getelementptr i8, ptr %i.abr, i64 96
  store <4 x double> %wide.load1382, ptr %i.abr, align 8, !tbaa !9
  store <4 x double> %wide.load1383, ptr %i.abs, align 8, !tbaa !9
  store <4 x double> %wide.load1384, ptr %i.abt, align 8, !tbaa !9
  store <4 x double> %wide.load1385, ptr %i.abu, align 8, !tbaa !9
  %index.next1386 = add nuw i64 %index1381, 16    ; 2 uses
  %i.abv = icmp eq i64 %index.next1386, %n.vec1379
  br i1 %i.abv, label %middle.block1387, label %vector.body1380, !llvm.loop !64

middle.block1387:                                 ; preds = %vector.body1380
  %cmp.n1388 = icmp eq i64 %i.zu, %n.vec1379
  br i1 %cmp.n1388, label %._crit_edge569, label %vec.epilog.iter.check1393

vec.epilog.iter.check1393:                        ; preds = %middle.block1387
  %min.epilog.iters.check1394 = icmp eq i64 %i.abk, 0
  br i1 %min.epilog.iters.check1394, label %vec.epilog.scalar.ph1392.preheader, label %vec.epilog.ph1395, !prof !15

vec.epilog.ph1395:                                ; preds = %vector.main.loop.iter.check1376, %vec.epilog.iter.check1393
  %vec.epilog.resume.val1389 = phi i64 [ %n.vec1379, %vec.epilog.iter.check1393 ], [ 0, %vector.main.loop.iter.check1376 ]
  %n.vec1396 = and i64 %i.zu, -4                  ; 4 uses
  %i.abw = add i64 %indvars.iv829, %n.vec1396
  %i.abx = add i64 %n.vec1396, %i.abf             ; 2 uses
  %invariant.gep2026 = getelementptr [8 x i8], ptr %3, i64 %i.abf
  %i.aby = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv829
  br label %vec.epilog.vector.body1397

vec.epilog.vector.body1397:                       ; preds = %vec.epilog.vector.body1397, %vec.epilog.ph1395
  %index1398 = phi i64 [ %vec.epilog.resume.val1389, %vec.epilog.ph1395 ], [ %index.next1400, %vec.epilog.vector.body1397 ] ; 3 uses
  %gep2027 = getelementptr [8 x i8], ptr %invariant.gep2026, i64 %index1398
  %wide.load1399 = load <4 x double>, ptr %gep2027, align 8, !tbaa !9
  %i.abz = getelementptr [8 x i8], ptr %i.aby, i64 %index1398
  store <4 x double> %wide.load1399, ptr %i.abz, align 8, !tbaa !9
  %index.next1400 = add nuw i64 %index1398, 4     ; 2 uses
  %i.aca = icmp eq i64 %index.next1400, %n.vec1396
  br i1 %i.aca, label %vec.epilog.middle.block1401, label %vec.epilog.vector.body1397, !llvm.loop !65

vec.epilog.middle.block1401:                      ; preds = %vec.epilog.vector.body1397
  %cmp.n1402 = icmp eq i64 %i.zu, %n.vec1396
  br i1 %cmp.n1402, label %._crit_edge569, label %vec.epilog.scalar.ph1392.preheader

vec.epilog.scalar.ph1392.preheader:               ; preds = %vector.memcheck1373, %iter.check1391, %vec.epilog.iter.check1393, %vec.epilog.middle.block1401
  %indvars.iv831.ph.a = phi i64 [ %indvars.iv829, %iter.check1391 ], [ %indvars.iv829, %vector.memcheck1373 ], [ %i.abl, %vec.epilog.iter.check1393 ], [ %i.abw, %vec.epilog.middle.block1401 ] ; 4 uses
  %indvars.iv827.ph = phi i64 [ %i.abf, %iter.check1391 ], [ %i.abf, %vector.memcheck1373 ], [ %i.abm, %vec.epilog.iter.check1393 ], [ %i.abx, %vec.epilog.middle.block1401 ] ; 2 uses
  %i.acb = sub i64 %i.zm, %indvars.iv831.ph.a
  %xtraiter1912 = and i64 %i.acb, 7               ; 2 uses
  %lcmp.mod1913.not = icmp eq i64 %xtraiter1912, 0
  br i1 %lcmp.mod1913.not, label %vec.epilog.scalar.ph1392.prol.loopexit, label %vec.epilog.scalar.ph1392.prol

vec.epilog.scalar.ph1392.prol:                    ; preds = %vec.epilog.scalar.ph1392.preheader, %vec.epilog.scalar.ph1392.prol
  %indvars.iv831.prol.a = phi i64 [ %indvars.iv.next832.prol, %vec.epilog.scalar.ph1392.prol ], [ %indvars.iv831.ph.a, %vec.epilog.scalar.ph1392.preheader ] ; 2 uses
  %indvars.iv827.prol = phi i64 [ %indvars.iv.next828.prol, %vec.epilog.scalar.ph1392.prol ], [ %indvars.iv827.ph, %vec.epilog.scalar.ph1392.preheader ] ; 2 uses
  %prol.iter1914 = phi i64 [ %prol.iter1914.next, %vec.epilog.scalar.ph1392.prol ], [ 0, %vec.epilog.scalar.ph1392.preheader ]
  %i.acc = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv827.prol
  %i.acd = load double, ptr %i.acc, align 8, !tbaa !9
  %gep1020.prol = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.prol.a
  store double %i.acd, ptr %gep1020.prol, align 8, !tbaa !9
  %indvars.iv.next828.prol = add nsw i64 %indvars.iv827.prol, 1 ; 3 uses
  %indvars.iv.next832.prol = add nuw nsw i64 %indvars.iv831.prol.a, 1 ; 2 uses
  %prol.iter1914.next = add i64 %prol.iter1914, 1 ; 2 uses
  %prol.iter1914.cmp.not = icmp eq i64 %prol.iter1914.next, %xtraiter1912
  br i1 %prol.iter1914.cmp.not, label %vec.epilog.scalar.ph1392.prol.loopexit, label %vec.epilog.scalar.ph1392.prol, !llvm.loop !66

vec.epilog.scalar.ph1392.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1392.prol, %vec.epilog.scalar.ph1392.preheader
  %indvars.iv.next828.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph1392.preheader ], [ %indvars.iv.next828.prol, %vec.epilog.scalar.ph1392.prol ]
  %indvars.iv831.unr.a = phi i64 [ %indvars.iv831.ph.a, %vec.epilog.scalar.ph1392.preheader ], [ %indvars.iv.next832.prol, %vec.epilog.scalar.ph1392.prol ]
  %indvars.iv827.unr = phi i64 [ %indvars.iv827.ph, %vec.epilog.scalar.ph1392.preheader ], [ %indvars.iv.next828.prol, %vec.epilog.scalar.ph1392.prol ]
  %i.ace = sub i64 %indvars.iv831.ph.a, %i.zm
  %i.acf = icmp ugt i64 %i.ace, -8
  br i1 %i.acf, label %._crit_edge569, label %vec.epilog.scalar.ph1392

vec.epilog.scalar.ph1435:                         ; preds = %vec.epilog.scalar.ph1435.preheader, %vec.epilog.scalar.ph1435
  %indvars.iv825.in = phi i32 [ %indvars.iv825, %vec.epilog.scalar.ph1435 ], [ %indvars.iv825.in.ph, %vec.epilog.scalar.ph1435.preheader ]
  %indvars.iv821 = phi i64 [ %indvars.iv.next822.a, %vec.epilog.scalar.ph1435 ], [ %indvars.iv821.ph, %vec.epilog.scalar.ph1435.preheader ] ; 3 uses
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %vec.epilog.scalar.ph1435 ], [ %indvars.iv819.ph, %vec.epilog.scalar.ph1435.preheader ] ; 2 uses
  %indvars.iv825 = add i32 %indvars.iv825.in, 1   ; 2 uses
  %i.acg = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv819
  %i.ach = load double, ptr %i.acg, align 8, !tbaa !9
  %i.aci = mul nsw i64 %indvars.iv821, %i.zo
  %gep1018 = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %i.aci
  store double %i.ach, ptr %gep1018, align 8, !tbaa !9
  %indvars.iv.next820 = add nsw i64 %indvars.iv819, 1 ; 2 uses
  %indvars.iv.next822.a = add nuw nsw i64 %indvars.iv821, 1
  %.not434.not = icmp samesign ult i64 %indvars.iv821, %i.zw
  br i1 %.not434.not, label %vec.epilog.scalar.ph1435, label %.preheader474, !llvm.loop !67

vec.epilog.scalar.ph1392:                         ; preds = %vec.epilog.scalar.ph1392.prol.loopexit, %vec.epilog.scalar.ph1392
  %indvars.iv831.a = phi i64 [ %indvars.iv.next832.7, %vec.epilog.scalar.ph1392 ], [ %indvars.iv831.unr.a, %vec.epilog.scalar.ph1392.prol.loopexit ] ; 9 uses
  %indvars.iv827 = phi i64 [ %indvars.iv.next828.7, %vec.epilog.scalar.ph1392 ], [ %indvars.iv827.unr, %vec.epilog.scalar.ph1392.prol.loopexit ] ; 9 uses
  %i.acj = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv827
  %i.ack = load double, ptr %i.acj, align 8, !tbaa !9
  %gep1020 = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  store double %i.ack, ptr %gep1020, align 8, !tbaa !9
  %i.acl = getelementptr [8 x i8], ptr %3, i64 %indvars.iv827
  %i.acm = getelementptr i8, ptr %i.acl, i64 8
  %i.acn = load double, ptr %i.acm, align 8, !tbaa !9
  %i.aco = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.1 = getelementptr i8, ptr %i.aco, i64 8
  store double %i.acn, ptr %gep1020.1, align 8, !tbaa !9
  %i.acp = getelementptr [8 x i8], ptr %3, i64 %indvars.iv827
  %i.acq = getelementptr i8, ptr %i.acp, i64 16
  %i.acr = load double, ptr %i.acq, align 8, !tbaa !9
  %i.acs = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.2 = getelementptr i8, ptr %i.acs, i64 16
  store double %i.acr, ptr %gep1020.2, align 8, !tbaa !9
  %i.act = getelementptr [8 x i8], ptr %3, i64 %indvars.iv827
  %i.acu = getelementptr i8, ptr %i.act, i64 24
  %i.acv = load double, ptr %i.acu, align 8, !tbaa !9
  %i.acw = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.3 = getelementptr i8, ptr %i.acw, i64 24
  store double %i.acv, ptr %gep1020.3, align 8, !tbaa !9
  %i.acx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv827
  %i.acy = getelementptr i8, ptr %i.acx, i64 32
  %i.acz = load double, ptr %i.acy, align 8, !tbaa !9
  %i.ada = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.4 = getelementptr i8, ptr %i.ada, i64 32
  store double %i.acz, ptr %gep1020.4, align 8, !tbaa !9
  %i.adb = getelementptr [8 x i8], ptr %3, i64 %indvars.iv827
  %i.adc = getelementptr i8, ptr %i.adb, i64 40
  %i.add = load double, ptr %i.adc, align 8, !tbaa !9
  %i.ade = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.5 = getelementptr i8, ptr %i.ade, i64 40
  store double %i.add, ptr %gep1020.5, align 8, !tbaa !9
  %i.adf = getelementptr [8 x i8], ptr %3, i64 %indvars.iv827
  %i.adg = getelementptr i8, ptr %i.adf, i64 48
  %i.adh = load double, ptr %i.adg, align 8, !tbaa !9
  %i.adi = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.6 = getelementptr i8, ptr %i.adi, i64 48
  store double %i.adh, ptr %gep1020.6, align 8, !tbaa !9
  %i.adj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv827
  %i.adk = getelementptr i8, ptr %i.adj, i64 56
  %i.adl = load double, ptr %i.adk, align 8, !tbaa !9
  %i.adm = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.7 = getelementptr i8, ptr %i.adm, i64 56
  store double %i.adl, ptr %gep1020.7, align 8, !tbaa !9
  %indvars.iv.next828.7 = add nsw i64 %indvars.iv827, 8 ; 2 uses
  %indvars.iv.next832.7 = add nuw nsw i64 %indvars.iv831.a, 8 ; 2 uses
  %exitcond837.not.7 = icmp eq i64 %indvars.iv.next832.7, %i.zm
  br i1 %exitcond837.not.7, label %._crit_edge569, label %vec.epilog.scalar.ph1392, !llvm.loop !68

._crit_edge569:                                   ; preds = %vec.epilog.scalar.ph1392.prol.loopexit, %vec.epilog.scalar.ph1392, %middle.block1387, %vec.epilog.middle.block1401, %.preheader474
  %.18.lcssa.in = phi i64 [ %indvars.iv.next820.lcssa, %.preheader474 ], [ %i.abx, %vec.epilog.middle.block1401 ], [ %i.abm, %middle.block1387 ], [ %indvars.iv.next828.lcssa.unr, %vec.epilog.scalar.ph1392.prol.loopexit ], [ %indvars.iv.next828.7, %vec.epilog.scalar.ph1392 ]
  %.18.lcssa = trunc i64 %.18.lcssa.in to i32
  %indvars.iv.next830 = add nuw nsw i64 %indvars.iv829, 1 ; 2 uses
  %exitcond840.not = icmp eq i64 %indvars.iv.next830, %wide.trip.count839
  br i1 %exitcond840.not, label %.loopexit, label %iter.check1434, !llvm.loop !69

.preheader469.lr.ph:                              ; preds = %bb.p
  %i.adn = xor i32 %i.i, -1
  %i.ado = add nsw i32 %i.u, %i.adn
  %i.adp = shl nuw i32 %i.i, 1
  %i.adq = xor i32 %i.v, -1
  %i.adr = add nsw i32 %i.i, %i.adq
  %i.ads = sext i32 %i.d to i64                   ; 12 uses
  %i.adt = zext nneg i32 %i.i to i64              ; 4 uses
  %i.adu = zext nneg i32 %i.v to i64              ; 4 uses
  %i.adv = shl nuw nsw i64 %i.adt, 3
  %i.adw = add i64 %i.adv, %i.b
  %i.adx = add i64 %i.adw, -8
  %i.ady = add nuw nsw i64 %i.adt, 2305843009213693951
  %i.adz = mul i64 %i.ady, %i.ads
  %i.aea = shl i64 %i.adz, 3
  %i.aeb = add i64 %i.aea, %i.b
  %i.aec = mul nsw i64 %i.ads, -8
  %ident.check1593.not = icmp eq i32 %i.d, 1
  %invariant.op = sub i32 -2, %i.adp
  br label %iter.check1653

iter.check1653:                                   ; preds = %.preheader469.lr.ph, %._crit_edge611
  %indvar1595 = phi i64 [ 0, %.preheader469.lr.ph ], [ %indvar.next1596, %._crit_edge611 ] ; 5 uses
  %indvars.iv916 = phi i64 [ %i.adt, %.preheader469.lr.ph ], [ %indvars.iv.next917, %._crit_edge611 ] ; 10 uses
  %indvars.iv907 = phi i32 [ %i.adr, %.preheader469.lr.ph ], [ %indvars.iv.next908, %._crit_edge611 ] ; 3 uses
  %.19616 = phi i32 [ %i.ado, %.preheader469.lr.ph ], [ %.reass.reass, %._crit_edge611 ] ; 5 uses
  %i.aed = and i64 %indvar1595, 4294967295        ; 3 uses
  %i.aee = add nuw nsw i64 %i.aed, 1              ; 5 uses
  %i.aef = add i64 %indvar1595, %i.adu
  %i.aeg = sext i32 %indvars.iv907 to i64
  %i.aeh = shl nsw i64 %i.aeg, 3
  %i.aei = sext i32 %indvars.iv907 to i64         ; 6 uses
  %indvars.iv.next917 = add nsw i64 %indvars.iv916, -1 ; 4 uses
  %i.aej = mul nsw i64 %indvars.iv.next917, %i.ads
  %i.aek = sext i32 %.19616 to i64                ; 7 uses
  %invariant.gep1029 = getelementptr [8 x i8], ptr %4, i64 %i.aej ; 11 uses
  %min.iters.check1630 = icmp ult i64 %indvars.iv916, 4
  br i1 %min.iters.check1630, label %vec.epilog.scalar.ph1654.preheader, label %vector.memcheck1628

vector.memcheck1628:                              ; preds = %iter.check1653
  %i.ael = mul i64 %i.aec, %indvar1595
  %i.aem = shl nsw i64 %i.aek, 3
  %i.aen = add i64 %i.aeb, %i.ael
  %i.aeo = add i64 %i.aem, %i.a
  %i.aep = sub i64 %i.aeo, %i.aen
  %diff.check1629 = icmp ugt i64 %i.aep, -128
  br i1 %diff.check1629, label %vec.epilog.scalar.ph1654.preheader, label %vector.main.loop.iter.check1631

vector.main.loop.iter.check1631:                  ; preds = %vector.memcheck1628
  %min.iters.check1632 = icmp ult i64 %indvars.iv916, 16
  br i1 %min.iters.check1632, label %vec.epilog.ph1657, label %vector.ph1633

vector.ph1633:                                    ; preds = %vector.main.loop.iter.check1631
  %i.aeq = and i64 %indvars.iv916, 12
  %n.vec1634 = and i64 %indvars.iv916, -16        ; 5 uses
  %i.aer = add i64 %n.vec1634, %i.aek             ; 2 uses
  %i.aes = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.19616, i64 0
  %invariant.gep2040.a = getelementptr [8 x i8], ptr %3, i64 %i.aek
  br label %vector.body1635

vector.body1635:                                  ; preds = %vector.body1635, %vector.ph1633
  %index1636 = phi i64 [ 0, %vector.ph1633 ], [ %index.next1645, %vector.body1635 ] ; 3 uses
  %vec.phi1637 = phi <4 x i32> [ %i.aes, %vector.ph1633 ], [ %i.aet, %vector.body1635 ]
  %vec.phi1638 = phi <4 x i32> [ zeroinitializer, %vector.ph1633 ], [ %i.aeu, %vector.body1635 ]
  %vec.phi1639 = phi <4 x i32> [ zeroinitializer, %vector.ph1633 ], [ %i.aev, %vector.body1635 ]
  %vec.phi1640 = phi <4 x i32> [ zeroinitializer, %vector.ph1633 ], [ %i.aew, %vector.body1635 ]
  %i.aet = add <4 x i32> %vec.phi1637, splat (i32 1) ; 2 uses
  %i.aeu = add <4 x i32> %vec.phi1638, splat (i32 1) ; 2 uses
  %i.aev = add <4 x i32> %vec.phi1639, splat (i32 1) ; 2 uses
  %i.aew = add <4 x i32> %vec.phi1640, splat (i32 1) ; 2 uses
  %gep2041.a = getelementptr [8 x i8], ptr %invariant.gep2040.a, i64 %index1636 ; 4 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %gep2041.a, i64 32
  %i.aey = getelementptr inbounds nuw i8, ptr %gep2041.a, i64 64
  %i.aez = getelementptr inbounds nuw i8, ptr %gep2041.a, i64 96
  %wide.load1641 = load <4 x double>, ptr %gep2041.a, align 8, !tbaa !9
  %wide.load1642 = load <4 x double>, ptr %i.aex, align 8, !tbaa !9
  %wide.load1643 = load <4 x double>, ptr %i.aey, align 8, !tbaa !9
  %wide.load1644 = load <4 x double>, ptr %i.aez, align 8, !tbaa !9
  %i.afa = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %index1636 ; 4 uses
  %i.afb = getelementptr i8, ptr %i.afa, i64 32
  %i.afc = getelementptr i8, ptr %i.afa, i64 64
  %i.afd = getelementptr i8, ptr %i.afa, i64 96
  store <4 x double> %wide.load1641, ptr %i.afa, align 8, !tbaa !9
  store <4 x double> %wide.load1642, ptr %i.afb, align 8, !tbaa !9
  store <4 x double> %wide.load1643, ptr %i.afc, align 8, !tbaa !9
  store <4 x double> %wide.load1644, ptr %i.afd, align 8, !tbaa !9
  %index.next1645 = add nuw i64 %index1636, 16    ; 2 uses
  %i.afe = icmp eq i64 %index.next1645, %n.vec1634
  br i1 %i.afe, label %middle.block1646, label %vector.body1635, !llvm.loop !70

middle.block1646:                                 ; preds = %vector.body1635
  %bin.rdx1647 = add <4 x i32> %i.aeu, %i.aet
  %bin.rdx1648 = add <4 x i32> %i.aev, %bin.rdx1647
  %bin.rdx1649 = add <4 x i32> %i.aew, %bin.rdx1648
  %i.aff = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1649) ; 3 uses
  %cmp.n1650 = icmp eq i64 %indvars.iv916, %n.vec1634
  br i1 %cmp.n1650, label %.loopexit1811, label %vec.epilog.iter.check1655

vec.epilog.iter.check1655:                        ; preds = %middle.block1646
  %min.epilog.iters.check1656 = icmp eq i64 %i.aeq, 0
  br i1 %min.epilog.iters.check1656, label %vec.epilog.scalar.ph1654.preheader, label %vec.epilog.ph1657, !prof !15

vec.epilog.ph1657:                                ; preds = %vector.main.loop.iter.check1631, %vec.epilog.iter.check1655
  %vec.epilog.resume.val1651 = phi i64 [ %n.vec1634, %vec.epilog.iter.check1655 ], [ 0, %vector.main.loop.iter.check1631 ]
  %bc.merge.rdx1652 = phi i32 [ %i.aff, %vec.epilog.iter.check1655 ], [ %.19616, %vector.main.loop.iter.check1631 ]
  %n.vec1658 = and i64 %indvars.iv916, -4         ; 4 uses
  %i.afg = add i64 %n.vec1658, %i.aek             ; 2 uses
  %i.afh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1652, i64 0
  %invariant.gep2042.a = getelementptr [8 x i8], ptr %3, i64 %i.aek
  br label %vec.epilog.vector.body1659

vec.epilog.vector.body1659:                       ; preds = %vec.epilog.vector.body1659, %vec.epilog.ph1657
  %index1660 = phi i64 [ %vec.epilog.resume.val1651, %vec.epilog.ph1657 ], [ %index.next1663, %vec.epilog.vector.body1659 ] ; 3 uses
  %vec.phi1661 = phi <4 x i32> [ %i.afh, %vec.epilog.ph1657 ], [ %i.afi, %vec.epilog.vector.body1659 ]
  %i.afi = add <4 x i32> %vec.phi1661, splat (i32 1) ; 2 uses
  %gep2043.a = getelementptr [8 x i8], ptr %invariant.gep2042.a, i64 %index1660
  %wide.load1662 = load <4 x double>, ptr %gep2043.a, align 8, !tbaa !9
  %i.afj = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %index1660
  store <4 x double> %wide.load1662, ptr %i.afj, align 8, !tbaa !9
  %index.next1663 = add nuw i64 %index1660, 4     ; 2 uses
  %i.afk = icmp eq i64 %index.next1663, %n.vec1658
  br i1 %i.afk, label %vec.epilog.middle.block1664, label %vec.epilog.vector.body1659, !llvm.loop !71

vec.epilog.middle.block1664:                      ; preds = %vec.epilog.vector.body1659
  %i.afl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.afi) ; 2 uses
  %cmp.n1665 = icmp eq i64 %indvars.iv916, %n.vec1658
  br i1 %cmp.n1665, label %.loopexit1811, label %vec.epilog.scalar.ph1654.preheader

vec.epilog.scalar.ph1654.preheader:               ; preds = %vector.memcheck1628, %iter.check1653, %vec.epilog.iter.check1655, %vec.epilog.middle.block1664
  %indvars.iv903.in.ph = phi i32 [ %.19616, %iter.check1653 ], [ %.19616, %vector.memcheck1628 ], [ %i.aff, %vec.epilog.iter.check1655 ], [ %i.afl, %vec.epilog.middle.block1664 ] ; 2 uses
  %indvars.iv896.ph = phi i64 [ 0, %iter.check1653 ], [ 0, %vector.memcheck1628 ], [ %n.vec1634, %vec.epilog.iter.check1655 ], [ %n.vec1658, %vec.epilog.middle.block1664 ] ; 4 uses
  %indvars.iv894.ph = phi i64 [ %i.aek, %iter.check1653 ], [ %i.aek, %vector.memcheck1628 ], [ %i.aer, %vec.epilog.iter.check1655 ], [ %i.afg, %vec.epilog.middle.block1664 ] ; 2 uses
  %i.afm = sub i64 %indvars.iv916, %indvars.iv896.ph
  %xtraiter1924 = and i64 %i.afm, 7               ; 2 uses
  %lcmp.mod1925.not = icmp eq i64 %xtraiter1924, 0
  br i1 %lcmp.mod1925.not, label %vec.epilog.scalar.ph1654.prol.loopexit, label %vec.epilog.scalar.ph1654.prol

vec.epilog.scalar.ph1654.prol:                    ; preds = %vec.epilog.scalar.ph1654.preheader, %vec.epilog.scalar.ph1654.prol
  %indvars.iv903.in.prol = phi i32 [ %indvars.iv903.prol, %vec.epilog.scalar.ph1654.prol ], [ %indvars.iv903.in.ph, %vec.epilog.scalar.ph1654.preheader ]
  %indvars.iv896.prol = phi i64 [ %indvars.iv.next897.prol, %vec.epilog.scalar.ph1654.prol ], [ %indvars.iv896.ph, %vec.epilog.scalar.ph1654.preheader ] ; 2 uses
  %indvars.iv894.prol = phi i64 [ %indvars.iv.next895.prol, %vec.epilog.scalar.ph1654.prol ], [ %indvars.iv894.ph, %vec.epilog.scalar.ph1654.preheader ] ; 2 uses
  %prol.iter1926 = phi i64 [ %prol.iter1926.next, %vec.epilog.scalar.ph1654.prol ], [ 0, %vec.epilog.scalar.ph1654.preheader ]
  %indvars.iv903.prol = add i32 %indvars.iv903.in.prol, 1 ; 3 uses
  %i.afn = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv894.prol
  %i.afo = load double, ptr %i.afn, align 8, !tbaa !9
  %gep1030.prol = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896.prol
  store double %i.afo, ptr %gep1030.prol, align 8, !tbaa !9
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
  %i.afp = sub i64 %indvar1595, %i.adt
  %i.afq = add i64 %i.afp, %indvars.iv896.ph
  %i.afr = icmp ugt i64 %i.afq, -8
  br i1 %i.afr, label %.loopexit1811, label %vec.epilog.scalar.ph1654

vec.epilog.scalar.ph1654:                         ; preds = %vec.epilog.scalar.ph1654.prol.loopexit, %vec.epilog.scalar.ph1654
  %indvars.iv903.in = phi i32 [ %indvars.iv903.7, %vec.epilog.scalar.ph1654 ], [ %indvars.iv903.in.unr, %vec.epilog.scalar.ph1654.prol.loopexit ]
  %indvars.iv896 = phi i64 [ %indvars.iv.next897.7, %vec.epilog.scalar.ph1654 ], [ %indvars.iv896.unr, %vec.epilog.scalar.ph1654.prol.loopexit ] ; 9 uses
  %indvars.iv894 = phi i64 [ %indvars.iv.next895.7, %vec.epilog.scalar.ph1654 ], [ %indvars.iv894.unr, %vec.epilog.scalar.ph1654.prol.loopexit ] ; 9 uses
  %i.afs = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv894
  %i.aft = load double, ptr %i.afs, align 8, !tbaa !9
  %gep1030 = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  store double %i.aft, ptr %gep1030, align 8, !tbaa !9
  %i.afu = getelementptr [8 x i8], ptr %3, i64 %indvars.iv894
  %i.afv = getelementptr i8, ptr %i.afu, i64 8
  %i.afw = load double, ptr %i.afv, align 8, !tbaa !9
  %i.afx = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.1 = getelementptr i8, ptr %i.afx, i64 8
  store double %i.afw, ptr %gep1030.1, align 8, !tbaa !9
  %i.afy = getelementptr [8 x i8], ptr %3, i64 %indvars.iv894
  %i.afz = getelementptr i8, ptr %i.afy, i64 16
  %i.aga = load double, ptr %i.afz, align 8, !tbaa !9
  %i.agb = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.2 = getelementptr i8, ptr %i.agb, i64 16
  store double %i.aga, ptr %gep1030.2, align 8, !tbaa !9
  %i.agc = getelementptr [8 x i8], ptr %3, i64 %indvars.iv894
  %i.agd = getelementptr i8, ptr %i.agc, i64 24
  %i.age = load double, ptr %i.agd, align 8, !tbaa !9
  %i.agf = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.3 = getelementptr i8, ptr %i.agf, i64 24
  store double %i.age, ptr %gep1030.3, align 8, !tbaa !9
  %i.agg = getelementptr [8 x i8], ptr %3, i64 %indvars.iv894
  %i.agh = getelementptr i8, ptr %i.agg, i64 32
  %i.agi = load double, ptr %i.agh, align 8, !tbaa !9
  %i.agj = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.4 = getelementptr i8, ptr %i.agj, i64 32
  store double %i.agi, ptr %gep1030.4, align 8, !tbaa !9
  %i.agk = getelementptr [8 x i8], ptr %3, i64 %indvars.iv894
  %i.agl = getelementptr i8, ptr %i.agk, i64 40
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !9
  %i.agn = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.5 = getelementptr i8, ptr %i.agn, i64 40
  store double %i.agm, ptr %gep1030.5, align 8, !tbaa !9
  %i.ago = getelementptr [8 x i8], ptr %3, i64 %indvars.iv894
  %i.agp = getelementptr i8, ptr %i.ago, i64 48
  %i.agq = load double, ptr %i.agp, align 8, !tbaa !9
  %i.agr = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.6 = getelementptr i8, ptr %i.agr, i64 48
  store double %i.agq, ptr %gep1030.6, align 8, !tbaa !9
  %indvars.iv903.7 = add i32 %indvars.iv903.in, 8 ; 2 uses
  %i.ags = getelementptr [8 x i8], ptr %3, i64 %indvars.iv894
  %i.agt = getelementptr i8, ptr %i.ags, i64 56
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !9
  %i.agv = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.7 = getelementptr i8, ptr %i.agv, i64 56
  store double %i.agu, ptr %gep1030.7, align 8, !tbaa !9
  %indvars.iv.next895.7 = add nsw i64 %indvars.iv894, 8 ; 2 uses
  %indvars.iv.next897.7 = add nuw nsw i64 %indvars.iv896, 8 ; 2 uses
  %exitcond902.not.7 = icmp eq i64 %indvars.iv.next897.7, %indvars.iv916
  br i1 %exitcond902.not.7, label %.loopexit1811, label %vec.epilog.scalar.ph1654, !llvm.loop !73

.loopexit1811:                                    ; preds = %vec.epilog.scalar.ph1654.prol.loopexit, %vec.epilog.scalar.ph1654, %vec.epilog.middle.block1664, %middle.block1646
  %indvars.iv903.lcssa = phi i32 [ %i.afl, %vec.epilog.middle.block1664 ], [ %i.aff, %middle.block1646 ], [ %indvars.iv903.lcssa1842.unr, %vec.epilog.scalar.ph1654.prol.loopexit ], [ %indvars.iv903.7, %vec.epilog.scalar.ph1654 ]
  %indvars.iv.next895.lcssa = phi i64 [ %i.afg, %vec.epilog.middle.block1664 ], [ %i.aer, %middle.block1646 ], [ %indvars.iv.next895.lcssa1841.unr, %vec.epilog.scalar.ph1654.prol.loopexit ], [ %indvars.iv.next895.7, %vec.epilog.scalar.ph1654 ]
  %i.agw = sub nsw i64 %indvars.iv.next917, %i.adu ; 2 uses
  %.not432.not606 = icmp slt i64 %i.agw, %i.adu
  br i1 %.not432.not606, label %iter.check1614, label %._crit_edge611

iter.check1614:                                   ; preds = %.loopexit1811
  %i.agx = sext i32 %indvars.iv903.lcssa to i64   ; 7 uses
  %invariant.gep1031.a = getelementptr [8 x i8], ptr %4, i64 %i.agw ; 11 uses
  %min.iters.check1598 = icmp samesign ugt i64 %i.aed, 2
  %or.cond1823 = select i1 %min.iters.check1598, i1 %ident.check1593.not, i1 false
  br i1 %or.cond1823, label %vector.memcheck1594, label %.lr.ph610.preheader

vector.memcheck1594:                              ; preds = %iter.check1614
  %i.agy = add i64 %i.adx, %i.aeh
  %i.agz = add i64 %i.aef, %i.agx
  %i.aha = shl i64 %i.agz, 3
  %i.ahb = add i64 %i.aha, %i.a
  %i.ahc = sub i64 %i.ahb, %i.agy
  %diff.check1597 = icmp ugt i64 %i.ahc, -128
  br i1 %diff.check1597, label %.lr.ph610.preheader, label %vector.main.loop.iter.check1599

vector.main.loop.iter.check1599:                  ; preds = %vector.memcheck1594
  %min.iters.check1600 = icmp samesign ult i64 %i.aed, 15
  br i1 %min.iters.check1600, label %vec.epilog.ph1618, label %vector.ph1601

vector.ph1601:                                    ; preds = %vector.main.loop.iter.check1599
  %i.ahd = and i64 %i.aee, 12
  %n.vec1602 = and i64 %i.aee, 8589934576         ; 5 uses
  %i.ahe = add nsw i64 %n.vec1602, %i.aei
  %i.ahf = add nsw i64 %n.vec1602, %i.agx         ; 2 uses
  %invariant.gep2044.a = getelementptr [8 x i8], ptr %3, i64 %i.agx
  %invariant.gep2046.a = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aei
  br label %vector.body1603

vector.body1603:                                  ; preds = %vector.body1603, %vector.ph1601
  %index1604 = phi i64 [ 0, %vector.ph1601 ], [ %index.next1609, %vector.body1603 ] ; 3 uses
  %gep2045.a = getelementptr [8 x i8], ptr %invariant.gep2044.a, i64 %index1604 ; 4 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %gep2045.a, i64 32
  %i.ahh = getelementptr inbounds nuw i8, ptr %gep2045.a, i64 64
  %i.ahi = getelementptr inbounds nuw i8, ptr %gep2045.a, i64 96
  %wide.load1605 = load <4 x double>, ptr %gep2045.a, align 8, !tbaa !9
  %wide.load1606 = load <4 x double>, ptr %i.ahg, align 8, !tbaa !9
  %wide.load1607 = load <4 x double>, ptr %i.ahh, align 8, !tbaa !9
  %wide.load1608 = load <4 x double>, ptr %i.ahi, align 8, !tbaa !9
  %gep2047.a = getelementptr [8 x i8], ptr %invariant.gep2046.a, i64 %index1604 ; 4 uses
  %i.ahj = getelementptr i8, ptr %gep2047.a, i64 32
  %i.ahk = getelementptr i8, ptr %gep2047.a, i64 64
  %i.ahl = getelementptr i8, ptr %gep2047.a, i64 96
  store <4 x double> %wide.load1605, ptr %gep2047.a, align 8, !tbaa !9
  store <4 x double> %wide.load1606, ptr %i.ahj, align 8, !tbaa !9
  store <4 x double> %wide.load1607, ptr %i.ahk, align 8, !tbaa !9
  store <4 x double> %wide.load1608, ptr %i.ahl, align 8, !tbaa !9
  %index.next1609 = add nuw i64 %index1604, 16    ; 2 uses
  %i.ahm = icmp eq i64 %index.next1609, %n.vec1602
  br i1 %i.ahm, label %middle.block1610, label %vector.body1603, !llvm.loop !74

middle.block1610:                                 ; preds = %vector.body1603
  %cmp.n1611 = icmp eq i64 %i.aee, %n.vec1602
  br i1 %cmp.n1611, label %._crit_edge611, label %vec.epilog.iter.check1616

vec.epilog.iter.check1616:                        ; preds = %middle.block1610
  %min.epilog.iters.check1617 = icmp eq i64 %i.ahd, 0
  br i1 %min.epilog.iters.check1617, label %.lr.ph610.preheader, label %vec.epilog.ph1618, !prof !15

vec.epilog.ph1618:                                ; preds = %vector.main.loop.iter.check1599, %vec.epilog.iter.check1616
  %vec.epilog.resume.val1612 = phi i64 [ %n.vec1602, %vec.epilog.iter.check1616 ], [ 0, %vector.main.loop.iter.check1599 ]
  %n.vec1619 = and i64 %i.aee, 8589934588         ; 4 uses
  %i.ahn = add nsw i64 %n.vec1619, %i.aei
  %i.aho = add nsw i64 %n.vec1619, %i.agx         ; 2 uses
  %invariant.gep2048.a = getelementptr [8 x i8], ptr %3, i64 %i.agx
  %invariant.gep2050.a = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aei
  br label %vec.epilog.vector.body1620

vec.epilog.vector.body1620:                       ; preds = %vec.epilog.vector.body1620, %vec.epilog.ph1618
  %index1621 = phi i64 [ %vec.epilog.resume.val1612, %vec.epilog.ph1618 ], [ %index.next1623, %vec.epilog.vector.body1620 ] ; 3 uses
  %gep2049.a = getelementptr [8 x i8], ptr %invariant.gep2048.a, i64 %index1621
  %wide.load1622 = load <4 x double>, ptr %gep2049.a, align 8, !tbaa !9
  %gep2051.a = getelementptr [8 x i8], ptr %invariant.gep2050.a, i64 %index1621
  store <4 x double> %wide.load1622, ptr %gep2051.a, align 8, !tbaa !9
  %index.next1623 = add nuw i64 %index1621, 4     ; 2 uses
  %i.ahp = icmp eq i64 %index.next1623, %n.vec1619
  br i1 %i.ahp, label %vec.epilog.middle.block1624, label %vec.epilog.vector.body1620, !llvm.loop !75

vec.epilog.middle.block1624:                      ; preds = %vec.epilog.vector.body1620
  %cmp.n1625 = icmp eq i64 %i.aee, %n.vec1619
  br i1 %cmp.n1625, label %._crit_edge611, label %.lr.ph610.preheader

.lr.ph610.preheader:                              ; preds = %vector.memcheck1594, %iter.check1614, %vec.epilog.iter.check1616, %vec.epilog.middle.block1624
  %indvars.iv909.ph = phi i64 [ %i.aei, %iter.check1614 ], [ %i.aei, %vector.memcheck1594 ], [ %i.ahe, %vec.epilog.iter.check1616 ], [ %i.ahn, %vec.epilog.middle.block1624 ] ; 3 uses
  %indvars.iv905.ph = phi i64 [ %i.agx, %iter.check1614 ], [ %i.agx, %vector.memcheck1594 ], [ %i.ahf, %vec.epilog.iter.check1616 ], [ %i.aho, %vec.epilog.middle.block1624 ] ; 2 uses
  %i.ahq = trunc i64 %indvars.iv909.ph to i32     ; 2 uses
  %i.ahr = sub i32 %i.v, %i.ahq
  %xtraiter1927 = and i32 %i.ahr, 7               ; 2 uses
  %lcmp.mod1928.not = icmp eq i32 %xtraiter1927, 0
  br i1 %lcmp.mod1928.not, label %.lr.ph610.prol.loopexit, label %.lr.ph610.prol

.lr.ph610.prol:                                   ; preds = %.lr.ph610.preheader, %.lr.ph610.prol
  %indvars.iv909.prol = phi i64 [ %indvars.iv.next910.prol, %.lr.ph610.prol ], [ %indvars.iv909.ph, %.lr.ph610.preheader ] ; 2 uses
  %indvars.iv905.prol = phi i64 [ %indvars.iv.next906.prol, %.lr.ph610.prol ], [ %indvars.iv905.ph, %.lr.ph610.preheader ] ; 2 uses
  %prol.iter1929 = phi i32 [ %prol.iter1929.next, %.lr.ph610.prol ], [ 0, %.lr.ph610.preheader ]
  %i.ahs = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv905.prol
  %i.aht = load double, ptr %i.ahs, align 8, !tbaa !9
  %i.ahu = mul nsw i64 %indvars.iv909.prol, %i.ads
  %gep1032.prol = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.ahu
  store double %i.aht, ptr %gep1032.prol, align 8, !tbaa !9
  %indvars.iv.next906.prol = add nsw i64 %indvars.iv905.prol, 1 ; 3 uses
  %indvars.iv.next910.prol = add nsw i64 %indvars.iv909.prol, 1 ; 2 uses
  %prol.iter1929.next = add i32 %prol.iter1929, 1 ; 2 uses
  %prol.iter1929.cmp.not = icmp eq i32 %prol.iter1929.next, %xtraiter1927
  br i1 %prol.iter1929.cmp.not, label %.lr.ph610.prol.loopexit, label %.lr.ph610.prol, !llvm.loop !76

.lr.ph610.prol.loopexit:                          ; preds = %.lr.ph610.prol, %.lr.ph610.preheader
  %indvars.iv.next906.lcssa.unr = phi i64 [ poison, %.lr.ph610.preheader ], [ %indvars.iv.next906.prol, %.lr.ph610.prol ]
  %indvars.iv909.unr = phi i64 [ %indvars.iv909.ph, %.lr.ph610.preheader ], [ %indvars.iv.next910.prol, %.lr.ph610.prol ]
  %indvars.iv905.unr = phi i64 [ %indvars.iv905.ph, %.lr.ph610.preheader ], [ %indvars.iv.next906.prol, %.lr.ph610.prol ]
  %i.ahv = sub i32 %i.ahq, %i.v
  %i.ahw = icmp ugt i32 %i.ahv, -8
  br i1 %i.ahw, label %._crit_edge611, label %.lr.ph610

.lr.ph610:                                        ; preds = %.lr.ph610.prol.loopexit, %.lr.ph610
  %indvars.iv909 = phi i64 [ %indvars.iv.next910.7, %.lr.ph610 ], [ %indvars.iv909.unr, %.lr.ph610.prol.loopexit ] ; 9 uses
  %indvars.iv905 = phi i64 [ %indvars.iv.next906.7, %.lr.ph610 ], [ %indvars.iv905.unr, %.lr.ph610.prol.loopexit ] ; 9 uses
  %i.ahx = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv905
  %i.ahy = load double, ptr %i.ahx, align 8, !tbaa !9
  %i.ahz = mul nsw i64 %indvars.iv909, %i.ads
  %gep1032 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.ahz
  store double %i.ahy, ptr %gep1032, align 8, !tbaa !9
  %indvars.iv.next910 = add nsw i64 %indvars.iv909, 1
  %i.aia = getelementptr [8 x i8], ptr %3, i64 %indvars.iv905
  %i.aib = getelementptr i8, ptr %i.aia, i64 8
  %i.aic = load double, ptr %i.aib, align 8, !tbaa !9
  %i.aid = mul nsw i64 %indvars.iv.next910, %i.ads
  %gep1032.1 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aid
  store double %i.aic, ptr %gep1032.1, align 8, !tbaa !9
  %indvars.iv.next910.1 = add nsw i64 %indvars.iv909, 2
  %i.aie = getelementptr [8 x i8], ptr %3, i64 %indvars.iv905
  %i.aif = getelementptr i8, ptr %i.aie, i64 16
  %i.aig = load double, ptr %i.aif, align 8, !tbaa !9
  %i.aih = mul nsw i64 %indvars.iv.next910.1, %i.ads
  %gep1032.2 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aih
  store double %i.aig, ptr %gep1032.2, align 8, !tbaa !9
  %indvars.iv.next910.2 = add nsw i64 %indvars.iv909, 3
  %i.aii = getelementptr [8 x i8], ptr %3, i64 %indvars.iv905
  %i.aij = getelementptr i8, ptr %i.aii, i64 24
  %i.aik = load double, ptr %i.aij, align 8, !tbaa !9
  %i.ail = mul nsw i64 %indvars.iv.next910.2, %i.ads
  %gep1032.3 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.ail
  store double %i.aik, ptr %gep1032.3, align 8, !tbaa !9
  %indvars.iv.next910.3 = add nsw i64 %indvars.iv909, 4
  %i.aim = getelementptr [8 x i8], ptr %3, i64 %indvars.iv905
  %i.ain = getelementptr i8, ptr %i.aim, i64 32
  %i.aio = load double, ptr %i.ain, align 8, !tbaa !9
  %i.aip = mul nsw i64 %indvars.iv.next910.3, %i.ads
  %gep1032.4 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aip
  store double %i.aio, ptr %gep1032.4, align 8, !tbaa !9
  %indvars.iv.next910.4 = add nsw i64 %indvars.iv909, 5
  %i.aiq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv905
  %i.air = getelementptr i8, ptr %i.aiq, i64 40
  %i.ais = load double, ptr %i.air, align 8, !tbaa !9
  %i.ait = mul nsw i64 %indvars.iv.next910.4, %i.ads
  %gep1032.5 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.ait
  store double %i.ais, ptr %gep1032.5, align 8, !tbaa !9
  %indvars.iv.next910.5 = add nsw i64 %indvars.iv909, 6
  %i.aiu = getelementptr [8 x i8], ptr %3, i64 %indvars.iv905
  %i.aiv = getelementptr i8, ptr %i.aiu, i64 48
  %i.aiw = load double, ptr %i.aiv, align 8, !tbaa !9
  %i.aix = mul nsw i64 %indvars.iv.next910.5, %i.ads
  %gep1032.6 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aix
  store double %i.aiw, ptr %gep1032.6, align 8, !tbaa !9
  %indvars.iv.next910.6 = add nsw i64 %indvars.iv909, 7
  %i.aiy = getelementptr [8 x i8], ptr %3, i64 %indvars.iv905
  %i.aiz = getelementptr i8, ptr %i.aiy, i64 56
  %i.aja = load double, ptr %i.aiz, align 8, !tbaa !9
  %i.ajb = mul nsw i64 %indvars.iv.next910.6, %i.ads
  %gep1032.7 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.ajb
  store double %i.aja, ptr %gep1032.7, align 8, !tbaa !9
  %indvars.iv.next906.7 = add nsw i64 %indvars.iv905, 8 ; 2 uses
  %indvars.iv.next910.7 = add nsw i64 %indvars.iv909, 8 ; 2 uses
  %lftr.wideiv914.7 = trunc i64 %indvars.iv.next910.7 to i32
  %exitcond915.not.7 = icmp eq i32 %i.v, %lftr.wideiv914.7
  br i1 %exitcond915.not.7, label %._crit_edge611, label %.lr.ph610, !llvm.loop !77

._crit_edge611:                                   ; preds = %.lr.ph610.prol.loopexit, %.lr.ph610, %middle.block1610, %vec.epilog.middle.block1624, %.loopexit1811
  %.21.lcssa.in = phi i64 [ %indvars.iv.next895.lcssa, %.loopexit1811 ], [ %i.aho, %vec.epilog.middle.block1624 ], [ %i.ahf, %middle.block1610 ], [ %indvars.iv.next906.lcssa.unr, %.lr.ph610.prol.loopexit ], [ %indvars.iv.next906.7, %.lr.ph610 ]
  %.21.lcssa = trunc i64 %.21.lcssa.in to i32
  %.reass.reass = add i32 %.21.lcssa, %invariant.op
  %.not430.not = icmp sgt i64 %indvars.iv.next917, %i.adu
  %indvars.iv.next908 = add i32 %indvars.iv907, -1
  %indvar.next1596 = add i64 %indvar1595, 1
  br i1 %.not430.not, label %iter.check1653, label %.loopexit, !llvm.loop !78

iter.check1468:                                   ; preds = %.thread461
  %i.ajc = mul nsw i32 %i.v, %i.d
  %i.ajd = lshr exact i32 %i.i, 1
  %i.aje = zext nneg i32 %i.ajd to i64            ; 10 uses
  %i.ajf = sext i32 %i.ajc to i64                 ; 2 uses
  %i.ajg = zext nneg i32 %i.i to i64              ; 2 uses
  %invariant.gep1021 = getelementptr [8 x i8], ptr %4, i64 %i.ajf ; 3 uses
  %i.ajh = add nuw nsw i64 %i.aje, 1
  %umax1452 = tail call i64 @llvm.umax.i64(i64 %i.ajh, i64 %i.ajg)
  %i.aji = sub nsw i64 %umax1452, %i.aje          ; 7 uses
  %min.iters.check1453 = icmp ult i64 %i.aji, 4
  br i1 %min.iters.check1453, label %vec.epilog.scalar.ph1469.preheader, label %vector.memcheck1450

vector.memcheck1450:                              ; preds = %iter.check1468
  %i.ajj = add nsw i64 %i.aje, %i.ajf
  %i.ajk = shl nsw i64 %i.ajj, 3
  %i.ajl = add i64 %i.ajk, %i.b
  %i.ajm = sub i64 %i.a, %i.ajl
  %diff.check1451 = icmp ugt i64 %i.ajm, -128
  br i1 %diff.check1451, label %vec.epilog.scalar.ph1469.preheader, label %vector.main.loop.iter.check1454

vector.main.loop.iter.check1454:                  ; preds = %vector.memcheck1450
  %min.iters.check1455 = icmp ult i64 %i.aji, 16
  br i1 %min.iters.check1455, label %vec.epilog.ph1472, label %vector.ph1456

vector.ph1456:                                    ; preds = %vector.main.loop.iter.check1454
  %i.ajn = and i64 %i.aji, 12
  %n.vec1457 = and i64 %i.aji, -16                ; 6 uses
  %i.ajo = add nsw i64 %n.vec1457, %i.aje
  %invariant.gep2028 = getelementptr [8 x i8], ptr %invariant.gep1021, i64 %i.aje
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1456
  %index1459 = phi i64 [ 0, %vector.ph1456 ], [ %index.next1464, %vector.body1458 ] ; 3 uses
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index1459 ; 4 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 32
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajp, i64 64
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajp, i64 96
  %wide.load1460 = load <4 x double>, ptr %i.ajp, align 8, !tbaa !9
  %wide.load1461 = load <4 x double>, ptr %i.ajq, align 8, !tbaa !9
  %wide.load1462 = load <4 x double>, ptr %i.ajr, align 8, !tbaa !9
  %wide.load1463 = load <4 x double>, ptr %i.ajs, align 8, !tbaa !9
  %gep2029 = getelementptr [8 x i8], ptr %invariant.gep2028, i64 %index1459 ; 4 uses
  %i.ajt = getelementptr i8, ptr %gep2029, i64 32
  %i.aju = getelementptr i8, ptr %gep2029, i64 64
  %i.ajv = getelementptr i8, ptr %gep2029, i64 96
  store <4 x double> %wide.load1460, ptr %gep2029, align 8, !tbaa !9
  store <4 x double> %wide.load1461, ptr %i.ajt, align 8, !tbaa !9
  store <4 x double> %wide.load1462, ptr %i.aju, align 8, !tbaa !9
  store <4 x double> %wide.load1463, ptr %i.ajv, align 8, !tbaa !9
  %index.next1464 = add nuw i64 %index1459, 16    ; 2 uses
  %i.ajw = icmp eq i64 %index.next1464, %n.vec1457
  br i1 %i.ajw, label %middle.block1465, label %vector.body1458, !llvm.loop !79

middle.block1465:                                 ; preds = %vector.body1458
  %cmp.n1466 = icmp eq i64 %i.aji, %n.vec1457
  br i1 %cmp.n1466, label %._crit_edge579, label %vec.epilog.iter.check1470

vec.epilog.iter.check1470:                        ; preds = %middle.block1465
  %min.epilog.iters.check1471 = icmp eq i64 %i.ajn, 0
  br i1 %min.epilog.iters.check1471, label %vec.epilog.scalar.ph1469.preheader, label %vec.epilog.ph1472, !prof !15

vec.epilog.ph1472:                                ; preds = %vector.main.loop.iter.check1454, %vec.epilog.iter.check1470
  %vec.epilog.resume.val1467 = phi i64 [ %n.vec1457, %vec.epilog.iter.check1470 ], [ 0, %vector.main.loop.iter.check1454 ]
  %n.vec1473 = and i64 %i.aji, -4                 ; 5 uses
  %i.ajx = add nsw i64 %n.vec1473, %i.aje
  %invariant.gep2030 = getelementptr [8 x i8], ptr %invariant.gep1021, i64 %i.aje
  br label %vec.epilog.vector.body1474

vec.epilog.vector.body1474:                       ; preds = %vec.epilog.vector.body1474, %vec.epilog.ph1472
  %index1475 = phi i64 [ %vec.epilog.resume.val1467, %vec.epilog.ph1472 ], [ %index.next1477, %vec.epilog.vector.body1474 ] ; 3 uses
  %i.ajy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index1475
  %wide.load1476 = load <4 x double>, ptr %i.ajy, align 8, !tbaa !9
  %gep2031 = getelementptr [8 x i8], ptr %invariant.gep2030, i64 %index1475
  store <4 x double> %wide.load1476, ptr %gep2031, align 8, !tbaa !9
  %index.next1477 = add nuw i64 %index1475, 4     ; 2 uses
  %i.ajz = icmp eq i64 %index.next1477, %n.vec1473
  br i1 %i.ajz, label %vec.epilog.middle.block1478, label %vec.epilog.vector.body1474, !llvm.loop !80

vec.epilog.middle.block1478:                      ; preds = %vec.epilog.vector.body1474
  %cmp.n1479 = icmp eq i64 %i.aji, %n.vec1473
  br i1 %cmp.n1479, label %._crit_edge579, label %vec.epilog.scalar.ph1469.preheader

vec.epilog.scalar.ph1469.preheader:               ; preds = %vector.memcheck1450, %iter.check1468, %vec.epilog.iter.check1470, %vec.epilog.middle.block1478
  %indvars.iv843.ph = phi i64 [ %i.aje, %iter.check1468 ], [ %i.aje, %vector.memcheck1450 ], [ %i.ajo, %vec.epilog.iter.check1470 ], [ %i.ajx, %vec.epilog.middle.block1478 ]
  %indvars.iv841.ph = phi i64 [ 0, %iter.check1468 ], [ 0, %vector.memcheck1450 ], [ %n.vec1457, %vec.epilog.iter.check1470 ], [ %n.vec1473, %vec.epilog.middle.block1478 ]
  br label %vec.epilog.scalar.ph1469

vec.epilog.scalar.ph1469:                         ; preds = %vec.epilog.scalar.ph1469.preheader, %vec.epilog.scalar.ph1469
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %vec.epilog.scalar.ph1469 ], [ %indvars.iv843.ph, %vec.epilog.scalar.ph1469.preheader ] ; 2 uses
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %vec.epilog.scalar.ph1469 ], [ %indvars.iv841.ph, %vec.epilog.scalar.ph1469.preheader ] ; 2 uses
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv841
  %i.akb = load double, ptr %i.aka, align 8, !tbaa !9
  %gep1022 = getelementptr [8 x i8], ptr %invariant.gep1021, i64 %indvars.iv843
  store double %i.akb, ptr %gep1022, align 8, !tbaa !9
  %indvars.iv.next842 = add nuw nsw i64 %indvars.iv841, 1 ; 2 uses
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 1 ; 2 uses
  %.not424.not = icmp samesign ult i64 %indvars.iv.next844, %i.ajg
  br i1 %.not424.not, label %vec.epilog.scalar.ph1469, label %._crit_edge579, !llvm.loop !81

._crit_edge579:                                   ; preds = %vec.epilog.scalar.ph1469, %vec.epilog.middle.block1478, %middle.block1465
  %indvars.iv.next842.lcssa = phi i64 [ %n.vec1473, %vec.epilog.middle.block1478 ], [ %n.vec1457, %middle.block1465 ], [ %indvars.iv.next842, %vec.epilog.scalar.ph1469 ] ; 2 uses
  %.not425590 = icmp samesign ult i32 %i.i, 4
  br i1 %.not425590, label %.preheader471.preheader, label %.preheader473.lr.ph

.preheader473.lr.ph:                              ; preds = %._crit_edge579
  %i.akc = add nuw nsw i32 %i.v, 1                ; 2 uses
  %i.akd = sext i32 %i.d to i64                   ; 8 uses
  %i.ake = zext nneg i32 %i.akc to i64            ; 2 uses
  %i.akf = zext nneg i32 %i.i to i64
  %i.akg = add nsw i32 %i.v, -1
  %wide.trip.count878 = zext nneg i32 %i.akg to i64
  %i.akh = mul nsw i64 %i.ake, %i.akd
  %i.aki = shl i64 %i.akh, 3
  %i.akj = add i64 %i.aki, %i.b
  %i.akk = sub i64 %i.akj, %i.a
  %i.akl = shl nsw i64 %i.akd, 3
  %i.akm = add nsw i32 %i.i, -2
  %ident.check1515.not = icmp eq i32 %i.d, 1
  br label %iter.check1541

iter.check1541:                                   ; preds = %.preheader473.lr.ph, %._crit_edge588
  %indvars.iv873 = phi i64 [ 0, %.preheader473.lr.ph ], [ %indvars.iv.next874, %._crit_edge588 ] ; 7 uses
  %indvars.iv871 = phi i64 [ 1, %.preheader473.lr.ph ], [ %indvars.iv.next872, %._crit_edge588 ] ; 10 uses
  %indvars.iv862 = phi i32 [ %i.akc, %.preheader473.lr.ph ], [ %indvars.iv.next863, %._crit_edge588 ] ; 3 uses
  %.23592.in = phi i64 [ %indvars.iv.next842.lcssa, %.preheader473.lr.ph ], [ %.25.lcssa.in, %._crit_edge588 ] ; 2 uses
  %i.akn = trunc i64 %indvars.iv873 to i32
  %i.ako = add i32 %i.v, %i.akn
  %i.akp = sub i32 %i.akm, %i.ako                 ; 3 uses
  %i.akq = zext i32 %i.akp to i64
  %i.akr = add nuw nsw i64 %i.akq, 1              ; 5 uses
  %i.aks = mul i64 %i.akl, %indvars.iv873
  %i.akt = add i64 %i.akk, %i.aks
  %i.aku = sext i32 %indvars.iv862 to i64
  %i.akv = shl nsw i64 %i.aku, 3
  %.23592 = trunc i64 %.23592.in to i32           ; 4 uses
  %i.akw = sext i32 %indvars.iv862 to i64         ; 6 uses
  %sext983 = shl i64 %.23592.in, 32               ; 2 uses
  %i.akx = ashr exact i64 %sext983, 32            ; 6 uses
  %invariant.gep1023 = getelementptr [8 x i8], ptr %4, i64 %indvars.iv873 ; 7 uses
  %min.iters.check1518 = icmp samesign ugt i64 %indvars.iv871, 3
  %or.cond1824 = select i1 %min.iters.check1518, i1 %ident.check1515.not, i1 false
  br i1 %or.cond1824, label %vector.memcheck1516, label %vec.epilog.scalar.ph1542.preheader

vector.memcheck1516:                              ; preds = %iter.check1541
  %i.aky = shl nuw nsw i64 %indvars.iv873, 3
  %i.akz = ashr exact i64 %sext983, 29
  %i.ala = add i64 %i.aky, %i.b
  %i.alb = add i64 %i.akz, %i.a
  %i.alc = sub i64 %i.alb, %i.ala
  %diff.check1517 = icmp ugt i64 %i.alc, -128
  br i1 %diff.check1517, label %vec.epilog.scalar.ph1542.preheader, label %vector.main.loop.iter.check1519

vector.main.loop.iter.check1519:                  ; preds = %vector.memcheck1516
  %min.iters.check1520 = icmp samesign ult i64 %indvars.iv871, 16
  br i1 %min.iters.check1520, label %vec.epilog.ph1545, label %vector.ph1521

vector.ph1521:                                    ; preds = %vector.main.loop.iter.check1519
  %i.ald = and i64 %indvars.iv871, 12
  %n.vec1522 = and i64 %indvars.iv871, 9223372036854775792 ; 5 uses
  %i.ale = add i64 %i.akx, %n.vec1522             ; 2 uses
  %i.alf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.23592, i64 0
  %i.alg = getelementptr [8 x i8], ptr %3, i64 %i.akx
  br label %vector.body1523

vector.body1523:                                  ; preds = %vector.body1523, %vector.ph1521
  %index1524 = phi i64 [ 0, %vector.ph1521 ], [ %index.next1533, %vector.body1523 ] ; 3 uses
  %vec.phi1525 = phi <4 x i32> [ %i.alf, %vector.ph1521 ], [ %i.alh, %vector.body1523 ]
  %vec.phi1526 = phi <4 x i32> [ zeroinitializer, %vector.ph1521 ], [ %i.ali, %vector.body1523 ]
  %vec.phi1527 = phi <4 x i32> [ zeroinitializer, %vector.ph1521 ], [ %i.alj, %vector.body1523 ]
  %vec.phi1528 = phi <4 x i32> [ zeroinitializer, %vector.ph1521 ], [ %i.alk, %vector.body1523 ]
  %i.alh = add <4 x i32> %vec.phi1525, splat (i32 1) ; 2 uses
  %i.ali = add <4 x i32> %vec.phi1526, splat (i32 1) ; 2 uses
  %i.alj = add <4 x i32> %vec.phi1527, splat (i32 1) ; 2 uses
  %i.alk = add <4 x i32> %vec.phi1528, splat (i32 1) ; 2 uses
  %i.all = getelementptr [8 x i8], ptr %i.alg, i64 %index1524 ; 4 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 32
  %i.aln = getelementptr inbounds nuw i8, ptr %i.all, i64 64
  %i.alo = getelementptr inbounds nuw i8, ptr %i.all, i64 96
  %wide.load1529 = load <4 x double>, ptr %i.all, align 8, !tbaa !9
  %wide.load1530 = load <4 x double>, ptr %i.alm, align 8, !tbaa !9
  %wide.load1531 = load <4 x double>, ptr %i.aln, align 8, !tbaa !9
  %wide.load1532 = load <4 x double>, ptr %i.alo, align 8, !tbaa !9
  %i.alp = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %index1524 ; 4 uses
  %i.alq = getelementptr i8, ptr %i.alp, i64 32
  %i.alr = getelementptr i8, ptr %i.alp, i64 64
  %i.als = getelementptr i8, ptr %i.alp, i64 96
  store <4 x double> %wide.load1529, ptr %i.alp, align 8, !tbaa !9
  store <4 x double> %wide.load1530, ptr %i.alq, align 8, !tbaa !9
  store <4 x double> %wide.load1531, ptr %i.alr, align 8, !tbaa !9
  store <4 x double> %wide.load1532, ptr %i.als, align 8, !tbaa !9
  %index.next1533 = add nuw i64 %index1524, 16    ; 2 uses
  %i.alt = icmp eq i64 %index.next1533, %n.vec1522
  br i1 %i.alt, label %middle.block1534, label %vector.body1523, !llvm.loop !82

middle.block1534:                                 ; preds = %vector.body1523
  %bin.rdx1535 = add <4 x i32> %i.ali, %i.alh
  %bin.rdx1536 = add <4 x i32> %i.alj, %bin.rdx1535
  %bin.rdx1537 = add <4 x i32> %i.alk, %bin.rdx1536
  %i.alu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1537) ; 3 uses
  %cmp.n1538 = icmp eq i64 %indvars.iv871, %n.vec1522
  br i1 %cmp.n1538, label %.loopexit1812, label %vec.epilog.iter.check1543

vec.epilog.iter.check1543:                        ; preds = %middle.block1534
  %min.epilog.iters.check1544 = icmp eq i64 %i.ald, 0
  br i1 %min.epilog.iters.check1544, label %vec.epilog.scalar.ph1542.preheader, label %vec.epilog.ph1545, !prof !15

vec.epilog.ph1545:                                ; preds = %vector.main.loop.iter.check1519, %vec.epilog.iter.check1543
  %vec.epilog.resume.val1539 = phi i64 [ %n.vec1522, %vec.epilog.iter.check1543 ], [ 0, %vector.main.loop.iter.check1519 ]
  %bc.merge.rdx1540 = phi i32 [ %i.alu, %vec.epilog.iter.check1543 ], [ %.23592, %vector.main.loop.iter.check1519 ]
  %n.vec1546 = and i64 %indvars.iv871, 9223372036854775804 ; 4 uses
  %i.alv = add i64 %i.akx, %n.vec1546             ; 2 uses
  %i.alw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1540, i64 0
  %i.alx = getelementptr [8 x i8], ptr %3, i64 %i.akx
  br label %vec.epilog.vector.body1547

vec.epilog.vector.body1547:                       ; preds = %vec.epilog.vector.body1547, %vec.epilog.ph1545
  %index1548 = phi i64 [ %vec.epilog.resume.val1539, %vec.epilog.ph1545 ], [ %index.next1551, %vec.epilog.vector.body1547 ] ; 3 uses
  %vec.phi1549 = phi <4 x i32> [ %i.alw, %vec.epilog.ph1545 ], [ %i.aly, %vec.epilog.vector.body1547 ]
  %i.aly = add <4 x i32> %vec.phi1549, splat (i32 1) ; 2 uses
  %i.alz = getelementptr [8 x i8], ptr %i.alx, i64 %index1548
  %wide.load1550 = load <4 x double>, ptr %i.alz, align 8, !tbaa !9
  %i.ama = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %index1548
  store <4 x double> %wide.load1550, ptr %i.ama, align 8, !tbaa !9
  %index.next1551 = add nuw i64 %index1548, 4     ; 2 uses
  %i.amb = icmp eq i64 %index.next1551, %n.vec1546
  br i1 %i.amb, label %vec.epilog.middle.block1552, label %vec.epilog.vector.body1547, !llvm.loop !83

vec.epilog.middle.block1552:                      ; preds = %vec.epilog.vector.body1547
  %i.amc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aly) ; 2 uses
  %cmp.n1553 = icmp eq i64 %indvars.iv871, %n.vec1546
  br i1 %cmp.n1553, label %.loopexit1812, label %vec.epilog.scalar.ph1542.preheader

vec.epilog.scalar.ph1542.preheader:               ; preds = %vector.memcheck1516, %iter.check1541, %vec.epilog.iter.check1543, %vec.epilog.middle.block1552
  %indvars.iv858.in.ph = phi i32 [ %.23592, %iter.check1541 ], [ %.23592, %vector.memcheck1516 ], [ %i.alu, %vec.epilog.iter.check1543 ], [ %i.amc, %vec.epilog.middle.block1552 ] ; 2 uses
  %indvars.iv848.ph = phi i64 [ 0, %iter.check1541 ], [ 0, %vector.memcheck1516 ], [ %n.vec1522, %vec.epilog.iter.check1543 ], [ %n.vec1546, %vec.epilog.middle.block1552 ] ; 3 uses
  %indvars.iv846.ph = phi i64 [ %i.akx, %iter.check1541 ], [ %i.akx, %vector.memcheck1516 ], [ %i.ale, %vec.epilog.iter.check1543 ], [ %i.alv, %vec.epilog.middle.block1552 ] ; 2 uses
  %i.amd = sub nsw i64 %indvars.iv873, %indvars.iv848.ph
  %xtraiter1915 = and i64 %indvars.iv871, 3       ; 2 uses
  %lcmp.mod1916.not = icmp eq i64 %xtraiter1915, 0
  br i1 %lcmp.mod1916.not, label %vec.epilog.scalar.ph1542.prol.loopexit, label %vec.epilog.scalar.ph1542.prol

vec.epilog.scalar.ph1542.prol:                    ; preds = %vec.epilog.scalar.ph1542.preheader, %vec.epilog.scalar.ph1542.prol
  %indvars.iv858.in.prol = phi i32 [ %indvars.iv858.prol, %vec.epilog.scalar.ph1542.prol ], [ %indvars.iv858.in.ph, %vec.epilog.scalar.ph1542.preheader ]
  %indvars.iv848.prol = phi i64 [ %indvars.iv.next849.prol, %vec.epilog.scalar.ph1542.prol ], [ %indvars.iv848.ph, %vec.epilog.scalar.ph1542.preheader ] ; 2 uses
  %indvars.iv846.prol = phi i64 [ %indvars.iv.next847.prol, %vec.epilog.scalar.ph1542.prol ], [ %indvars.iv846.ph, %vec.epilog.scalar.ph1542.preheader ] ; 2 uses
  %prol.iter1917 = phi i64 [ %prol.iter1917.next, %vec.epilog.scalar.ph1542.prol ], [ 0, %vec.epilog.scalar.ph1542.preheader ]
  %indvars.iv858.prol = add i32 %indvars.iv858.in.prol, 1 ; 3 uses
  %i.ame = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv846.prol
  %i.amf = load double, ptr %i.ame, align 8, !tbaa !9
  %i.amg = mul nsw i64 %indvars.iv848.prol, %i.akd
  %gep1024.prol = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amg
  store double %i.amf, ptr %gep1024.prol, align 8, !tbaa !9
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
  %i.amh = icmp ult i64 %i.amd, 3
  br i1 %i.amh, label %.loopexit1812, label %vec.epilog.scalar.ph1542

vec.epilog.scalar.ph1542:                         ; preds = %vec.epilog.scalar.ph1542.prol.loopexit, %vec.epilog.scalar.ph1542
  %indvars.iv858.in = phi i32 [ %indvars.iv858.3, %vec.epilog.scalar.ph1542 ], [ %indvars.iv858.in.unr, %vec.epilog.scalar.ph1542.prol.loopexit ]
  %indvars.iv848 = phi i64 [ %indvars.iv.next849.3, %vec.epilog.scalar.ph1542 ], [ %indvars.iv848.unr, %vec.epilog.scalar.ph1542.prol.loopexit ] ; 5 uses
  %indvars.iv846 = phi i64 [ %indvars.iv.next847.3, %vec.epilog.scalar.ph1542 ], [ %indvars.iv846.unr, %vec.epilog.scalar.ph1542.prol.loopexit ] ; 5 uses
  %i.ami = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv846
  %i.amj = load double, ptr %i.ami, align 8, !tbaa !9
  %i.amk = mul nsw i64 %indvars.iv848, %i.akd
  %gep1024 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amk
  store double %i.amj, ptr %gep1024, align 8, !tbaa !9
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1
  %i.aml = getelementptr [8 x i8], ptr %3, i64 %indvars.iv846
  %i.amm = getelementptr i8, ptr %i.aml, i64 8
  %i.amn = load double, ptr %i.amm, align 8, !tbaa !9
  %i.amo = mul nsw i64 %indvars.iv.next849, %i.akd
  %gep1024.1 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amo
  store double %i.amn, ptr %gep1024.1, align 8, !tbaa !9
  %indvars.iv.next849.1 = add nuw nsw i64 %indvars.iv848, 2
  %i.amp = getelementptr [8 x i8], ptr %3, i64 %indvars.iv846
  %i.amq = getelementptr i8, ptr %i.amp, i64 16
  %i.amr = load double, ptr %i.amq, align 8, !tbaa !9
  %i.ams = mul nsw i64 %indvars.iv.next849.1, %i.akd
  %gep1024.2 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.ams
  store double %i.amr, ptr %gep1024.2, align 8, !tbaa !9
  %indvars.iv.next849.2 = add nuw nsw i64 %indvars.iv848, 3
  %indvars.iv858.3 = add i32 %indvars.iv858.in, 4 ; 2 uses
  %i.amt = getelementptr [8 x i8], ptr %3, i64 %indvars.iv846
  %i.amu = getelementptr i8, ptr %i.amt, i64 24
  %i.amv = load double, ptr %i.amu, align 8, !tbaa !9
  %i.amw = mul nsw i64 %indvars.iv.next849.2, %i.akd
  %gep1024.3 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amw
  store double %i.amv, ptr %gep1024.3, align 8, !tbaa !9
  %indvars.iv.next847.3 = add nsw i64 %indvars.iv846, 4 ; 2 uses
  %indvars.iv.next849.3 = add nuw nsw i64 %indvars.iv848, 4 ; 2 uses
  %exitcond856.not.3 = icmp eq i64 %indvars.iv.next849.3, %indvars.iv871
  br i1 %exitcond856.not.3, label %.loopexit1812, label %vec.epilog.scalar.ph1542, !llvm.loop !85

.loopexit1812:                                    ; preds = %vec.epilog.scalar.ph1542.prol.loopexit, %vec.epilog.scalar.ph1542, %vec.epilog.middle.block1552, %middle.block1534
  %indvars.iv858.lcssa = phi i32 [ %i.amc, %vec.epilog.middle.block1552 ], [ %i.alu, %middle.block1534 ], [ %indvars.iv858.lcssa1851.unr, %vec.epilog.scalar.ph1542.prol.loopexit ], [ %indvars.iv858.3, %vec.epilog.scalar.ph1542 ]
  %indvars.iv.next847.lcssa = phi i64 [ %i.alv, %vec.epilog.middle.block1552 ], [ %i.ale, %middle.block1534 ], [ %indvars.iv.next847.lcssa1850.unr, %vec.epilog.scalar.ph1542.prol.loopexit ], [ %indvars.iv.next847.3, %vec.epilog.scalar.ph1542 ]
  %i.amx = add nuw nsw i64 %indvars.iv873, %i.ake ; 2 uses
  %.not429.not583 = icmp samesign ult i64 %i.amx, %i.akf
  br i1 %.not429.not583, label %iter.check1500, label %._crit_edge588

iter.check1500:                                   ; preds = %.loopexit1812
  %i.amy = mul nsw i64 %i.amx, %i.akd
  %i.amz = sext i32 %indvars.iv858.lcssa to i64   ; 7 uses
  %invariant.gep1025 = getelementptr [8 x i8], ptr %4, i64 %i.amy ; 11 uses
  %min.iters.check1484 = icmp ult i32 %i.akp, 3
  br i1 %min.iters.check1484, label %vec.epilog.scalar.ph1501.preheader, label %vector.memcheck1482

vector.memcheck1482:                              ; preds = %iter.check1500
  %i.ana = add i64 %i.akt, %i.akv
  %i.anb = shl nsw i64 %i.amz, 3
  %i.anc = sub i64 %i.anb, %i.ana
  %diff.check1483 = icmp ugt i64 %i.anc, -128
  br i1 %diff.check1483, label %vec.epilog.scalar.ph1501.preheader, label %vector.main.loop.iter.check1485

vector.main.loop.iter.check1485:                  ; preds = %vector.memcheck1482
  %min.iters.check1486 = icmp ult i32 %i.akp, 15
  br i1 %min.iters.check1486, label %vec.epilog.ph1504, label %vector.ph1487

vector.ph1487:                                    ; preds = %vector.main.loop.iter.check1485
  %i.and = and i64 %i.akr, 12
  %n.vec1488 = and i64 %i.akr, 8589934576         ; 5 uses
  %i.ane = add nsw i64 %n.vec1488, %i.akw
  %i.anf = add nsw i64 %n.vec1488, %i.amz         ; 2 uses
  %invariant.gep2032 = getelementptr [8 x i8], ptr %3, i64 %i.amz
  %invariant.gep2034 = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %i.akw
  br label %vector.body1489

vector.body1489:                                  ; preds = %vector.body1489, %vector.ph1487
  %index1490 = phi i64 [ 0, %vector.ph1487 ], [ %index.next1495, %vector.body1489 ] ; 3 uses
  %gep2033 = getelementptr [8 x i8], ptr %invariant.gep2032, i64 %index1490 ; 4 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %gep2033, i64 32
  %i.anh = getelementptr inbounds nuw i8, ptr %gep2033, i64 64
  %i.ani = getelementptr inbounds nuw i8, ptr %gep2033, i64 96
  %wide.load1491 = load <4 x double>, ptr %gep2033, align 8, !tbaa !9
  %wide.load1492 = load <4 x double>, ptr %i.ang, align 8, !tbaa !9
  %wide.load1493 = load <4 x double>, ptr %i.anh, align 8, !tbaa !9
  %wide.load1494 = load <4 x double>, ptr %i.ani, align 8, !tbaa !9
  %gep2035 = getelementptr [8 x i8], ptr %invariant.gep2034, i64 %index1490 ; 4 uses
  %i.anj = getelementptr i8, ptr %gep2035, i64 32
  %i.ank = getelementptr i8, ptr %gep2035, i64 64
  %i.anl = getelementptr i8, ptr %gep2035, i64 96
  store <4 x double> %wide.load1491, ptr %gep2035, align 8, !tbaa !9
  store <4 x double> %wide.load1492, ptr %i.anj, align 8, !tbaa !9
  store <4 x double> %wide.load1493, ptr %i.ank, align 8, !tbaa !9
  store <4 x double> %wide.load1494, ptr %i.anl, align 8, !tbaa !9
  %index.next1495 = add nuw i64 %index1490, 16    ; 2 uses
  %i.anm = icmp eq i64 %index.next1495, %n.vec1488
  br i1 %i.anm, label %middle.block1496, label %vector.body1489, !llvm.loop !86

middle.block1496:                                 ; preds = %vector.body1489
  %cmp.n1497 = icmp eq i64 %i.akr, %n.vec1488
  br i1 %cmp.n1497, label %._crit_edge588, label %vec.epilog.iter.check1502

vec.epilog.iter.check1502:                        ; preds = %middle.block1496
  %min.epilog.iters.check1503 = icmp eq i64 %i.and, 0
  br i1 %min.epilog.iters.check1503, label %vec.epilog.scalar.ph1501.preheader, label %vec.epilog.ph1504, !prof !15

vec.epilog.ph1504:                                ; preds = %vector.main.loop.iter.check1485, %vec.epilog.iter.check1502
  %vec.epilog.resume.val1498 = phi i64 [ %n.vec1488, %vec.epilog.iter.check1502 ], [ 0, %vector.main.loop.iter.check1485 ]
  %n.vec1505 = and i64 %i.akr, 8589934588         ; 4 uses
  %i.ann = add nsw i64 %n.vec1505, %i.akw
  %i.ano = add nsw i64 %n.vec1505, %i.amz         ; 2 uses
  %invariant.gep2036 = getelementptr [8 x i8], ptr %3, i64 %i.amz
  %invariant.gep2038 = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %i.akw
  br label %vec.epilog.vector.body1506

vec.epilog.vector.body1506:                       ; preds = %vec.epilog.vector.body1506, %vec.epilog.ph1504
  %index1507 = phi i64 [ %vec.epilog.resume.val1498, %vec.epilog.ph1504 ], [ %index.next1509, %vec.epilog.vector.body1506 ] ; 3 uses
  %gep2037 = getelementptr [8 x i8], ptr %invariant.gep2036, i64 %index1507
  %wide.load1508 = load <4 x double>, ptr %gep2037, align 8, !tbaa !9
  %gep2039 = getelementptr [8 x i8], ptr %invariant.gep2038, i64 %index1507
  store <4 x double> %wide.load1508, ptr %gep2039, align 8, !tbaa !9
  %index.next1509 = add nuw i64 %index1507, 4     ; 2 uses
  %i.anp = icmp eq i64 %index.next1509, %n.vec1505
  br i1 %i.anp, label %vec.epilog.middle.block1510, label %vec.epilog.vector.body1506, !llvm.loop !87

vec.epilog.middle.block1510:                      ; preds = %vec.epilog.vector.body1506
  %cmp.n1511 = icmp eq i64 %i.akr, %n.vec1505
  br i1 %cmp.n1511, label %._crit_edge588, label %vec.epilog.scalar.ph1501.preheader

vec.epilog.scalar.ph1501.preheader:               ; preds = %vector.memcheck1482, %iter.check1500, %vec.epilog.iter.check1502, %vec.epilog.middle.block1510
  %indvars.iv864.ph = phi i64 [ %i.akw, %iter.check1500 ], [ %i.akw, %vector.memcheck1482 ], [ %i.ane, %vec.epilog.iter.check1502 ], [ %i.ann, %vec.epilog.middle.block1510 ] ; 3 uses
  %indvars.iv860.ph = phi i64 [ %i.amz, %iter.check1500 ], [ %i.amz, %vector.memcheck1482 ], [ %i.anf, %vec.epilog.iter.check1502 ], [ %i.ano, %vec.epilog.middle.block1510 ] ; 2 uses
  %i.anq = trunc i64 %indvars.iv864.ph to i32     ; 2 uses
  %i.anr = sub i32 %i.i, %i.anq
  %xtraiter1918 = and i32 %i.anr, 7               ; 2 uses
  %lcmp.mod1919.not = icmp eq i32 %xtraiter1918, 0
  br i1 %lcmp.mod1919.not, label %vec.epilog.scalar.ph1501.prol.loopexit, label %vec.epilog.scalar.ph1501.prol

vec.epilog.scalar.ph1501.prol:                    ; preds = %vec.epilog.scalar.ph1501.preheader, %vec.epilog.scalar.ph1501.prol
  %indvars.iv864.prol = phi i64 [ %indvars.iv.next865.prol, %vec.epilog.scalar.ph1501.prol ], [ %indvars.iv864.ph, %vec.epilog.scalar.ph1501.preheader ] ; 2 uses
  %indvars.iv860.prol = phi i64 [ %indvars.iv.next861.prol, %vec.epilog.scalar.ph1501.prol ], [ %indvars.iv860.ph, %vec.epilog.scalar.ph1501.preheader ] ; 2 uses
  %prol.iter1920 = phi i32 [ %prol.iter1920.next, %vec.epilog.scalar.ph1501.prol ], [ 0, %vec.epilog.scalar.ph1501.preheader ]
  %i.ans = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv860.prol
  %i.ant = load double, ptr %i.ans, align 8, !tbaa !9
  %gep1026.prol = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864.prol
  store double %i.ant, ptr %gep1026.prol, align 8, !tbaa !9
  %indvars.iv.next861.prol = add nsw i64 %indvars.iv860.prol, 1 ; 3 uses
  %indvars.iv.next865.prol = add nsw i64 %indvars.iv864.prol, 1 ; 2 uses
  %prol.iter1920.next = add i32 %prol.iter1920, 1 ; 2 uses
  %prol.iter1920.cmp.not = icmp eq i32 %prol.iter1920.next, %xtraiter1918
  br i1 %prol.iter1920.cmp.not, label %vec.epilog.scalar.ph1501.prol.loopexit, label %vec.epilog.scalar.ph1501.prol, !llvm.loop !88

vec.epilog.scalar.ph1501.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1501.prol, %vec.epilog.scalar.ph1501.preheader
  %indvars.iv.next861.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph1501.preheader ], [ %indvars.iv.next861.prol, %vec.epilog.scalar.ph1501.prol ]
  %indvars.iv864.unr = phi i64 [ %indvars.iv864.ph, %vec.epilog.scalar.ph1501.preheader ], [ %indvars.iv.next865.prol, %vec.epilog.scalar.ph1501.prol ]
  %indvars.iv860.unr = phi i64 [ %indvars.iv860.ph, %vec.epilog.scalar.ph1501.preheader ], [ %indvars.iv.next861.prol, %vec.epilog.scalar.ph1501.prol ]
  %i.anu = sub i32 %i.anq, %i.i
  %i.anv = icmp ugt i32 %i.anu, -8
  br i1 %i.anv, label %._crit_edge588, label %vec.epilog.scalar.ph1501

vec.epilog.scalar.ph1501:                         ; preds = %vec.epilog.scalar.ph1501.prol.loopexit, %vec.epilog.scalar.ph1501
  %indvars.iv864 = phi i64 [ %indvars.iv.next865.7, %vec.epilog.scalar.ph1501 ], [ %indvars.iv864.unr, %vec.epilog.scalar.ph1501.prol.loopexit ] ; 9 uses
  %indvars.iv860 = phi i64 [ %indvars.iv.next861.7, %vec.epilog.scalar.ph1501 ], [ %indvars.iv860.unr, %vec.epilog.scalar.ph1501.prol.loopexit ] ; 9 uses
  %i.anw = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv860
  %i.anx = load double, ptr %i.anw, align 8, !tbaa !9
  %gep1026 = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  store double %i.anx, ptr %gep1026, align 8, !tbaa !9
  %i.any = getelementptr [8 x i8], ptr %3, i64 %indvars.iv860
  %i.anz = getelementptr i8, ptr %i.any, i64 8
  %i.aoa = load double, ptr %i.anz, align 8, !tbaa !9
  %i.aob = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.1 = getelementptr i8, ptr %i.aob, i64 8
  store double %i.aoa, ptr %gep1026.1, align 8, !tbaa !9
  %i.aoc = getelementptr [8 x i8], ptr %3, i64 %indvars.iv860
  %i.aod = getelementptr i8, ptr %i.aoc, i64 16
  %i.aoe = load double, ptr %i.aod, align 8, !tbaa !9
  %i.aof = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.2 = getelementptr i8, ptr %i.aof, i64 16
  store double %i.aoe, ptr %gep1026.2, align 8, !tbaa !9
  %i.aog = getelementptr [8 x i8], ptr %3, i64 %indvars.iv860
  %i.aoh = getelementptr i8, ptr %i.aog, i64 24
  %i.aoi = load double, ptr %i.aoh, align 8, !tbaa !9
  %i.aoj = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.3 = getelementptr i8, ptr %i.aoj, i64 24
  store double %i.aoi, ptr %gep1026.3, align 8, !tbaa !9
  %i.aok = getelementptr [8 x i8], ptr %3, i64 %indvars.iv860
  %i.aol = getelementptr i8, ptr %i.aok, i64 32
  %i.aom = load double, ptr %i.aol, align 8, !tbaa !9
  %i.aon = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.4 = getelementptr i8, ptr %i.aon, i64 32
  store double %i.aom, ptr %gep1026.4, align 8, !tbaa !9
  %i.aoo = getelementptr [8 x i8], ptr %3, i64 %indvars.iv860
  %i.aop = getelementptr i8, ptr %i.aoo, i64 40
  %i.aoq = load double, ptr %i.aop, align 8, !tbaa !9
  %i.aor = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.5 = getelementptr i8, ptr %i.aor, i64 40
  store double %i.aoq, ptr %gep1026.5, align 8, !tbaa !9
  %i.aos = getelementptr [8 x i8], ptr %3, i64 %indvars.iv860
  %i.aot = getelementptr i8, ptr %i.aos, i64 48
  %i.aou = load double, ptr %i.aot, align 8, !tbaa !9
  %i.aov = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.6 = getelementptr i8, ptr %i.aov, i64 48
  store double %i.aou, ptr %gep1026.6, align 8, !tbaa !9
  %i.aow = getelementptr [8 x i8], ptr %3, i64 %indvars.iv860
  %i.aox = getelementptr i8, ptr %i.aow, i64 56
  %i.aoy = load double, ptr %i.aox, align 8, !tbaa !9
  %i.aoz = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.7 = getelementptr i8, ptr %i.aoz, i64 56
  store double %i.aoy, ptr %gep1026.7, align 8, !tbaa !9
  %indvars.iv.next861.7 = add nsw i64 %indvars.iv860, 8 ; 2 uses
  %indvars.iv.next865.7 = add nsw i64 %indvars.iv864, 8 ; 2 uses
  %lftr.wideiv869.7 = trunc i64 %indvars.iv.next865.7 to i32
  %exitcond870.not.7 = icmp eq i32 %i.i, %lftr.wideiv869.7
  br i1 %exitcond870.not.7, label %._crit_edge588, label %vec.epilog.scalar.ph1501, !llvm.loop !89

._crit_edge588:                                   ; preds = %vec.epilog.scalar.ph1501.prol.loopexit, %vec.epilog.scalar.ph1501, %middle.block1496, %vec.epilog.middle.block1510, %.loopexit1812
  %.25.lcssa.in = phi i64 [ %indvars.iv.next847.lcssa, %.loopexit1812 ], [ %i.ano, %vec.epilog.middle.block1510 ], [ %i.anf, %middle.block1496 ], [ %indvars.iv.next861.lcssa.unr, %vec.epilog.scalar.ph1501.prol.loopexit ], [ %indvars.iv.next861.7, %vec.epilog.scalar.ph1501 ] ; 2 uses
  %indvars.iv.next874 = add nuw nsw i64 %indvars.iv873, 1 ; 2 uses
  %indvars.iv.next872 = add nuw nsw i64 %indvars.iv871, 1
  %indvars.iv.next863 = add nuw i32 %indvars.iv862, 1
  %exitcond879.not = icmp eq i64 %indvars.iv.next874, %wide.trip.count878
  br i1 %exitcond879.not, label %.preheader471.preheader, label %iter.check1541, !llvm.loop !90

.preheader471.preheader:                          ; preds = %._crit_edge588, %._crit_edge579
  %.23.lcssa = phi i64 [ %indvars.iv.next842.lcssa, %._crit_edge579 ], [ %.25.lcssa.in, %._crit_edge588 ]
  %i.apa = sext i32 %i.d to i64                   ; 9 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.v, i32 1)
  %i.apb = lshr exact i32 %i.i, 1                 ; 2 uses
  %i.apc = zext nneg i32 %i.apb to i64
  %i.apd = add nsw i64 %i.apc, -1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.v)
  %i.ape = add nuw i32 %smax, %i.apb
  %i.apf = sub i32 %i.ape, %i.v
  %wide.trip.count891 = zext i32 %i.apf to i64
  %sext982 = shl i64 %.23.lcssa, 32
  %i.apg = ashr exact i64 %sext982, 32
  %wide.trip.count887 = zext nneg i32 %umax to i64 ; 8 uses
  %i.aph = shl nuw nsw i64 %i.aje, 3
  %i.api = add i64 %i.aph, %i.b
  %i.apj = add i64 %i.api, -8
  %min.iters.check1563 = icmp ugt i32 %i.i, 7
  %ident.check1558.not = icmp eq i32 %i.d, 1
  %or.cond1825 = select i1 %min.iters.check1563, i1 %ident.check1558.not, i1 false
  %min.iters.check1565 = icmp ult i32 %i.i, 32
  %i.apk = and i64 %wide.trip.count887, 12
  %n.vec1567 = and i64 %wide.trip.count887, 1073741808 ; 5 uses
  %cmp.n1576 = icmp eq i64 %n.vec1567, %wide.trip.count887
  %min.epilog.iters.check1581 = icmp eq i64 %i.apk, 0
  %n.vec1583 = and i64 %wide.trip.count887, 1073741820 ; 4 uses
  %cmp.n1589 = icmp eq i64 %n.vec1583, %wide.trip.count887
  br label %iter.check1578

iter.check1578:                                   ; preds = %.preheader471.preheader, %._crit_edge599
  %indvar1560 = phi i64 [ 0, %.preheader471.preheader ], [ %indvar.next1561, %._crit_edge599 ] ; 2 uses
  %indvars.iv889 = phi i64 [ %i.apd, %.preheader471.preheader ], [ %indvars.iv.next890, %._crit_edge599 ] ; 2 uses
  %.26603 = phi i64 [ %i.apg, %.preheader471.preheader ], [ %indvars.iv.next881.lcssa, %._crit_edge599 ] ; 7 uses
  %invariant.gep1027 = getelementptr [8 x i8], ptr %4, i64 %indvars.iv889 ; 11 uses
  br i1 %or.cond1825, label %vector.memcheck1559, label %vec.epilog.scalar.ph1579.preheader

vector.memcheck1559:                              ; preds = %iter.check1578
  %i.apl = shl i64 %indvar1560, 3
  %i.apm = shl i64 %.26603, 3
  %i.apn = add i64 %i.apj, %i.apl
  %i.apo = add i64 %i.apm, %i.a
  %i.app = sub i64 %i.apo, %i.apn
  %diff.check1562 = icmp ugt i64 %i.app, -128
  br i1 %diff.check1562, label %vec.epilog.scalar.ph1579.preheader, label %vector.main.loop.iter.check1564

vector.main.loop.iter.check1564:                  ; preds = %vector.memcheck1559
  br i1 %min.iters.check1565, label %vec.epilog.ph1582, label %vector.ph1566

vector.ph1566:                                    ; preds = %vector.main.loop.iter.check1564
  %i.apq = add i64 %.26603, %n.vec1567            ; 2 uses
  %i.apr = getelementptr [8 x i8], ptr %3, i64 %.26603
  br label %vector.body1568

vector.body1568:                                  ; preds = %vector.body1568, %vector.ph1566
  %index1569 = phi i64 [ 0, %vector.ph1566 ], [ %index.next1574, %vector.body1568 ] ; 3 uses
  %i.aps = getelementptr [8 x i8], ptr %i.apr, i64 %index1569 ; 4 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 32
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aps, i64 64
  %i.apv = getelementptr inbounds nuw i8, ptr %i.aps, i64 96
  %wide.load1570 = load <4 x double>, ptr %i.aps, align 8, !tbaa !9
  %wide.load1571 = load <4 x double>, ptr %i.apt, align 8, !tbaa !9
  %wide.load1572 = load <4 x double>, ptr %i.apu, align 8, !tbaa !9
  %wide.load1573 = load <4 x double>, ptr %i.apv, align 8, !tbaa !9
  %i.apw = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %index1569 ; 4 uses
  %i.apx = getelementptr i8, ptr %i.apw, i64 32
  %i.apy = getelementptr i8, ptr %i.apw, i64 64
  %i.apz = getelementptr i8, ptr %i.apw, i64 96
  store <4 x double> %wide.load1570, ptr %i.apw, align 8, !tbaa !9
  store <4 x double> %wide.load1571, ptr %i.apx, align 8, !tbaa !9
  store <4 x double> %wide.load1572, ptr %i.apy, align 8, !tbaa !9
  store <4 x double> %wide.load1573, ptr %i.apz, align 8, !tbaa !9
  %index.next1574 = add nuw i64 %index1569, 16    ; 2 uses
  %i.aqa = icmp eq i64 %index.next1574, %n.vec1567
  br i1 %i.aqa, label %middle.block1575, label %vector.body1568, !llvm.loop !91

middle.block1575:                                 ; preds = %vector.body1568
  br i1 %cmp.n1576, label %._crit_edge599, label %vec.epilog.iter.check1580

vec.epilog.iter.check1580:                        ; preds = %middle.block1575
  br i1 %min.epilog.iters.check1581, label %vec.epilog.scalar.ph1579.preheader, label %vec.epilog.ph1582, !prof !15

vec.epilog.ph1582:                                ; preds = %vector.main.loop.iter.check1564, %vec.epilog.iter.check1580
  %vec.epilog.resume.val1577 = phi i64 [ %n.vec1567, %vec.epilog.iter.check1580 ], [ 0, %vector.main.loop.iter.check1564 ]
  %i.aqb = add i64 %.26603, %n.vec1583            ; 2 uses
  %i.aqc = getelementptr [8 x i8], ptr %3, i64 %.26603
  br label %vec.epilog.vector.body1584

vec.epilog.vector.body1584:                       ; preds = %vec.epilog.vector.body1584, %vec.epilog.ph1582
  %index1585 = phi i64 [ %vec.epilog.resume.val1577, %vec.epilog.ph1582 ], [ %index.next1587, %vec.epilog.vector.body1584 ] ; 3 uses
  %i.aqd = getelementptr [8 x i8], ptr %i.aqc, i64 %index1585
  %wide.load1586 = load <4 x double>, ptr %i.aqd, align 8, !tbaa !9
  %i.aqe = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %index1585
  store <4 x double> %wide.load1586, ptr %i.aqe, align 8, !tbaa !9
  %index.next1587 = add nuw i64 %index1585, 4     ; 2 uses
  %i.aqf = icmp eq i64 %index.next1587, %n.vec1583
  br i1 %i.aqf, label %vec.epilog.middle.block1588, label %vec.epilog.vector.body1584, !llvm.loop !92

vec.epilog.middle.block1588:                      ; preds = %vec.epilog.vector.body1584
  br i1 %cmp.n1589, label %._crit_edge599, label %vec.epilog.scalar.ph1579.preheader

vec.epilog.scalar.ph1579.preheader:               ; preds = %vector.memcheck1559, %iter.check1578, %vec.epilog.iter.check1580, %vec.epilog.middle.block1588
  %indvars.iv882.ph = phi i64 [ 0, %iter.check1578 ], [ 0, %vector.memcheck1559 ], [ %n.vec1567, %vec.epilog.iter.check1580 ], [ %n.vec1583, %vec.epilog.middle.block1588 ] ; 4 uses
  %indvars.iv880.ph = phi i64 [ %.26603, %iter.check1578 ], [ %.26603, %vector.memcheck1559 ], [ %i.apq, %vec.epilog.iter.check1580 ], [ %i.aqb, %vec.epilog.middle.block1588 ] ; 2 uses
  %i.aqg = sub nsw i64 %wide.trip.count887, %indvars.iv882.ph
  %xtraiter1921 = and i64 %i.aqg, 7               ; 2 uses
  %lcmp.mod1922.not = icmp eq i64 %xtraiter1921, 0
  br i1 %lcmp.mod1922.not, label %vec.epilog.scalar.ph1579.prol.loopexit, label %vec.epilog.scalar.ph1579.prol

vec.epilog.scalar.ph1579.prol:                    ; preds = %vec.epilog.scalar.ph1579.preheader, %vec.epilog.scalar.ph1579.prol
  %indvars.iv882.prol = phi i64 [ %indvars.iv.next883.prol, %vec.epilog.scalar.ph1579.prol ], [ %indvars.iv882.ph, %vec.epilog.scalar.ph1579.preheader ] ; 2 uses
  %indvars.iv880.prol = phi i64 [ %indvars.iv.next881.prol, %vec.epilog.scalar.ph1579.prol ], [ %indvars.iv880.ph, %vec.epilog.scalar.ph1579.preheader ] ; 2 uses
  %prol.iter1923 = phi i64 [ %prol.iter1923.next, %vec.epilog.scalar.ph1579.prol ], [ 0, %vec.epilog.scalar.ph1579.preheader ]
  %i.aqh = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv880.prol
  %i.aqi = load double, ptr %i.aqh, align 8, !tbaa !9
  %i.aqj = mul nsw i64 %indvars.iv882.prol, %i.apa
  %gep1028.prol.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aqj
  store double %i.aqi, ptr %gep1028.prol.a, align 8, !tbaa !9
  %indvars.iv.next881.prol = add nsw i64 %indvars.iv880.prol, 1 ; 3 uses
  %indvars.iv.next883.prol = add nuw nsw i64 %indvars.iv882.prol, 1 ; 2 uses
  %prol.iter1923.next = add i64 %prol.iter1923, 1 ; 2 uses
  %prol.iter1923.cmp.not = icmp eq i64 %prol.iter1923.next, %xtraiter1921
  br i1 %prol.iter1923.cmp.not, label %vec.epilog.scalar.ph1579.prol.loopexit, label %vec.epilog.scalar.ph1579.prol, !llvm.loop !93

vec.epilog.scalar.ph1579.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1579.prol, %vec.epilog.scalar.ph1579.preheader
  %indvars.iv.next881.lcssa1844.unr = phi i64 [ poison, %vec.epilog.scalar.ph1579.preheader ], [ %indvars.iv.next881.prol, %vec.epilog.scalar.ph1579.prol ]
  %indvars.iv882.unr = phi i64 [ %indvars.iv882.ph, %vec.epilog.scalar.ph1579.preheader ], [ %indvars.iv.next883.prol, %vec.epilog.scalar.ph1579.prol ]
  %indvars.iv880.unr = phi i64 [ %indvars.iv880.ph, %vec.epilog.scalar.ph1579.preheader ], [ %indvars.iv.next881.prol, %vec.epilog.scalar.ph1579.prol ]
  %i.aqk = sub nsw i64 %indvars.iv882.ph, %wide.trip.count887
  %i.aql = icmp ugt i64 %i.aqk, -8
  br i1 %i.aql, label %._crit_edge599, label %vec.epilog.scalar.ph1579

vec.epilog.scalar.ph1579:                         ; preds = %vec.epilog.scalar.ph1579.prol.loopexit, %vec.epilog.scalar.ph1579
  %indvars.iv882 = phi i64 [ %indvars.iv.next883.7, %vec.epilog.scalar.ph1579 ], [ %indvars.iv882.unr, %vec.epilog.scalar.ph1579.prol.loopexit ] ; 9 uses
  %indvars.iv880 = phi i64 [ %indvars.iv.next881.7, %vec.epilog.scalar.ph1579 ], [ %indvars.iv880.unr, %vec.epilog.scalar.ph1579.prol.loopexit ] ; 9 uses
  %i.aqm = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv880
  %i.aqn = load double, ptr %i.aqm, align 8, !tbaa !9
  %i.aqo = mul nsw i64 %indvars.iv882, %i.apa
  %gep1028.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aqo
  store double %i.aqn, ptr %gep1028.a, align 8, !tbaa !9
  %indvars.iv.next883 = add nuw nsw i64 %indvars.iv882, 1
  %i.aqp = getelementptr [8 x i8], ptr %3, i64 %indvars.iv880
  %i.aqq = getelementptr i8, ptr %i.aqp, i64 8
  %i.aqr = load double, ptr %i.aqq, align 8, !tbaa !9
  %i.aqs = mul nsw i64 %indvars.iv.next883, %i.apa
  %gep1028.1.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aqs
  store double %i.aqr, ptr %gep1028.1.a, align 8, !tbaa !9
  %indvars.iv.next883.1 = add nuw nsw i64 %indvars.iv882, 2
  %i.aqt = getelementptr [8 x i8], ptr %3, i64 %indvars.iv880
  %i.aqu = getelementptr i8, ptr %i.aqt, i64 16
  %i.aqv = load double, ptr %i.aqu, align 8, !tbaa !9
  %i.aqw = mul nsw i64 %indvars.iv.next883.1, %i.apa
  %gep1028.2.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aqw
  store double %i.aqv, ptr %gep1028.2.a, align 8, !tbaa !9
  %indvars.iv.next883.2 = add nuw nsw i64 %indvars.iv882, 3
  %i.aqx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv880
  %i.aqy = getelementptr i8, ptr %i.aqx, i64 24
  %i.aqz = load double, ptr %i.aqy, align 8, !tbaa !9
  %i.ara = mul nsw i64 %indvars.iv.next883.2, %i.apa
  %gep1028.3 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.ara
  store double %i.aqz, ptr %gep1028.3, align 8, !tbaa !9
  %indvars.iv.next883.3 = add nuw nsw i64 %indvars.iv882, 4
  %i.arb = getelementptr [8 x i8], ptr %3, i64 %indvars.iv880
  %i.arc = getelementptr i8, ptr %i.arb, i64 32
  %i.ard = load double, ptr %i.arc, align 8, !tbaa !9
  %i.are = mul nsw i64 %indvars.iv.next883.3, %i.apa
  %gep1028.4 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.are
  store double %i.ard, ptr %gep1028.4, align 8, !tbaa !9
  %indvars.iv.next883.4 = add nuw nsw i64 %indvars.iv882, 5
  %i.arf = getelementptr [8 x i8], ptr %3, i64 %indvars.iv880
  %i.arg = getelementptr i8, ptr %i.arf, i64 40
  %i.arh = load double, ptr %i.arg, align 8, !tbaa !9
  %i.ari = mul nsw i64 %indvars.iv.next883.4, %i.apa
  %gep1028.5 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.ari
  store double %i.arh, ptr %gep1028.5, align 8, !tbaa !9
  %indvars.iv.next883.5 = add nuw nsw i64 %indvars.iv882, 6
  %i.arj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv880
  %i.ark = getelementptr i8, ptr %i.arj, i64 48
  %i.arl = load double, ptr %i.ark, align 8, !tbaa !9
  %i.arm = mul nsw i64 %indvars.iv.next883.5, %i.apa
  %gep1028.6 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.arm
  store double %i.arl, ptr %gep1028.6, align 8, !tbaa !9
  %indvars.iv.next883.6 = add nuw nsw i64 %indvars.iv882, 7
  %i.arn = getelementptr [8 x i8], ptr %3, i64 %indvars.iv880
  %i.aro = getelementptr i8, ptr %i.arn, i64 56
  %i.arp = load double, ptr %i.aro, align 8, !tbaa !9
  %i.arq = mul nsw i64 %indvars.iv.next883.6, %i.apa
  %gep1028.7 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.arq
  store double %i.arp, ptr %gep1028.7, align 8, !tbaa !9
  %indvars.iv.next881.7 = add nsw i64 %indvars.iv880, 8 ; 2 uses
  %indvars.iv.next883.7 = add nuw nsw i64 %indvars.iv882, 8 ; 2 uses
  %exitcond888.not.7 = icmp eq i64 %indvars.iv.next883.7, %wide.trip.count887
  br i1 %exitcond888.not.7, label %._crit_edge599, label %vec.epilog.scalar.ph1579, !llvm.loop !94

._crit_edge599:                                   ; preds = %vec.epilog.scalar.ph1579.prol.loopexit, %vec.epilog.scalar.ph1579, %vec.epilog.middle.block1588, %middle.block1575
  %indvars.iv.next881.lcssa = phi i64 [ %i.aqb, %vec.epilog.middle.block1588 ], [ %i.apq, %middle.block1575 ], [ %indvars.iv.next881.lcssa1844.unr, %vec.epilog.scalar.ph1579.prol.loopexit ], [ %indvars.iv.next881.7, %vec.epilog.scalar.ph1579 ]
  %indvars.iv.next890 = add nsw i64 %indvars.iv889, 1 ; 2 uses
  %exitcond892.not = icmp eq i64 %indvars.iv.next890, %wide.trip.count891
  %indvar.next1561 = add i64 %indvar1560, 1
  br i1 %exitcond892.not, label %.loopexit, label %iter.check1578, !llvm.loop !95

.preheader468.us.preheader:                       ; preds = %bb.p
  %i.arr = lshr exact i32 %i.i, 1
  %i.ars = zext nneg i32 %i.arr to i64            ; 9 uses
  %i.art = sext i32 %i.d to i64                   ; 2 uses
  %i.aru = zext nneg i32 %i.i to i64              ; 2 uses
  %i.arv = add nuw nsw i32 %i.v, 1
  %wide.trip.count927 = zext nneg i32 %i.arv to i64 ; 2 uses
  %umax1673 = tail call i64 @llvm.umax.i64(i64 %wide.trip.count927, i64 %i.aru)
  %i.arw = sub nsw i64 %umax1673, %i.ars          ; 7 uses
  %min.iters.check1674 = icmp ugt i64 %i.arw, 3
  %ident.check1670.not = icmp eq i32 %i.d, 1
  %or.cond1826 = select i1 %min.iters.check1674, i1 %ident.check1670.not, i1 false
  %min.iters.check1676 = icmp ult i64 %i.arw, 16
  %i.arx = and i64 %i.arw, 12
  %n.vec1678 = and i64 %i.arw, -16                ; 5 uses
  %i.ary = add nsw i64 %n.vec1678, %i.ars
  %cmp.n1687 = icmp eq i64 %i.arw, %n.vec1678
  %min.epilog.iters.check1693 = icmp eq i64 %i.arx, 0
  %n.vec1695 = and i64 %i.arw, -4                 ; 4 uses
  %i.arz = add nsw i64 %n.vec1695, %i.ars
  %cmp.n1701 = icmp eq i64 %i.arw, %n.vec1695
  br label %iter.check1690

iter.check1690:                                   ; preds = %.preheader468.us.preheader, %._crit_edge622.us
  %indvars.iv924 = phi i64 [ 0, %.preheader468.us.preheader ], [ %indvars.iv.next925, %._crit_edge622.us ] ; 3 uses
  %.28625.us = phi i64 [ 0, %.preheader468.us.preheader ], [ %indvars.iv.next920.lcssa, %._crit_edge622.us ] ; 7 uses
  %invariant.gep1033 = getelementptr [8 x i8], ptr %4, i64 %indvars.iv924 ; 3 uses
  br i1 %or.cond1826, label %vector.memcheck1671, label %vec.epilog.scalar.ph1691.preheader

vector.memcheck1671:                              ; preds = %iter.check1690
  %i.asa = shl i64 %.28625.us, 3
  %i.asb = add nuw i64 %indvars.iv924, %i.ars
  %i.asc = shl i64 %i.asb, 3
  %i.asd = add i64 %i.asc, %i.b
  %i.ase = add i64 %i.asa, %i.a
  %i.asf = sub i64 %i.ase, %i.asd
  %diff.check1672 = icmp ugt i64 %i.asf, -128
  br i1 %diff.check1672, label %vec.epilog.scalar.ph1691.preheader, label %vector.main.loop.iter.check1675

vector.main.loop.iter.check1675:                  ; preds = %vector.memcheck1671
  br i1 %min.iters.check1676, label %vec.epilog.ph1694, label %vector.ph1677

vector.ph1677:                                    ; preds = %vector.main.loop.iter.check1675
  %i.asg = add i64 %.28625.us, %n.vec1678         ; 2 uses
  %i.ash = getelementptr [8 x i8], ptr %3, i64 %.28625.us
  %invariant.gep2052 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.ars
  br label %vector.body1679

vector.body1679:                                  ; preds = %vector.body1679, %vector.ph1677
  %index1680 = phi i64 [ 0, %vector.ph1677 ], [ %index.next1685, %vector.body1679 ] ; 3 uses
  %i.asi = getelementptr [8 x i8], ptr %i.ash, i64 %index1680 ; 4 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 32
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asi, i64 64
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asi, i64 96
  %wide.load1681 = load <4 x double>, ptr %i.asi, align 8, !tbaa !9
  %wide.load1682 = load <4 x double>, ptr %i.asj, align 8, !tbaa !9
  %wide.load1683 = load <4 x double>, ptr %i.ask, align 8, !tbaa !9
  %wide.load1684 = load <4 x double>, ptr %i.asl, align 8, !tbaa !9
  %gep2053 = getelementptr [8 x i8], ptr %invariant.gep2052, i64 %index1680 ; 4 uses
  %i.asm = getelementptr i8, ptr %gep2053, i64 32
  %i.asn = getelementptr i8, ptr %gep2053, i64 64
  %i.aso = getelementptr i8, ptr %gep2053, i64 96
  store <4 x double> %wide.load1681, ptr %gep2053, align 8, !tbaa !9
  store <4 x double> %wide.load1682, ptr %i.asm, align 8, !tbaa !9
  store <4 x double> %wide.load1683, ptr %i.asn, align 8, !tbaa !9
  store <4 x double> %wide.load1684, ptr %i.aso, align 8, !tbaa !9
  %index.next1685 = add nuw i64 %index1680, 16    ; 2 uses
  %i.asp = icmp eq i64 %index.next1685, %n.vec1678
  br i1 %i.asp, label %middle.block1686, label %vector.body1679, !llvm.loop !96

middle.block1686:                                 ; preds = %vector.body1679
  br i1 %cmp.n1687, label %._crit_edge622.us, label %vec.epilog.iter.check1692

vec.epilog.iter.check1692:                        ; preds = %middle.block1686
  br i1 %min.epilog.iters.check1693, label %vec.epilog.scalar.ph1691.preheader, label %vec.epilog.ph1694, !prof !15

vec.epilog.ph1694:                                ; preds = %vector.main.loop.iter.check1675, %vec.epilog.iter.check1692
  %vec.epilog.resume.val1688 = phi i64 [ %n.vec1678, %vec.epilog.iter.check1692 ], [ 0, %vector.main.loop.iter.check1675 ]
  %i.asq = add i64 %.28625.us, %n.vec1695         ; 2 uses
  %i.asr = getelementptr [8 x i8], ptr %3, i64 %.28625.us
  %invariant.gep2054 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.ars
  br label %vec.epilog.vector.body1696

vec.epilog.vector.body1696:                       ; preds = %vec.epilog.vector.body1696, %vec.epilog.ph1694
  %index1697 = phi i64 [ %vec.epilog.resume.val1688, %vec.epilog.ph1694 ], [ %index.next1699, %vec.epilog.vector.body1696 ] ; 3 uses
  %i.ass = getelementptr [8 x i8], ptr %i.asr, i64 %index1697
  %wide.load1698 = load <4 x double>, ptr %i.ass, align 8, !tbaa !9
  %gep2055 = getelementptr [8 x i8], ptr %invariant.gep2054, i64 %index1697
  store <4 x double> %wide.load1698, ptr %gep2055, align 8, !tbaa !9
  %index.next1699 = add nuw i64 %index1697, 4     ; 2 uses
  %i.ast = icmp eq i64 %index.next1699, %n.vec1695
  br i1 %i.ast, label %vec.epilog.middle.block1700, label %vec.epilog.vector.body1696, !llvm.loop !97

vec.epilog.middle.block1700:                      ; preds = %vec.epilog.vector.body1696
  br i1 %cmp.n1701, label %._crit_edge622.us, label %vec.epilog.scalar.ph1691.preheader

vec.epilog.scalar.ph1691.preheader:               ; preds = %vector.memcheck1671, %iter.check1690, %vec.epilog.iter.check1692, %vec.epilog.middle.block1700
  %indvars.iv921.ph = phi i64 [ %i.ars, %iter.check1690 ], [ %i.ars, %vector.memcheck1671 ], [ %i.ary, %vec.epilog.iter.check1692 ], [ %i.arz, %vec.epilog.middle.block1700 ]
  %indvars.iv919.ph = phi i64 [ %.28625.us, %iter.check1690 ], [ %.28625.us, %vector.memcheck1671 ], [ %i.asg, %vec.epilog.iter.check1692 ], [ %i.asq, %vec.epilog.middle.block1700 ]
  br label %vec.epilog.scalar.ph1691

vec.epilog.scalar.ph1691:                         ; preds = %vec.epilog.scalar.ph1691.preheader, %vec.epilog.scalar.ph1691
  %indvars.iv921 = phi i64 [ %indvars.iv.next922, %vec.epilog.scalar.ph1691 ], [ %indvars.iv921.ph, %vec.epilog.scalar.ph1691.preheader ] ; 2 uses
  %indvars.iv919 = phi i64 [ %indvars.iv.next920, %vec.epilog.scalar.ph1691 ], [ %indvars.iv919.ph, %vec.epilog.scalar.ph1691.preheader ] ; 2 uses
  %i.asu = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv919
  %i.asv = load double, ptr %i.asu, align 8, !tbaa !9
  %i.asw = mul nsw i64 %indvars.iv921, %i.art
  %gep1034 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.asw
  store double %i.asv, ptr %gep1034, align 8, !tbaa !9
  %indvars.iv.next920 = add nsw i64 %indvars.iv919, 1 ; 2 uses
  %indvars.iv.next922 = add nuw nsw i64 %indvars.iv921, 1 ; 2 uses
  %.not423.not.us = icmp samesign ult i64 %indvars.iv.next922, %i.aru
  br i1 %.not423.not.us, label %vec.epilog.scalar.ph1691, label %._crit_edge622.us, !llvm.loop !98

._crit_edge622.us:                                ; preds = %vec.epilog.scalar.ph1691, %vec.epilog.middle.block1700, %middle.block1686
  %indvars.iv.next920.lcssa = phi i64 [ %i.asq, %vec.epilog.middle.block1700 ], [ %i.asg, %middle.block1686 ], [ %indvars.iv.next920, %vec.epilog.scalar.ph1691 ] ; 3 uses
  %indvars.iv.next925 = add nuw nsw i64 %indvars.iv924, 1 ; 2 uses
  %exitcond928.not = icmp eq i64 %indvars.iv.next925, %wide.trip.count927
  br i1 %exitcond928.not, label %.split627.us, label %iter.check1690, !llvm.loop !99

.split627.us:                                     ; preds = %._crit_edge622.us
  %.not419638 = icmp ult i32 %i.i, 4
  br i1 %.not419638, label %iter.check1796, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.split627.us
  %i.asx = add nuw nsw i32 %i.v, 1                ; 2 uses
  %i.asy = sext i32 %i.d to i64                   ; 10 uses
  %i.asz = zext nneg i32 %i.asx to i64
  %i.ata = zext nneg i32 %i.i to i64
  %i.atb = add nsw i32 %i.v, -1                   ; 2 uses
  %wide.trip.count961 = zext nneg i32 %i.atb to i64
  %i.atc = shl nuw nsw i64 %i.ars, 3
  %i.atd = add i64 %i.atc, %i.b
  %i.ate = add i64 %i.atd, 8
  %i.atf = add nsw i32 %i.i, -2
  %i.atg = shl nsw i64 %i.art, 3
  %ident.check1705.not = icmp eq i32 %i.d, 1
  br label %iter.check1763

iter.check1763:                                   ; preds = %.preheader.lr.ph, %._crit_edge636
  %indvars.iv956 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next957, %._crit_edge636 ] ; 7 uses
  %indvars.iv954 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next955, %._crit_edge636 ] ; 10 uses
  %indvars.iv945 = phi i32 [ %i.asx, %.preheader.lr.ph ], [ %indvars.iv.next946, %._crit_edge636 ] ; 3 uses
  %.30640.in = phi i64 [ %indvars.iv.next920.lcssa, %.preheader.lr.ph ], [ %.32.lcssa.in, %._crit_edge636 ] ; 2 uses
  %i.ath = trunc i64 %indvars.iv956 to i32
  %i.ati = add i32 %i.v, %i.ath
  %i.atj = sub i32 %i.atf, %i.ati                 ; 3 uses
  %i.atk = zext i32 %i.atj to i64
  %i.atl = add nuw nsw i64 %i.atk, 1              ; 5 uses
  %i.atm = sext i32 %indvars.iv945 to i64
  %.30640 = trunc i64 %.30640.in to i32           ; 4 uses
  %i.atn = sext i32 %indvars.iv945 to i64         ; 6 uses
  %i.ato = mul nsw i64 %indvars.iv956, %i.asy
  %sext985 = shl i64 %.30640.in, 32               ; 2 uses
  %i.atp = ashr exact i64 %sext985, 32            ; 6 uses
  %invariant.gep1035 = getelementptr [8 x i8], ptr %4, i64 %i.ato ; 11 uses
  %min.iters.check1740 = icmp samesign ult i64 %indvars.iv954, 4
  br i1 %min.iters.check1740, label %vec.epilog.scalar.ph1764.preheader, label %vector.memcheck1738

vector.memcheck1738:                              ; preds = %iter.check1763
  %i.atq = mul i64 %i.atg, %indvars.iv956
  %i.atr = ashr exact i64 %sext985, 29
  %i.ats = add i64 %i.atq, %i.b
  %i.att = add i64 %i.atr, %i.a
  %i.atu = sub i64 %i.att, %i.ats
  %diff.check1739 = icmp ugt i64 %i.atu, -128
  br i1 %diff.check1739, label %vec.epilog.scalar.ph1764.preheader, label %vector.main.loop.iter.check1741

vector.main.loop.iter.check1741:                  ; preds = %vector.memcheck1738
  %min.iters.check1742 = icmp samesign ult i64 %indvars.iv954, 16
  br i1 %min.iters.check1742, label %vec.epilog.ph1767, label %vector.ph1743

vector.ph1743:                                    ; preds = %vector.main.loop.iter.check1741
  %i.atv = and i64 %indvars.iv954, 12
  %n.vec1744 = and i64 %indvars.iv954, 9223372036854775792 ; 5 uses
  %i.atw = add i64 %i.atp, %n.vec1744             ; 2 uses
  %i.atx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.30640, i64 0
  %i.aty = getelementptr [8 x i8], ptr %3, i64 %i.atp
  br label %vector.body1745

vector.body1745:                                  ; preds = %vector.body1745, %vector.ph1743
  %index1746 = phi i64 [ 0, %vector.ph1743 ], [ %index.next1755, %vector.body1745 ] ; 3 uses
  %vec.phi1747 = phi <4 x i32> [ %i.atx, %vector.ph1743 ], [ %i.atz, %vector.body1745 ]
  %vec.phi1748 = phi <4 x i32> [ zeroinitializer, %vector.ph1743 ], [ %i.aua, %vector.body1745 ]
  %vec.phi1749 = phi <4 x i32> [ zeroinitializer, %vector.ph1743 ], [ %i.aub, %vector.body1745 ]
  %vec.phi1750 = phi <4 x i32> [ zeroinitializer, %vector.ph1743 ], [ %i.auc, %vector.body1745 ]
  %i.atz = add <4 x i32> %vec.phi1747, splat (i32 1) ; 2 uses
  %i.aua = add <4 x i32> %vec.phi1748, splat (i32 1) ; 2 uses
  %i.aub = add <4 x i32> %vec.phi1749, splat (i32 1) ; 2 uses
  %i.auc = add <4 x i32> %vec.phi1750, splat (i32 1) ; 2 uses
  %i.aud = getelementptr [8 x i8], ptr %i.aty, i64 %index1746 ; 4 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 32
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aud, i64 64
  %i.aug = getelementptr inbounds nuw i8, ptr %i.aud, i64 96
  %wide.load1751 = load <4 x double>, ptr %i.aud, align 8, !tbaa !9
  %wide.load1752 = load <4 x double>, ptr %i.aue, align 8, !tbaa !9
  %wide.load1753 = load <4 x double>, ptr %i.auf, align 8, !tbaa !9
  %wide.load1754 = load <4 x double>, ptr %i.aug, align 8, !tbaa !9
  %i.auh = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %index1746 ; 4 uses
  %i.aui = getelementptr i8, ptr %i.auh, i64 32
  %i.auj = getelementptr i8, ptr %i.auh, i64 64
  %i.auk = getelementptr i8, ptr %i.auh, i64 96
  store <4 x double> %wide.load1751, ptr %i.auh, align 8, !tbaa !9
  store <4 x double> %wide.load1752, ptr %i.aui, align 8, !tbaa !9
  store <4 x double> %wide.load1753, ptr %i.auj, align 8, !tbaa !9
  store <4 x double> %wide.load1754, ptr %i.auk, align 8, !tbaa !9
  %index.next1755 = add nuw i64 %index1746, 16    ; 2 uses
  %i.aul = icmp eq i64 %index.next1755, %n.vec1744
  br i1 %i.aul, label %middle.block1756, label %vector.body1745, !llvm.loop !100

middle.block1756:                                 ; preds = %vector.body1745
  %bin.rdx1757 = add <4 x i32> %i.aua, %i.atz
  %bin.rdx1758 = add <4 x i32> %i.aub, %bin.rdx1757
  %bin.rdx1759 = add <4 x i32> %i.auc, %bin.rdx1758
  %i.aum = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1759) ; 3 uses
  %cmp.n1760 = icmp eq i64 %indvars.iv954, %n.vec1744
  br i1 %cmp.n1760, label %.loopexit1810, label %vec.epilog.iter.check1765

vec.epilog.iter.check1765:                        ; preds = %middle.block1756
  %min.epilog.iters.check1766 = icmp eq i64 %i.atv, 0
  br i1 %min.epilog.iters.check1766, label %vec.epilog.scalar.ph1764.preheader, label %vec.epilog.ph1767, !prof !15

vec.epilog.ph1767:                                ; preds = %vector.main.loop.iter.check1741, %vec.epilog.iter.check1765
  %vec.epilog.resume.val1761 = phi i64 [ %n.vec1744, %vec.epilog.iter.check1765 ], [ 0, %vector.main.loop.iter.check1741 ]
  %bc.merge.rdx1762 = phi i32 [ %i.aum, %vec.epilog.iter.check1765 ], [ %.30640, %vector.main.loop.iter.check1741 ]
  %n.vec1768 = and i64 %indvars.iv954, 9223372036854775804 ; 4 uses
  %i.aun = add i64 %i.atp, %n.vec1768             ; 2 uses
  %i.auo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1762, i64 0
  %i.aup = getelementptr [8 x i8], ptr %3, i64 %i.atp
  br label %vec.epilog.vector.body1769

vec.epilog.vector.body1769:                       ; preds = %vec.epilog.vector.body1769, %vec.epilog.ph1767
  %index1770 = phi i64 [ %vec.epilog.resume.val1761, %vec.epilog.ph1767 ], [ %index.next1773, %vec.epilog.vector.body1769 ] ; 3 uses
  %vec.phi1771 = phi <4 x i32> [ %i.auo, %vec.epilog.ph1767 ], [ %i.auq, %vec.epilog.vector.body1769 ]
  %i.auq = add <4 x i32> %vec.phi1771, splat (i32 1) ; 2 uses
  %i.aur = getelementptr [8 x i8], ptr %i.aup, i64 %index1770
  %wide.load1772 = load <4 x double>, ptr %i.aur, align 8, !tbaa !9
  %i.aus = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %index1770
  store <4 x double> %wide.load1772, ptr %i.aus, align 8, !tbaa !9
  %index.next1773 = add nuw i64 %index1770, 4     ; 2 uses
  %i.aut = icmp eq i64 %index.next1773, %n.vec1768
  br i1 %i.aut, label %vec.epilog.middle.block1774, label %vec.epilog.vector.body1769, !llvm.loop !101

vec.epilog.middle.block1774:                      ; preds = %vec.epilog.vector.body1769
  %i.auu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.auq) ; 2 uses
  %cmp.n1775 = icmp eq i64 %indvars.iv954, %n.vec1768
  br i1 %cmp.n1775, label %.loopexit1810, label %vec.epilog.scalar.ph1764.preheader

vec.epilog.scalar.ph1764.preheader:               ; preds = %vector.memcheck1738, %iter.check1763, %vec.epilog.iter.check1765, %vec.epilog.middle.block1774
  %indvars.iv941.in.ph = phi i32 [ %.30640, %iter.check1763 ], [ %.30640, %vector.memcheck1738 ], [ %i.aum, %vec.epilog.iter.check1765 ], [ %i.auu, %vec.epilog.middle.block1774 ] ; 2 uses
  %indvars.iv932.ph = phi i64 [ 0, %iter.check1763 ], [ 0, %vector.memcheck1738 ], [ %n.vec1744, %vec.epilog.iter.check1765 ], [ %n.vec1768, %vec.epilog.middle.block1774 ] ; 4 uses
  %indvars.iv930.ph = phi i64 [ %i.atp, %iter.check1763 ], [ %i.atp, %vector.memcheck1738 ], [ %i.atw, %vec.epilog.iter.check1765 ], [ %i.aun, %vec.epilog.middle.block1774 ] ; 2 uses
  %i.auv = sub nsw i64 %indvars.iv954, %indvars.iv932.ph
  %i.auw = sub nsw i64 %indvars.iv956, %indvars.iv932.ph
  %xtraiter1930 = and i64 %i.auv, 7               ; 2 uses
  %lcmp.mod1931.not = icmp eq i64 %xtraiter1930, 0
  br i1 %lcmp.mod1931.not, label %vec.epilog.scalar.ph1764.prol.loopexit, label %vec.epilog.scalar.ph1764.prol

vec.epilog.scalar.ph1764.prol:                    ; preds = %vec.epilog.scalar.ph1764.preheader, %vec.epilog.scalar.ph1764.prol
  %indvars.iv941.in.prol = phi i32 [ %indvars.iv941.prol, %vec.epilog.scalar.ph1764.prol ], [ %indvars.iv941.in.ph, %vec.epilog.scalar.ph1764.preheader ]
  %indvars.iv932.prol = phi i64 [ %indvars.iv.next933.prol, %vec.epilog.scalar.ph1764.prol ], [ %indvars.iv932.ph, %vec.epilog.scalar.ph1764.preheader ] ; 2 uses
  %indvars.iv930.prol = phi i64 [ %indvars.iv.next931.prol, %vec.epilog.scalar.ph1764.prol ], [ %indvars.iv930.ph, %vec.epilog.scalar.ph1764.preheader ] ; 2 uses
  %prol.iter1932 = phi i64 [ %prol.iter1932.next, %vec.epilog.scalar.ph1764.prol ], [ 0, %vec.epilog.scalar.ph1764.preheader ]
  %indvars.iv941.prol = add i32 %indvars.iv941.in.prol, 1 ; 3 uses
  %i.aux = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv930.prol
  %i.auy = load double, ptr %i.aux, align 8, !tbaa !9
  %gep1036.prol = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932.prol
  store double %i.auy, ptr %gep1036.prol, align 8, !tbaa !9
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
  %i.auz = icmp ult i64 %i.auw, 7
  br i1 %i.auz, label %.loopexit1810, label %vec.epilog.scalar.ph1764

vec.epilog.scalar.ph1764:                         ; preds = %vec.epilog.scalar.ph1764.prol.loopexit, %vec.epilog.scalar.ph1764
  %indvars.iv941.in = phi i32 [ %indvars.iv941.7, %vec.epilog.scalar.ph1764 ], [ %indvars.iv941.in.unr, %vec.epilog.scalar.ph1764.prol.loopexit ]
  %indvars.iv932 = phi i64 [ %indvars.iv.next933.7, %vec.epilog.scalar.ph1764 ], [ %indvars.iv932.unr, %vec.epilog.scalar.ph1764.prol.loopexit ] ; 9 uses
  %indvars.iv930 = phi i64 [ %indvars.iv.next931.7, %vec.epilog.scalar.ph1764 ], [ %indvars.iv930.unr, %vec.epilog.scalar.ph1764.prol.loopexit ] ; 9 uses
  %i.ava = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv930
  %i.avb = load double, ptr %i.ava, align 8, !tbaa !9
  %gep1036 = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  store double %i.avb, ptr %gep1036, align 8, !tbaa !9
  %i.avc = getelementptr [8 x i8], ptr %3, i64 %indvars.iv930
  %i.avd = getelementptr i8, ptr %i.avc, i64 8
  %i.ave = load double, ptr %i.avd, align 8, !tbaa !9
  %i.avf = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.1 = getelementptr i8, ptr %i.avf, i64 8
  store double %i.ave, ptr %gep1036.1, align 8, !tbaa !9
  %i.avg = getelementptr [8 x i8], ptr %3, i64 %indvars.iv930
  %i.avh = getelementptr i8, ptr %i.avg, i64 16
  %i.avi = load double, ptr %i.avh, align 8, !tbaa !9
  %i.avj = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.2 = getelementptr i8, ptr %i.avj, i64 16
  store double %i.avi, ptr %gep1036.2, align 8, !tbaa !9
  %i.avk = getelementptr [8 x i8], ptr %3, i64 %indvars.iv930
  %i.avl = getelementptr i8, ptr %i.avk, i64 24
  %i.avm = load double, ptr %i.avl, align 8, !tbaa !9
  %i.avn = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.3 = getelementptr i8, ptr %i.avn, i64 24
  store double %i.avm, ptr %gep1036.3, align 8, !tbaa !9
  %i.avo = getelementptr [8 x i8], ptr %3, i64 %indvars.iv930
  %i.avp = getelementptr i8, ptr %i.avo, i64 32
  %i.avq = load double, ptr %i.avp, align 8, !tbaa !9
  %i.avr = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.4 = getelementptr i8, ptr %i.avr, i64 32
  store double %i.avq, ptr %gep1036.4, align 8, !tbaa !9
  %i.avs = getelementptr [8 x i8], ptr %3, i64 %indvars.iv930
  %i.avt = getelementptr i8, ptr %i.avs, i64 40
  %i.avu = load double, ptr %i.avt, align 8, !tbaa !9
  %i.avv = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.5 = getelementptr i8, ptr %i.avv, i64 40
  store double %i.avu, ptr %gep1036.5, align 8, !tbaa !9
  %i.avw = getelementptr [8 x i8], ptr %3, i64 %indvars.iv930
  %i.avx = getelementptr i8, ptr %i.avw, i64 48
  %i.avy = load double, ptr %i.avx, align 8, !tbaa !9
  %i.avz = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.6 = getelementptr i8, ptr %i.avz, i64 48
  store double %i.avy, ptr %gep1036.6, align 8, !tbaa !9
  %indvars.iv941.7 = add i32 %indvars.iv941.in, 8 ; 2 uses
  %i.awa = getelementptr [8 x i8], ptr %3, i64 %indvars.iv930
  %i.awb = getelementptr i8, ptr %i.awa, i64 56
  %i.awc = load double, ptr %i.awb, align 8, !tbaa !9
  %i.awd = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.7 = getelementptr i8, ptr %i.awd, i64 56
  store double %i.awc, ptr %gep1036.7, align 8, !tbaa !9
  %indvars.iv.next931.7 = add nsw i64 %indvars.iv930, 8 ; 2 uses
  %indvars.iv.next933.7 = add nuw nsw i64 %indvars.iv932, 8 ; 2 uses
  %exitcond940.not.7 = icmp eq i64 %indvars.iv.next933.7, %indvars.iv954
  br i1 %exitcond940.not.7, label %.loopexit1810, label %vec.epilog.scalar.ph1764, !llvm.loop !103

.loopexit1810:                                    ; preds = %vec.epilog.scalar.ph1764.prol.loopexit, %vec.epilog.scalar.ph1764, %vec.epilog.middle.block1774, %middle.block1756
  %indvars.iv941.lcssa = phi i32 [ %i.auu, %vec.epilog.middle.block1774 ], [ %i.aum, %middle.block1756 ], [ %indvars.iv941.lcssa1833.unr, %vec.epilog.scalar.ph1764.prol.loopexit ], [ %indvars.iv941.7, %vec.epilog.scalar.ph1764 ]
  %indvars.iv.next931.lcssa = phi i64 [ %i.aun, %vec.epilog.middle.block1774 ], [ %i.atw, %middle.block1756 ], [ %indvars.iv.next931.lcssa1832.unr, %vec.epilog.scalar.ph1764.prol.loopexit ], [ %indvars.iv.next931.7, %vec.epilog.scalar.ph1764 ]
  %i.awe = add nuw nsw i64 %indvars.iv956, %i.asz ; 2 uses
  %.not422.not631 = icmp samesign ult i64 %i.awe, %i.ata
  br i1 %.not422.not631, label %iter.check1724, label %._crit_edge636

iter.check1724:                                   ; preds = %.loopexit1810
  %i.awf = sext i32 %indvars.iv941.lcssa to i64   ; 7 uses
  %invariant.gep1037 = getelementptr [8 x i8], ptr %4, i64 %i.awe ; 11 uses
  %min.iters.check1708 = icmp ugt i32 %i.atj, 2
  %or.cond1827 = select i1 %min.iters.check1708, i1 %ident.check1705.not, i1 false
  br i1 %or.cond1827, label %vector.memcheck1706, label %.lr.ph635.preheader

vector.memcheck1706:                              ; preds = %iter.check1724
  %i.awg = add i64 %indvars.iv956, %i.atm
  %i.awh = shl i64 %i.awg, 3
  %i.awi = shl nsw i64 %i.awf, 3
  %i.awj = add i64 %i.ate, %i.awh
  %i.awk = add i64 %i.awi, %i.a
  %i.awl = sub i64 %i.awk, %i.awj
  %diff.check1707 = icmp ugt i64 %i.awl, -128
  br i1 %diff.check1707, label %.lr.ph635.preheader, label %vector.main.loop.iter.check1709

vector.main.loop.iter.check1709:                  ; preds = %vector.memcheck1706
  %min.iters.check1710 = icmp ult i32 %i.atj, 15
  br i1 %min.iters.check1710, label %vec.epilog.ph1728, label %vector.ph1711

vector.ph1711:                                    ; preds = %vector.main.loop.iter.check1709
  %i.awm = and i64 %i.atl, 12
  %n.vec1712 = and i64 %i.atl, 8589934576         ; 5 uses
  %i.awn = add nsw i64 %n.vec1712, %i.atn
  %i.awo = add nsw i64 %n.vec1712, %i.awf         ; 2 uses
  %invariant.gep2056 = getelementptr [8 x i8], ptr %3, i64 %i.awf
  %invariant.gep2058 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.atn
  br label %vector.body1713

vector.body1713:                                  ; preds = %vector.body1713, %vector.ph1711
  %index1714 = phi i64 [ 0, %vector.ph1711 ], [ %index.next1719, %vector.body1713 ] ; 3 uses
  %gep2057 = getelementptr [8 x i8], ptr %invariant.gep2056, i64 %index1714 ; 4 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %gep2057, i64 32
  %i.awq = getelementptr inbounds nuw i8, ptr %gep2057, i64 64
  %i.awr = getelementptr inbounds nuw i8, ptr %gep2057, i64 96
  %wide.load1715 = load <4 x double>, ptr %gep2057, align 8, !tbaa !9
  %wide.load1716 = load <4 x double>, ptr %i.awp, align 8, !tbaa !9
  %wide.load1717 = load <4 x double>, ptr %i.awq, align 8, !tbaa !9
  %wide.load1718 = load <4 x double>, ptr %i.awr, align 8, !tbaa !9
  %gep2059 = getelementptr [8 x i8], ptr %invariant.gep2058, i64 %index1714 ; 4 uses
  %i.aws = getelementptr i8, ptr %gep2059, i64 32
  %i.awt = getelementptr i8, ptr %gep2059, i64 64
  %i.awu = getelementptr i8, ptr %gep2059, i64 96
  store <4 x double> %wide.load1715, ptr %gep2059, align 8, !tbaa !9
  store <4 x double> %wide.load1716, ptr %i.aws, align 8, !tbaa !9
  store <4 x double> %wide.load1717, ptr %i.awt, align 8, !tbaa !9
  store <4 x double> %wide.load1718, ptr %i.awu, align 8, !tbaa !9
  %index.next1719 = add nuw i64 %index1714, 16    ; 2 uses
  %i.awv = icmp eq i64 %index.next1719, %n.vec1712
  br i1 %i.awv, label %middle.block1720, label %vector.body1713, !llvm.loop !104

middle.block1720:                                 ; preds = %vector.body1713
  %cmp.n1721 = icmp eq i64 %i.atl, %n.vec1712
  br i1 %cmp.n1721, label %._crit_edge636, label %vec.epilog.iter.check1726

vec.epilog.iter.check1726:                        ; preds = %middle.block1720
  %min.epilog.iters.check1727 = icmp eq i64 %i.awm, 0
  br i1 %min.epilog.iters.check1727, label %.lr.ph635.preheader, label %vec.epilog.ph1728, !prof !15

vec.epilog.ph1728:                                ; preds = %vector.main.loop.iter.check1709, %vec.epilog.iter.check1726
  %vec.epilog.resume.val1722 = phi i64 [ %n.vec1712, %vec.epilog.iter.check1726 ], [ 0, %vector.main.loop.iter.check1709 ]
  %n.vec1729 = and i64 %i.atl, 8589934588         ; 4 uses
  %i.aww = add nsw i64 %n.vec1729, %i.atn
  %i.awx = add nsw i64 %n.vec1729, %i.awf         ; 2 uses
  %invariant.gep2060 = getelementptr [8 x i8], ptr %3, i64 %i.awf
  %invariant.gep2062 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.atn
  br label %vec.epilog.vector.body1730

vec.epilog.vector.body1730:                       ; preds = %vec.epilog.vector.body1730, %vec.epilog.ph1728
  %index1731 = phi i64 [ %vec.epilog.resume.val1722, %vec.epilog.ph1728 ], [ %index.next1733, %vec.epilog.vector.body1730 ] ; 3 uses
  %gep2061 = getelementptr [8 x i8], ptr %invariant.gep2060, i64 %index1731
  %wide.load1732 = load <4 x double>, ptr %gep2061, align 8, !tbaa !9
  %gep2063 = getelementptr [8 x i8], ptr %invariant.gep2062, i64 %index1731
  store <4 x double> %wide.load1732, ptr %gep2063, align 8, !tbaa !9
  %index.next1733 = add nuw i64 %index1731, 4     ; 2 uses
  %i.awy = icmp eq i64 %index.next1733, %n.vec1729
  br i1 %i.awy, label %vec.epilog.middle.block1734, label %vec.epilog.vector.body1730, !llvm.loop !105

vec.epilog.middle.block1734:                      ; preds = %vec.epilog.vector.body1730
  %cmp.n1735 = icmp eq i64 %i.atl, %n.vec1729
  br i1 %cmp.n1735, label %._crit_edge636, label %.lr.ph635.preheader

.lr.ph635.preheader:                              ; preds = %vector.memcheck1706, %iter.check1724, %vec.epilog.iter.check1726, %vec.epilog.middle.block1734
  %indvars.iv947.ph = phi i64 [ %i.atn, %iter.check1724 ], [ %i.atn, %vector.memcheck1706 ], [ %i.awn, %vec.epilog.iter.check1726 ], [ %i.aww, %vec.epilog.middle.block1734 ] ; 3 uses
  %indvars.iv943.ph = phi i64 [ %i.awf, %iter.check1724 ], [ %i.awf, %vector.memcheck1706 ], [ %i.awo, %vec.epilog.iter.check1726 ], [ %i.awx, %vec.epilog.middle.block1734 ] ; 2 uses
  %i.awz = trunc i64 %indvars.iv947.ph to i32     ; 2 uses
  %i.axa = sub i32 %i.i, %i.awz
  %xtraiter1933 = and i32 %i.axa, 7               ; 2 uses
  %lcmp.mod1934.not = icmp eq i32 %xtraiter1933, 0
  br i1 %lcmp.mod1934.not, label %.lr.ph635.prol.loopexit, label %.lr.ph635.prol

.lr.ph635.prol:                                   ; preds = %.lr.ph635.preheader, %.lr.ph635.prol
  %indvars.iv947.prol = phi i64 [ %indvars.iv.next948.prol, %.lr.ph635.prol ], [ %indvars.iv947.ph, %.lr.ph635.preheader ] ; 2 uses
  %indvars.iv943.prol = phi i64 [ %indvars.iv.next944.prol, %.lr.ph635.prol ], [ %indvars.iv943.ph, %.lr.ph635.preheader ] ; 2 uses
  %prol.iter1935 = phi i32 [ %prol.iter1935.next, %.lr.ph635.prol ], [ 0, %.lr.ph635.preheader ]
  %i.axb = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv943.prol
  %i.axc = load double, ptr %i.axb, align 8, !tbaa !9
  %i.axd = mul nsw i64 %indvars.iv947.prol, %i.asy
  %gep1038.prol = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axd
  store double %i.axc, ptr %gep1038.prol, align 8, !tbaa !9
  %indvars.iv.next944.prol = add nsw i64 %indvars.iv943.prol, 1 ; 3 uses
  %indvars.iv.next948.prol = add nsw i64 %indvars.iv947.prol, 1 ; 2 uses
  %prol.iter1935.next = add i32 %prol.iter1935, 1 ; 2 uses
  %prol.iter1935.cmp.not = icmp eq i32 %prol.iter1935.next, %xtraiter1933
  br i1 %prol.iter1935.cmp.not, label %.lr.ph635.prol.loopexit, label %.lr.ph635.prol, !llvm.loop !106

.lr.ph635.prol.loopexit:                          ; preds = %.lr.ph635.prol, %.lr.ph635.preheader
  %indvars.iv.next944.lcssa.unr = phi i64 [ poison, %.lr.ph635.preheader ], [ %indvars.iv.next944.prol, %.lr.ph635.prol ]
  %indvars.iv947.unr = phi i64 [ %indvars.iv947.ph, %.lr.ph635.preheader ], [ %indvars.iv.next948.prol, %.lr.ph635.prol ]
  %indvars.iv943.unr = phi i64 [ %indvars.iv943.ph, %.lr.ph635.preheader ], [ %indvars.iv.next944.prol, %.lr.ph635.prol ]
  %i.axe = sub i32 %i.awz, %i.i
  %i.axf = icmp ugt i32 %i.axe, -8
  br i1 %i.axf, label %._crit_edge636, label %.lr.ph635

.lr.ph635:                                        ; preds = %.lr.ph635.prol.loopexit, %.lr.ph635
  %indvars.iv947 = phi i64 [ %indvars.iv.next948.7, %.lr.ph635 ], [ %indvars.iv947.unr, %.lr.ph635.prol.loopexit ] ; 9 uses
  %indvars.iv943 = phi i64 [ %indvars.iv.next944.7, %.lr.ph635 ], [ %indvars.iv943.unr, %.lr.ph635.prol.loopexit ] ; 9 uses
  %i.axg = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv943
  %i.axh = load double, ptr %i.axg, align 8, !tbaa !9
  %i.axi = mul nsw i64 %indvars.iv947, %i.asy
  %gep1038 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axi
  store double %i.axh, ptr %gep1038, align 8, !tbaa !9
  %indvars.iv.next948 = add nsw i64 %indvars.iv947, 1
  %i.axj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv943
  %i.axk = getelementptr i8, ptr %i.axj, i64 8
  %i.axl = load double, ptr %i.axk, align 8, !tbaa !9
  %i.axm = mul nsw i64 %indvars.iv.next948, %i.asy
  %gep1038.1 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axm
  store double %i.axl, ptr %gep1038.1, align 8, !tbaa !9
  %indvars.iv.next948.1 = add nsw i64 %indvars.iv947, 2
  %i.axn = getelementptr [8 x i8], ptr %3, i64 %indvars.iv943
  %i.axo = getelementptr i8, ptr %i.axn, i64 16
  %i.axp = load double, ptr %i.axo, align 8, !tbaa !9
  %i.axq = mul nsw i64 %indvars.iv.next948.1, %i.asy
  %gep1038.2 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axq
  store double %i.axp, ptr %gep1038.2, align 8, !tbaa !9
  %indvars.iv.next948.2 = add nsw i64 %indvars.iv947, 3
  %i.axr = getelementptr [8 x i8], ptr %3, i64 %indvars.iv943
  %i.axs = getelementptr i8, ptr %i.axr, i64 24
  %i.axt = load double, ptr %i.axs, align 8, !tbaa !9
  %i.axu = mul nsw i64 %indvars.iv.next948.2, %i.asy
  %gep1038.3 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axu
  store double %i.axt, ptr %gep1038.3, align 8, !tbaa !9
  %indvars.iv.next948.3 = add nsw i64 %indvars.iv947, 4
  %i.axv = getelementptr [8 x i8], ptr %3, i64 %indvars.iv943
  %i.axw = getelementptr i8, ptr %i.axv, i64 32
  %i.axx = load double, ptr %i.axw, align 8, !tbaa !9
  %i.axy = mul nsw i64 %indvars.iv.next948.3, %i.asy
  %gep1038.4 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axy
  store double %i.axx, ptr %gep1038.4, align 8, !tbaa !9
  %indvars.iv.next948.4 = add nsw i64 %indvars.iv947, 5
  %i.axz = getelementptr [8 x i8], ptr %3, i64 %indvars.iv943
  %i.aya = getelementptr i8, ptr %i.axz, i64 40
  %i.ayb = load double, ptr %i.aya, align 8, !tbaa !9
  %i.ayc = mul nsw i64 %indvars.iv.next948.4, %i.asy
  %gep1038.5 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.ayc
  store double %i.ayb, ptr %gep1038.5, align 8, !tbaa !9
  %indvars.iv.next948.5 = add nsw i64 %indvars.iv947, 6
  %i.ayd = getelementptr [8 x i8], ptr %3, i64 %indvars.iv943
  %i.aye = getelementptr i8, ptr %i.ayd, i64 48
  %i.ayf = load double, ptr %i.aye, align 8, !tbaa !9
  %i.ayg = mul nsw i64 %indvars.iv.next948.5, %i.asy
  %gep1038.6 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.ayg
  store double %i.ayf, ptr %gep1038.6, align 8, !tbaa !9
  %indvars.iv.next948.6 = add nsw i64 %indvars.iv947, 7
  %i.ayh = getelementptr [8 x i8], ptr %3, i64 %indvars.iv943
  %i.ayi = getelementptr i8, ptr %i.ayh, i64 56
  %i.ayj = load double, ptr %i.ayi, align 8, !tbaa !9
  %i.ayk = mul nsw i64 %indvars.iv.next948.6, %i.asy
  %gep1038.7 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.ayk
  store double %i.ayj, ptr %gep1038.7, align 8, !tbaa !9
  %indvars.iv.next944.7 = add nsw i64 %indvars.iv943, 8 ; 2 uses
  %indvars.iv.next948.7 = add nsw i64 %indvars.iv947, 8 ; 2 uses
  %lftr.wideiv952.7 = trunc i64 %indvars.iv.next948.7 to i32
  %exitcond953.not.7 = icmp eq i32 %i.i, %lftr.wideiv952.7
  br i1 %exitcond953.not.7, label %._crit_edge636, label %.lr.ph635, !llvm.loop !107

._crit_edge636:                                   ; preds = %.lr.ph635.prol.loopexit, %.lr.ph635, %middle.block1720, %vec.epilog.middle.block1734, %.loopexit1810
  %.32.lcssa.in = phi i64 [ %indvars.iv.next931.lcssa, %.loopexit1810 ], [ %i.awx, %vec.epilog.middle.block1734 ], [ %i.awo, %middle.block1720 ], [ %indvars.iv.next944.lcssa.unr, %.lr.ph635.prol.loopexit ], [ %indvars.iv.next944.7, %.lr.ph635 ] ; 2 uses
  %indvars.iv.next957 = add nuw nsw i64 %indvars.iv956, 1 ; 2 uses
  %indvars.iv.next955 = add nuw nsw i64 %indvars.iv954, 1
  %indvars.iv.next946 = add nuw i32 %indvars.iv945, 1
  %exitcond962.not = icmp eq i64 %indvars.iv.next957, %wide.trip.count961
  br i1 %exitcond962.not, label %._crit_edge641.loopexit, label %iter.check1763, !llvm.loop !108

._crit_edge641.loopexit:                          ; preds = %._crit_edge636
  %sext984 = shl i64 %.32.lcssa.in, 32
  %i.ayl = ashr exact i64 %sext984, 32
  br label %iter.check1796

iter.check1796:                                   ; preds = %._crit_edge641.loopexit, %.split627.us
  %.11386.lcssa = phi i32 [ 0, %.split627.us ], [ %i.atb, %._crit_edge641.loopexit ] ; 4 uses
  %.30.lcssa = phi i64 [ %indvars.iv.next920.lcssa, %.split627.us ], [ %i.ayl, %._crit_edge641.loopexit ] ; 7 uses
  %i.aym = mul nsw i32 %.11386.lcssa, %i.d
  %i.ayn = sext i32 %i.aym to i64                 ; 2 uses
  %i.ayo = add nsw i32 %.11386.lcssa, 1
  %wide.trip.count971 = zext i32 %i.ayo to i64    ; 8 uses
  %invariant.gep1039 = getelementptr [8 x i8], ptr %4, i64 %i.ayn ; 11 uses
  %min.iters.check1781 = icmp ult i32 %.11386.lcssa, 3
  br i1 %min.iters.check1781, label %vec.epilog.scalar.ph1797.preheader, label %vector.memcheck1779

vector.memcheck1779:                              ; preds = %iter.check1796
  %i.ayp = shl nsw i64 %i.ayn, 3
  %i.ayq = add i64 %i.ayp, %i.b
  %i.ayr = shl i64 %.30.lcssa, 3
  %i.ays = add i64 %i.ayr, %i.a
  %i.ayt = sub i64 %i.ays, %i.ayq
  %diff.check1780 = icmp ugt i64 %i.ayt, -128
  br i1 %diff.check1780, label %vec.epilog.scalar.ph1797.preheader, label %vector.main.loop.iter.check1782

vector.main.loop.iter.check1782:                  ; preds = %vector.memcheck1779
  %min.iters.check1783 = icmp ult i32 %.11386.lcssa, 15
  br i1 %min.iters.check1783, label %vec.epilog.ph1800, label %vector.ph1784

vector.ph1784:                                    ; preds = %vector.main.loop.iter.check1782
  %i.ayu = and i64 %wide.trip.count971, 12
  %n.vec1785 = and i64 %wide.trip.count971, 2147483632 ; 5 uses
  %i.ayv = add i64 %.30.lcssa, %n.vec1785
  %i.ayw = getelementptr [8 x i8], ptr %3, i64 %.30.lcssa
  br label %vector.body1786

vector.body1786:                                  ; preds = %vector.body1786, %vector.ph1784
  %index1787 = phi i64 [ 0, %vector.ph1784 ], [ %index.next1792, %vector.body1786 ] ; 3 uses
  %i.ayx = getelementptr [8 x i8], ptr %i.ayw, i64 %index1787 ; 4 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 32
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayx, i64 64
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayx, i64 96
  %wide.load1788 = load <4 x double>, ptr %i.ayx, align 8, !tbaa !9
  %wide.load1789 = load <4 x double>, ptr %i.ayy, align 8, !tbaa !9
  %wide.load1790 = load <4 x double>, ptr %i.ayz, align 8, !tbaa !9
  %wide.load1791 = load <4 x double>, ptr %i.aza, align 8, !tbaa !9
  %i.azb = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %index1787 ; 4 uses
  %i.azc = getelementptr i8, ptr %i.azb, i64 32
  %i.azd = getelementptr i8, ptr %i.azb, i64 64
  %i.aze = getelementptr i8, ptr %i.azb, i64 96
  store <4 x double> %wide.load1788, ptr %i.azb, align 8, !tbaa !9
  store <4 x double> %wide.load1789, ptr %i.azc, align 8, !tbaa !9
  store <4 x double> %wide.load1790, ptr %i.azd, align 8, !tbaa !9
  store <4 x double> %wide.load1791, ptr %i.aze, align 8, !tbaa !9
  %index.next1792 = add nuw i64 %index1787, 16    ; 2 uses
  %i.azf = icmp eq i64 %index.next1792, %n.vec1785
  br i1 %i.azf, label %middle.block1793, label %vector.body1786, !llvm.loop !109

middle.block1793:                                 ; preds = %vector.body1786
  %cmp.n1794 = icmp eq i64 %n.vec1785, %wide.trip.count971
  br i1 %cmp.n1794, label %.loopexit, label %vec.epilog.iter.check1798

vec.epilog.iter.check1798:                        ; preds = %middle.block1793
  %min.epilog.iters.check1799 = icmp eq i64 %i.ayu, 0
  br i1 %min.epilog.iters.check1799, label %vec.epilog.scalar.ph1797.preheader, label %vec.epilog.ph1800, !prof !15

vec.epilog.ph1800:                                ; preds = %vector.main.loop.iter.check1782, %vec.epilog.iter.check1798
  %vec.epilog.resume.val1795 = phi i64 [ %n.vec1785, %vec.epilog.iter.check1798 ], [ 0, %vector.main.loop.iter.check1782 ]
  %n.vec1801 = and i64 %wide.trip.count971, 2147483644 ; 4 uses
  %i.azg = add i64 %.30.lcssa, %n.vec1801
  %i.azh = getelementptr [8 x i8], ptr %3, i64 %.30.lcssa
  br label %vec.epilog.vector.body1802

vec.epilog.vector.body1802:                       ; preds = %vec.epilog.vector.body1802, %vec.epilog.ph1800
  %index1803 = phi i64 [ %vec.epilog.resume.val1795, %vec.epilog.ph1800 ], [ %index.next1805, %vec.epilog.vector.body1802 ] ; 3 uses
  %i.azi = getelementptr [8 x i8], ptr %i.azh, i64 %index1803
  %wide.load1804 = load <4 x double>, ptr %i.azi, align 8, !tbaa !9
  %i.azj = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %index1803
  store <4 x double> %wide.load1804, ptr %i.azj, align 8, !tbaa !9
  %index.next1805 = add nuw i64 %index1803, 4     ; 2 uses
  %i.azk = icmp eq i64 %index.next1805, %n.vec1801
  br i1 %i.azk, label %vec.epilog.middle.block1806, label %vec.epilog.vector.body1802, !llvm.loop !110

vec.epilog.middle.block1806:                      ; preds = %vec.epilog.vector.body1802
  %cmp.n1807 = icmp eq i64 %n.vec1801, %wide.trip.count971
  br i1 %cmp.n1807, label %.loopexit, label %vec.epilog.scalar.ph1797.preheader

vec.epilog.scalar.ph1797.preheader:               ; preds = %vector.memcheck1779, %iter.check1796, %vec.epilog.iter.check1798, %vec.epilog.middle.block1806
  %indvars.iv966.ph = phi i64 [ 0, %iter.check1796 ], [ 0, %vector.memcheck1779 ], [ %n.vec1785, %vec.epilog.iter.check1798 ], [ %n.vec1801, %vec.epilog.middle.block1806 ] ; 4 uses
  %indvars.iv964.ph = phi i64 [ %.30.lcssa, %iter.check1796 ], [ %.30.lcssa, %vector.memcheck1779 ], [ %i.ayv, %vec.epilog.iter.check1798 ], [ %i.azg, %vec.epilog.middle.block1806 ] ; 2 uses
  %i.azl = sub nsw i64 %wide.trip.count971, %indvars.iv966.ph
  %xtraiter1936 = and i64 %i.azl, 7               ; 2 uses
  %lcmp.mod1937.not = icmp eq i64 %xtraiter1936, 0
  br i1 %lcmp.mod1937.not, label %vec.epilog.scalar.ph1797.prol.loopexit, label %vec.epilog.scalar.ph1797.prol

vec.epilog.scalar.ph1797.prol:                    ; preds = %vec.epilog.scalar.ph1797.preheader, %vec.epilog.scalar.ph1797.prol
  %indvars.iv966.prol = phi i64 [ %indvars.iv.next967.prol, %vec.epilog.scalar.ph1797.prol ], [ %indvars.iv966.ph, %vec.epilog.scalar.ph1797.preheader ] ; 2 uses
  %indvars.iv964.prol = phi i64 [ %indvars.iv.next965.prol, %vec.epilog.scalar.ph1797.prol ], [ %indvars.iv964.ph, %vec.epilog.scalar.ph1797.preheader ] ; 2 uses
  %prol.iter1938 = phi i64 [ %prol.iter1938.next, %vec.epilog.scalar.ph1797.prol ], [ 0, %vec.epilog.scalar.ph1797.preheader ]
  %i.azm = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv964.prol
  %i.azn = load double, ptr %i.azm, align 8, !tbaa !9
  %gep1040.prol = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966.prol
  store double %i.azn, ptr %gep1040.prol, align 8, !tbaa !9
  %indvars.iv.next965.prol = add nsw i64 %indvars.iv964.prol, 1 ; 2 uses
  %indvars.iv.next967.prol = add nuw nsw i64 %indvars.iv966.prol, 1 ; 2 uses
  %prol.iter1938.next = add i64 %prol.iter1938, 1 ; 2 uses
  %prol.iter1938.cmp.not = icmp eq i64 %prol.iter1938.next, %xtraiter1936
  br i1 %prol.iter1938.cmp.not, label %vec.epilog.scalar.ph1797.prol.loopexit, label %vec.epilog.scalar.ph1797.prol, !llvm.loop !111

vec.epilog.scalar.ph1797.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1797.prol, %vec.epilog.scalar.ph1797.preheader
  %indvars.iv966.unr = phi i64 [ %indvars.iv966.ph, %vec.epilog.scalar.ph1797.preheader ], [ %indvars.iv.next967.prol, %vec.epilog.scalar.ph1797.prol ]
  %indvars.iv964.unr = phi i64 [ %indvars.iv964.ph, %vec.epilog.scalar.ph1797.preheader ], [ %indvars.iv.next965.prol, %vec.epilog.scalar.ph1797.prol ]
  %i.azo = sub nsw i64 %indvars.iv966.ph, %wide.trip.count971
  %i.azp = icmp ugt i64 %i.azo, -8
  br i1 %i.azp, label %.loopexit, label %vec.epilog.scalar.ph1797

vec.epilog.scalar.ph1797:                         ; preds = %vec.epilog.scalar.ph1797.prol.loopexit, %vec.epilog.scalar.ph1797
  %indvars.iv966 = phi i64 [ %indvars.iv.next967.7, %vec.epilog.scalar.ph1797 ], [ %indvars.iv966.unr, %vec.epilog.scalar.ph1797.prol.loopexit ] ; 9 uses
  %indvars.iv964 = phi i64 [ %indvars.iv.next965.7, %vec.epilog.scalar.ph1797 ], [ %indvars.iv964.unr, %vec.epilog.scalar.ph1797.prol.loopexit ] ; 9 uses
  %i.azq = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv964
  %i.azr = load double, ptr %i.azq, align 8, !tbaa !9
  %gep1040 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  store double %i.azr, ptr %gep1040, align 8, !tbaa !9
  %i.azs = getelementptr [8 x i8], ptr %3, i64 %indvars.iv964
  %i.azt = getelementptr i8, ptr %i.azs, i64 8
  %i.azu = load double, ptr %i.azt, align 8, !tbaa !9
  %i.azv = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.1 = getelementptr i8, ptr %i.azv, i64 8
  store double %i.azu, ptr %gep1040.1, align 8, !tbaa !9
  %i.azw = getelementptr [8 x i8], ptr %3, i64 %indvars.iv964
  %i.azx = getelementptr i8, ptr %i.azw, i64 16
  %i.azy = load double, ptr %i.azx, align 8, !tbaa !9
  %i.azz = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.2 = getelementptr i8, ptr %i.azz, i64 16
  store double %i.azy, ptr %gep1040.2, align 8, !tbaa !9
  %i.baa = getelementptr [8 x i8], ptr %3, i64 %indvars.iv964
  %i.bab = getelementptr i8, ptr %i.baa, i64 24
  %i.bac = load double, ptr %i.bab, align 8, !tbaa !9
  %i.bad = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.3 = getelementptr i8, ptr %i.bad, i64 24
  store double %i.bac, ptr %gep1040.3, align 8, !tbaa !9
  %i.bae = getelementptr [8 x i8], ptr %3, i64 %indvars.iv964
  %i.baf = getelementptr i8, ptr %i.bae, i64 32
  %i.bag = load double, ptr %i.baf, align 8, !tbaa !9
  %i.bah = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.4 = getelementptr i8, ptr %i.bah, i64 32
  store double %i.bag, ptr %gep1040.4, align 8, !tbaa !9
  %i.bai = getelementptr [8 x i8], ptr %3, i64 %indvars.iv964
  %i.baj = getelementptr i8, ptr %i.bai, i64 40
  %i.bak = load double, ptr %i.baj, align 8, !tbaa !9
  %i.bal = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.5 = getelementptr i8, ptr %i.bal, i64 40
  store double %i.bak, ptr %gep1040.5, align 8, !tbaa !9
  %i.bam = getelementptr [8 x i8], ptr %3, i64 %indvars.iv964
  %i.ban = getelementptr i8, ptr %i.bam, i64 48
  %i.bao = load double, ptr %i.ban, align 8, !tbaa !9
  %i.bap = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.6 = getelementptr i8, ptr %i.bap, i64 48
  store double %i.bao, ptr %gep1040.6, align 8, !tbaa !9
  %i.baq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv964
  %i.bar = getelementptr i8, ptr %i.baq, i64 56
  %i.bas = load double, ptr %i.bar, align 8, !tbaa !9
  %i.bat = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.7 = getelementptr i8, ptr %i.bat, i64 56
  store double %i.bas, ptr %gep1040.7, align 8, !tbaa !9
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
