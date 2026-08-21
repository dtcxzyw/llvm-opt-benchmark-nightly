Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrttf?download=true
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@dtrttf_:bb.a
  %indvars.iv797.lcssa = phi i32 [ %i.wb, %vec.epilog.middle.block1368 ], [ %i.vt, %middle.block1350 ], [ %indvars.iv797.lcssa1868.unr, %vec.epilog.scalar.ph1358.prol.loopexit ], [ %indvars.iv797.7, %vec.epilog.scalar.ph1358 ]
  %indvars.iv.next787.lcssa = phi i64 [ %i.vu, %vec.epilog.middle.block1368 ], [ %i.vd, %middle.block1350 ], [ %indvars.iv.next787.lcssa1867.unr, %vec.epilog.scalar.ph1358.prol.loopexit ], [ %indvars.iv.next787.7, %vec.epilog.scalar.ph1358 ]
  %i.xl = add nsw i64 %indvars.iv812, %i.ui       ; 2 uses
  %.not439.not553 = icmp slt i64 %i.xl, %i.uj
  br i1 %.not439.not553, label %iter.check1318, label %._crit_edge558

iter.check1318:                                   ; preds = %.loopexit1813
  %i.xm = sext i32 %indvars.iv797.lcssa to i64    ; 7 uses
  %invariant.gep1015 = getelementptr [8 x i8], ptr %3, i64 %i.xl ; 11 uses
  %min.iters.check1302 = icmp ugt i32 %i.up, 2
  %or.cond1821 = select i1 %min.iters.check1302, i1 %ident.check1299.not, i1 false
  br i1 %or.cond1821, label %vector.memcheck1300, label %.lr.ph557.preheader

vector.memcheck1300:                              ; preds = %iter.check1318
  %i.xn = add i64 %i.us, %i.ut
  %i.xo = shl i64 %i.xn, 3
  %i.xp = sub i64 %i.uk, %i.xo
  %i.xq = shl nsw i64 %i.xm, 3
  %i.xr = add i64 %i.xp, %i.xq
  %i.xs = add i64 %i.xr, -1
  %diff.check1301 = icmp ult i64 %i.xs, 127
  br i1 %diff.check1301, label %.lr.ph557.preheader, label %vector.main.loop.iter.check1303

vector.main.loop.iter.check1303:                  ; preds = %vector.memcheck1300
  %min.iters.check1304 = icmp ult i32 %i.up, 15
  br i1 %min.iters.check1304, label %vec.epilog.ph1322, label %vector.ph1305

vector.ph1305:                                    ; preds = %vector.main.loop.iter.check1303
  %i.xt = and i64 %i.ur, 12
  %n.vec1306 = and i64 %i.ur, 8589934576          ; 5 uses
  %i.xu = add nsw i64 %n.vec1306, %i.uu
  %i.xv = add nsw i64 %n.vec1306, %i.xm           ; 2 uses
  %invariant.gep2012 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.uu
  %invariant.gep2014 = getelementptr [8 x i8], ptr %5, i64 %i.xm
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1305
  %index1308 = phi i64 [ 0, %vector.ph1305 ], [ %index.next1313, %vector.body1307 ] ; 3 uses
  %gep2013 = getelementptr [8 x i8], ptr %invariant.gep2012, i64 %index1308 ; 4 uses
  %i.xw = getelementptr i8, ptr %gep2013, i64 32
  %i.xx = getelementptr i8, ptr %gep2013, i64 64
  %i.xy = getelementptr i8, ptr %gep2013, i64 96
  %wide.load1309 = load <4 x double>, ptr %gep2013, align 8, !tbaa !9
  %wide.load1310 = load <4 x double>, ptr %i.xw, align 8, !tbaa !9
  %wide.load1311 = load <4 x double>, ptr %i.xx, align 8, !tbaa !9
  %wide.load1312 = load <4 x double>, ptr %i.xy, align 8, !tbaa !9
  %gep2015 = getelementptr [8 x i8], ptr %invariant.gep2014, i64 %index1308 ; 4 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %gep2015, i64 32
  %i.ya = getelementptr inbounds nuw i8, ptr %gep2015, i64 64
  %i.yb = getelementptr inbounds nuw i8, ptr %gep2015, i64 96
  store <4 x double> %wide.load1309, ptr %gep2015, align 8, !tbaa !9
  store <4 x double> %wide.load1310, ptr %i.xz, align 8, !tbaa !9
  store <4 x double> %wide.load1311, ptr %i.ya, align 8, !tbaa !9
  store <4 x double> %wide.load1312, ptr %i.yb, align 8, !tbaa !9
  %index.next1313 = add nuw i64 %index1308, 16    ; 2 uses
  %i.yc = icmp eq i64 %index.next1313, %n.vec1306
  br i1 %i.yc, label %middle.block1314, label %vector.body1307, !llvm.loop !57

middle.block1314:                                 ; preds = %vector.body1307
  %cmp.n1315 = icmp eq i64 %i.ur, %n.vec1306
  br i1 %cmp.n1315, label %._crit_edge558, label %vec.epilog.iter.check1320

vec.epilog.iter.check1320:                        ; preds = %middle.block1314
  %min.epilog.iters.check1321 = icmp eq i64 %i.xt, 0
  br i1 %min.epilog.iters.check1321, label %.lr.ph557.preheader, label %vec.epilog.ph1322, !prof !15

vec.epilog.ph1322:                                ; preds = %vector.main.loop.iter.check1303, %vec.epilog.iter.check1320
  %vec.epilog.resume.val1316 = phi i64 [ %n.vec1306, %vec.epilog.iter.check1320 ], [ 0, %vector.main.loop.iter.check1303 ]
  %n.vec1323 = and i64 %i.ur, 8589934588          ; 4 uses
  %i.yd = add nsw i64 %n.vec1323, %i.uu
  %i.ye = add nsw i64 %n.vec1323, %i.xm           ; 2 uses
  %invariant.gep2016 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.uu
  %invariant.gep2018 = getelementptr [8 x i8], ptr %5, i64 %i.xm
  br label %vec.epilog.vector.body1324

vec.epilog.vector.body1324:                       ; preds = %vec.epilog.vector.body1324, %vec.epilog.ph1322
  %index1325 = phi i64 [ %vec.epilog.resume.val1316, %vec.epilog.ph1322 ], [ %index.next1327, %vec.epilog.vector.body1324 ] ; 3 uses
  %gep2017 = getelementptr [8 x i8], ptr %invariant.gep2016, i64 %index1325
  %wide.load1326 = load <4 x double>, ptr %gep2017, align 8, !tbaa !9
  %gep2019 = getelementptr [8 x i8], ptr %invariant.gep2018, i64 %index1325
  store <4 x double> %wide.load1326, ptr %gep2019, align 8, !tbaa !9
  %index.next1327 = add nuw i64 %index1325, 4     ; 2 uses
  %i.yf = icmp eq i64 %index.next1327, %n.vec1323
  br i1 %i.yf, label %vec.epilog.middle.block1328, label %vec.epilog.vector.body1324, !llvm.loop !58

vec.epilog.middle.block1328:                      ; preds = %vec.epilog.vector.body1324
  %cmp.n1329 = icmp eq i64 %i.ur, %n.vec1323
  br i1 %cmp.n1329, label %._crit_edge558, label %.lr.ph557.preheader

.lr.ph557.preheader:                              ; preds = %vector.memcheck1300, %iter.check1318, %vec.epilog.iter.check1320, %vec.epilog.middle.block1328
  %indvars.iv803.ph = phi i64 [ %i.uu, %iter.check1318 ], [ %i.uu, %vector.memcheck1300 ], [ %i.xu, %vec.epilog.iter.check1320 ], [ %i.yd, %vec.epilog.middle.block1328 ] ; 3 uses
  %indvars.iv799.ph = phi i64 [ %i.xm, %iter.check1318 ], [ %i.xm, %vector.memcheck1300 ], [ %i.xv, %vec.epilog.iter.check1320 ], [ %i.ye, %vec.epilog.middle.block1328 ] ; 2 uses
  %i.yg = trunc i64 %indvars.iv803.ph to i32      ; 2 uses
  %i.yh = sub i32 %i.i, %i.yg
  %xtraiter1909 = and i32 %i.yh, 7                ; 2 uses
  %lcmp.mod1910.not = icmp eq i32 %xtraiter1909, 0
  br i1 %lcmp.mod1910.not, label %.lr.ph557.prol.loopexit, label %.lr.ph557.prol

.lr.ph557.prol:                                   ; preds = %.lr.ph557.preheader, %.lr.ph557.prol
  %indvars.iv803.prol = phi i64 [ %indvars.iv.next804.prol, %.lr.ph557.prol ], [ %indvars.iv803.ph, %.lr.ph557.preheader ] ; 2 uses
  %indvars.iv799.prol = phi i64 [ %indvars.iv.next800.prol, %.lr.ph557.prol ], [ %indvars.iv799.ph, %.lr.ph557.preheader ] ; 2 uses
  %prol.iter1911 = phi i32 [ %prol.iter1911.next, %.lr.ph557.prol ], [ 0, %.lr.ph557.preheader ]
  %i.yi = mul nsw i64 %indvars.iv803.prol, %i.uh
  %gep1016.prol = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yi
  %i.yj = load double, ptr %gep1016.prol, align 8, !tbaa !9
  %i.yk = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv799.prol
  store double %i.yj, ptr %i.yk, align 8, !tbaa !9
  %indvars.iv.next800.prol = add nsw i64 %indvars.iv799.prol, 1 ; 3 uses
  %indvars.iv.next804.prol = add nsw i64 %indvars.iv803.prol, 1 ; 2 uses
  %prol.iter1911.next = add i32 %prol.iter1911, 1 ; 2 uses
  %prol.iter1911.cmp.not = icmp eq i32 %prol.iter1911.next, %xtraiter1909
  br i1 %prol.iter1911.cmp.not, label %.lr.ph557.prol.loopexit, label %.lr.ph557.prol, !llvm.loop !59

.lr.ph557.prol.loopexit:                          ; preds = %.lr.ph557.prol, %.lr.ph557.preheader
  %indvars.iv.next800.lcssa.unr = phi i64 [ poison, %.lr.ph557.preheader ], [ %indvars.iv.next800.prol, %.lr.ph557.prol ]
  %indvars.iv803.unr = phi i64 [ %indvars.iv803.ph, %.lr.ph557.preheader ], [ %indvars.iv.next804.prol, %.lr.ph557.prol ]
  %indvars.iv799.unr = phi i64 [ %indvars.iv799.ph, %.lr.ph557.preheader ], [ %indvars.iv.next800.prol, %.lr.ph557.prol ]
  %i.yl = sub i32 %i.yg, %i.i
  %i.ym = icmp ugt i32 %i.yl, -8
  br i1 %i.ym, label %._crit_edge558, label %.lr.ph557

.lr.ph557:                                        ; preds = %.lr.ph557.prol.loopexit, %.lr.ph557
  %indvars.iv803 = phi i64 [ %indvars.iv.next804.7, %.lr.ph557 ], [ %indvars.iv803.unr, %.lr.ph557.prol.loopexit ] ; 9 uses
  %indvars.iv799 = phi i64 [ %indvars.iv.next800.7, %.lr.ph557 ], [ %indvars.iv799.unr, %.lr.ph557.prol.loopexit ] ; 9 uses
  %i.yn = mul nsw i64 %indvars.iv803, %i.uh
  %gep1016 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yn
  %i.yo = load double, ptr %gep1016, align 8, !tbaa !9
  %i.yp = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv799
  store double %i.yo, ptr %i.yp, align 8, !tbaa !9
  %indvars.iv.next804 = add nsw i64 %indvars.iv803, 1
  %i.yq = mul nsw i64 %indvars.iv.next804, %i.uh
  %gep1016.1 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yq
  %i.yr = load double, ptr %gep1016.1, align 8, !tbaa !9
  %i.ys = getelementptr [8 x i8], ptr %5, i64 %indvars.iv799
  %i.yt = getelementptr i8, ptr %i.ys, i64 8
  store double %i.yr, ptr %i.yt, align 8, !tbaa !9
  %indvars.iv.next804.1 = add nsw i64 %indvars.iv803, 2
  %i.yu = mul nsw i64 %indvars.iv.next804.1, %i.uh
  %gep1016.2 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yu
  %i.yv = load double, ptr %gep1016.2, align 8, !tbaa !9
  %i.yw = getelementptr [8 x i8], ptr %5, i64 %indvars.iv799
  %i.yx = getelementptr i8, ptr %i.yw, i64 16
  store double %i.yv, ptr %i.yx, align 8, !tbaa !9
  %indvars.iv.next804.2 = add nsw i64 %indvars.iv803, 3
  %i.yy = mul nsw i64 %indvars.iv.next804.2, %i.uh
  %gep1016.3 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.yy
  %i.yz = load double, ptr %gep1016.3, align 8, !tbaa !9
  %i.za = getelementptr [8 x i8], ptr %5, i64 %indvars.iv799
  %i.zb = getelementptr i8, ptr %i.za, i64 24
  store double %i.yz, ptr %i.zb, align 8, !tbaa !9
  %indvars.iv.next804.3 = add nsw i64 %indvars.iv803, 4
  %i.zc = mul nsw i64 %indvars.iv.next804.3, %i.uh
  %gep1016.4 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.zc
  %i.zd = load double, ptr %gep1016.4, align 8, !tbaa !9
  %i.ze = getelementptr [8 x i8], ptr %5, i64 %indvars.iv799
  %i.zf = getelementptr i8, ptr %i.ze, i64 32
  store double %i.zd, ptr %i.zf, align 8, !tbaa !9
  %indvars.iv.next804.4 = add nsw i64 %indvars.iv803, 5
  %i.zg = mul nsw i64 %indvars.iv.next804.4, %i.uh
  %gep1016.5 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.zg
  %i.zh = load double, ptr %gep1016.5, align 8, !tbaa !9
  %i.zi = getelementptr [8 x i8], ptr %5, i64 %indvars.iv799
  %i.zj = getelementptr i8, ptr %i.zi, i64 40
  store double %i.zh, ptr %i.zj, align 8, !tbaa !9
  %indvars.iv.next804.5 = add nsw i64 %indvars.iv803, 6
  %i.zk = mul nsw i64 %indvars.iv.next804.5, %i.uh
  %gep1016.6 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.zk
  %i.zl = load double, ptr %gep1016.6, align 8, !tbaa !9
  %i.zm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv799
  %i.zn = getelementptr i8, ptr %i.zm, i64 48
  store double %i.zl, ptr %i.zn, align 8, !tbaa !9
  %indvars.iv.next804.6 = add nsw i64 %indvars.iv803, 7
  %i.zo = mul nsw i64 %indvars.iv.next804.6, %i.uh
  %gep1016.7 = getelementptr [8 x i8], ptr %invariant.gep1015, i64 %i.zo
  %i.zp = load double, ptr %gep1016.7, align 8, !tbaa !9
  %i.zq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv799
  %i.zr = getelementptr i8, ptr %i.zq, i64 56
  store double %i.zp, ptr %i.zr, align 8, !tbaa !9
  %indvars.iv.next800.7 = add nsw i64 %indvars.iv799, 8 ; 2 uses
  %indvars.iv.next804.7 = add nsw i64 %indvars.iv803, 8 ; 2 uses
  %lftr.wideiv808.7 = trunc i64 %indvars.iv.next804.7 to i32
  %exitcond809.not.7 = icmp eq i32 %i.i, %lftr.wideiv808.7
  br i1 %exitcond809.not.7, label %._crit_edge558, label %.lr.ph557, !llvm.loop !60

._crit_edge558:                                   ; preds = %.lr.ph557.prol.loopexit, %.lr.ph557, %middle.block1314, %vec.epilog.middle.block1328, %.loopexit1813
  %.15.lcssa.in = phi i64 [ %indvars.iv.next787.lcssa, %.loopexit1813 ], [ %i.ye, %vec.epilog.middle.block1328 ], [ %i.xv, %middle.block1314 ], [ %indvars.iv.next800.lcssa.unr, %.lr.ph557.prol.loopexit ], [ %indvars.iv.next800.7, %.lr.ph557 ]
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
  %i.zs = zext nneg i32 %i.i to i64               ; 6 uses
  %i.zt = lshr exact i64 %i.zs, 1                 ; 6 uses
  %i.zu = sext i32 %i.d to i64                    ; 3 uses
  %i.zv = zext nneg i32 %i.i to i64
  %i.zw = zext nneg i32 %i.v to i64
  %wide.trip.count839 = zext nneg i32 %i.v to i64
  %i.zx = sub i64 %i.b, %i.a                      ; 2 uses
  %i.zy = shl nsw i64 %i.zu, 3
  %i.zz = sub nuw nsw i64 -8, %i.zy
  %ident.check1406.not = icmp eq i32 %i.d, 1
  br label %iter.check1434

iter.check1434:                                   ; preds = %.lr.ph574.preheader, %._crit_edge569
  %indvars.iv829 = phi i64 [ 0, %.lr.ph574.preheader ], [ %indvars.iv.next830, %._crit_edge569 ] ; 16 uses
  %.16573 = phi i32 [ 0, %.lr.ph574.preheader ], [ %.18.lcssa, %._crit_edge569 ] ; 5 uses
  %i.aaa = add nuw i64 %indvars.iv829, 1          ; 5 uses
  %i.aab = sub nsw i64 %i.zs, %indvars.iv829      ; 7 uses
  %i.aac = mul i64 %i.zz, %indvars.iv829
  %i.aad = add i64 %i.zx, %i.aac
  %i.aae = add nuw nsw i64 %indvars.iv829, %i.zw  ; 2 uses
  %i.aaf = sext i32 %.16573 to i64                ; 7 uses
  %invariant.gep1017 = getelementptr [8 x i8], ptr %3, i64 %i.aae ; 3 uses
  %min.iters.check1410 = icmp samesign ugt i64 %indvars.iv829, 2
  %or.cond1822 = select i1 %min.iters.check1410, i1 %ident.check1406.not, i1 false
  br i1 %or.cond1822, label %vector.memcheck1407, label %vec.epilog.scalar.ph1435.preheader

vector.memcheck1407:                              ; preds = %iter.check1434
  %i.aag = add nuw i64 %indvars.iv829, %i.zs
  %i.aah = shl i64 %i.aag, 3
  %i.aai = sub i64 %i.zx, %i.aah
  %i.aaj = shl nsw i64 %i.aaf, 3
  %i.aak = add i64 %i.aai, %i.aaj
  %i.aal = add i64 %i.aak, -1
  %diff.check1408 = icmp ult i64 %i.aal, 127
  br i1 %diff.check1408, label %vec.epilog.scalar.ph1435.preheader, label %vector.main.loop.iter.check1411

vector.main.loop.iter.check1411:                  ; preds = %vector.memcheck1407
  %min.iters.check1412 = icmp samesign ult i64 %indvars.iv829, 15
  br i1 %min.iters.check1412, label %vec.epilog.ph1438, label %vector.ph1413

vector.ph1413:                                    ; preds = %vector.main.loop.iter.check1411
  %i.aam = and i64 %i.aaa, 12
  %n.vec1414 = and i64 %i.aaa, -16                ; 5 uses
  %i.aan = add i64 %i.zt, %n.vec1414
  %i.aao = add i64 %n.vec1414, %i.aaf             ; 2 uses
  %i.aap = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.16573, i64 0
  %i.aaq = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %i.zt
  %invariant.gep2020 = getelementptr [8 x i8], ptr %5, i64 %i.aaf
  br label %vector.body1415

vector.body1415:                                  ; preds = %vector.body1415, %vector.ph1413
  %index1416 = phi i64 [ 0, %vector.ph1413 ], [ %index.next1425, %vector.body1415 ] ; 3 uses
  %vec.phi1417 = phi <4 x i32> [ %i.aap, %vector.ph1413 ], [ %i.aar, %vector.body1415 ]
  %vec.phi1418 = phi <4 x i32> [ zeroinitializer, %vector.ph1413 ], [ %i.aas, %vector.body1415 ]
  %vec.phi1419 = phi <4 x i32> [ zeroinitializer, %vector.ph1413 ], [ %i.aat, %vector.body1415 ]
  %vec.phi1420 = phi <4 x i32> [ zeroinitializer, %vector.ph1413 ], [ %i.aau, %vector.body1415 ]
  %i.aar = add <4 x i32> %vec.phi1417, splat (i32 1) ; 2 uses
  %i.aas = add <4 x i32> %vec.phi1418, splat (i32 1) ; 2 uses
  %i.aat = add <4 x i32> %vec.phi1419, splat (i32 1) ; 2 uses
  %i.aau = add <4 x i32> %vec.phi1420, splat (i32 1) ; 2 uses
  %i.aav = getelementptr [8 x i8], ptr %i.aaq, i64 %index1416 ; 4 uses
  %i.aaw = getelementptr i8, ptr %i.aav, i64 32
  %i.aax = getelementptr i8, ptr %i.aav, i64 64
  %i.aay = getelementptr i8, ptr %i.aav, i64 96
  %wide.load1421 = load <4 x double>, ptr %i.aav, align 8, !tbaa !9
  %wide.load1422 = load <4 x double>, ptr %i.aaw, align 8, !tbaa !9
  %wide.load1423 = load <4 x double>, ptr %i.aax, align 8, !tbaa !9
  %wide.load1424 = load <4 x double>, ptr %i.aay, align 8, !tbaa !9
  %gep2021 = getelementptr [8 x i8], ptr %invariant.gep2020, i64 %index1416 ; 4 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %gep2021, i64 32
  %i.aba = getelementptr inbounds nuw i8, ptr %gep2021, i64 64
  %i.abb = getelementptr inbounds nuw i8, ptr %gep2021, i64 96
  store <4 x double> %wide.load1421, ptr %gep2021, align 8, !tbaa !9
  store <4 x double> %wide.load1422, ptr %i.aaz, align 8, !tbaa !9
  store <4 x double> %wide.load1423, ptr %i.aba, align 8, !tbaa !9
  store <4 x double> %wide.load1424, ptr %i.abb, align 8, !tbaa !9
  %index.next1425 = add nuw i64 %index1416, 16    ; 2 uses
  %i.abc = icmp eq i64 %index.next1425, %n.vec1414
  br i1 %i.abc, label %middle.block1426, label %vector.body1415, !llvm.loop !62

middle.block1426:                                 ; preds = %vector.body1415
  %bin.rdx1427 = add <4 x i32> %i.aas, %i.aar
  %bin.rdx1428 = add <4 x i32> %i.aat, %bin.rdx1427
  %bin.rdx1429 = add <4 x i32> %i.aau, %bin.rdx1428
  %i.abd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1429) ; 3 uses
  %cmp.n1430 = icmp eq i64 %i.aaa, %n.vec1414
  br i1 %cmp.n1430, label %.preheader474, label %vec.epilog.iter.check1436

vec.epilog.iter.check1436:                        ; preds = %middle.block1426
  %min.epilog.iters.check1437 = icmp eq i64 %i.aam, 0
  br i1 %min.epilog.iters.check1437, label %vec.epilog.scalar.ph1435.preheader, label %vec.epilog.ph1438, !prof !15

vec.epilog.ph1438:                                ; preds = %vector.main.loop.iter.check1411, %vec.epilog.iter.check1436
  %vec.epilog.resume.val1431 = phi i64 [ %n.vec1414, %vec.epilog.iter.check1436 ], [ 0, %vector.main.loop.iter.check1411 ]
  %bc.merge.rdx1432 = phi i32 [ %i.abd, %vec.epilog.iter.check1436 ], [ %.16573, %vector.main.loop.iter.check1411 ]
  %n.vec1439 = and i64 %i.aaa, -4                 ; 4 uses
  %i.abe = add i64 %i.zt, %n.vec1439
  %i.abf = add i64 %n.vec1439, %i.aaf             ; 2 uses
  %i.abg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1432, i64 0
  %i.abh = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %i.zt
  %invariant.gep2022 = getelementptr [8 x i8], ptr %5, i64 %i.aaf
  br label %vec.epilog.vector.body1440

vec.epilog.vector.body1440:                       ; preds = %vec.epilog.vector.body1440, %vec.epilog.ph1438
  %index1441 = phi i64 [ %vec.epilog.resume.val1431, %vec.epilog.ph1438 ], [ %index.next1444, %vec.epilog.vector.body1440 ] ; 3 uses
  %vec.phi1442 = phi <4 x i32> [ %i.abg, %vec.epilog.ph1438 ], [ %i.abi, %vec.epilog.vector.body1440 ]
  %i.abi = add <4 x i32> %vec.phi1442, splat (i32 1) ; 2 uses
  %i.abj = getelementptr [8 x i8], ptr %i.abh, i64 %index1441
  %wide.load1443 = load <4 x double>, ptr %i.abj, align 8, !tbaa !9
  %gep2023 = getelementptr [8 x i8], ptr %invariant.gep2022, i64 %index1441
  store <4 x double> %wide.load1443, ptr %gep2023, align 8, !tbaa !9
  %index.next1444 = add nuw i64 %index1441, 4     ; 2 uses
  %i.abk = icmp eq i64 %index.next1444, %n.vec1439
  br i1 %i.abk, label %vec.epilog.middle.block1445, label %vec.epilog.vector.body1440, !llvm.loop !63

vec.epilog.middle.block1445:                      ; preds = %vec.epilog.vector.body1440
  %i.abl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.abi) ; 2 uses
  %cmp.n1446 = icmp eq i64 %i.aaa, %n.vec1439
  br i1 %cmp.n1446, label %.preheader474, label %vec.epilog.scalar.ph1435.preheader

vec.epilog.scalar.ph1435.preheader:               ; preds = %vector.memcheck1407, %iter.check1434, %vec.epilog.iter.check1436, %vec.epilog.middle.block1445
  %indvars.iv825.in.ph = phi i32 [ %.16573, %iter.check1434 ], [ %.16573, %vector.memcheck1407 ], [ %i.abd, %vec.epilog.iter.check1436 ], [ %i.abl, %vec.epilog.middle.block1445 ]
  %indvars.iv821.ph = phi i64 [ %i.zt, %iter.check1434 ], [ %i.zt, %vector.memcheck1407 ], [ %i.aan, %vec.epilog.iter.check1436 ], [ %i.abe, %vec.epilog.middle.block1445 ]
  %indvars.iv819.ph = phi i64 [ %i.aaf, %iter.check1434 ], [ %i.aaf, %vector.memcheck1407 ], [ %i.aao, %vec.epilog.iter.check1436 ], [ %i.abf, %vec.epilog.middle.block1445 ]
  br label %vec.epilog.scalar.ph1435

.preheader474:                                    ; preds = %vec.epilog.scalar.ph1435, %vec.epilog.middle.block1445, %middle.block1426
  %indvars.iv825.lcssa = phi i32 [ %i.abl, %vec.epilog.middle.block1445 ], [ %i.abd, %middle.block1426 ], [ %indvars.iv825, %vec.epilog.scalar.ph1435 ]
  %indvars.iv.next820.lcssa = phi i64 [ %i.abf, %vec.epilog.middle.block1445 ], [ %i.aao, %middle.block1426 ], [ %indvars.iv.next820, %vec.epilog.scalar.ph1435 ]
  %.not435.not565 = icmp samesign ult i64 %indvars.iv829, %i.zv
  br i1 %.not435.not565, label %iter.check1391, label %._crit_edge569

iter.check1391:                                   ; preds = %.preheader474
  %i.abm = mul nsw i64 %indvars.iv829, %i.zu
  %i.abn = sext i32 %indvars.iv825.lcssa to i64   ; 7 uses
  %invariant.gep1019 = getelementptr [8 x i8], ptr %3, i64 %i.abm ; 11 uses
  %min.iters.check1375 = icmp ult i64 %i.aab, 4
  br i1 %min.iters.check1375, label %vec.epilog.scalar.ph1392.preheader, label %vector.memcheck1373

vector.memcheck1373:                              ; preds = %iter.check1391
  %i.abo = shl nsw i64 %i.abn, 3
  %i.abp = add i64 %i.aad, %i.abo
  %i.abq = add i64 %i.abp, -1
  %diff.check1374 = icmp ult i64 %i.abq, 127
  br i1 %diff.check1374, label %vec.epilog.scalar.ph1392.preheader, label %vector.main.loop.iter.check1376

vector.main.loop.iter.check1376:                  ; preds = %vector.memcheck1373
  %min.iters.check1377 = icmp ult i64 %i.aab, 16
  br i1 %min.iters.check1377, label %vec.epilog.ph1395, label %vector.ph1378

vector.ph1378:                                    ; preds = %vector.main.loop.iter.check1376
  %i.abr = and i64 %i.aab, 12
  %n.vec1379 = and i64 %i.aab, -16                ; 5 uses
  %i.abs = add i64 %indvars.iv829, %n.vec1379
  %i.abt = add i64 %n.vec1379, %i.abn             ; 2 uses
  %i.abu = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv829
  %invariant.gep2024 = getelementptr [8 x i8], ptr %5, i64 %i.abn
  br label %vector.body1380

vector.body1380:                                  ; preds = %vector.body1380, %vector.ph1378
  %index1381 = phi i64 [ 0, %vector.ph1378 ], [ %index.next1386, %vector.body1380 ] ; 3 uses
  %i.abv = getelementptr [8 x i8], ptr %i.abu, i64 %index1381 ; 4 uses
  %i.abw = getelementptr i8, ptr %i.abv, i64 32
  %i.abx = getelementptr i8, ptr %i.abv, i64 64
  %i.aby = getelementptr i8, ptr %i.abv, i64 96
  %wide.load1382 = load <4 x double>, ptr %i.abv, align 8, !tbaa !9
  %wide.load1383 = load <4 x double>, ptr %i.abw, align 8, !tbaa !9
  %wide.load1384 = load <4 x double>, ptr %i.abx, align 8, !tbaa !9
  %wide.load1385 = load <4 x double>, ptr %i.aby, align 8, !tbaa !9
  %gep2025 = getelementptr [8 x i8], ptr %invariant.gep2024, i64 %index1381 ; 4 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %gep2025, i64 32
  %i.aca = getelementptr inbounds nuw i8, ptr %gep2025, i64 64
  %i.acb = getelementptr inbounds nuw i8, ptr %gep2025, i64 96
  store <4 x double> %wide.load1382, ptr %gep2025, align 8, !tbaa !9
  store <4 x double> %wide.load1383, ptr %i.abz, align 8, !tbaa !9
  store <4 x double> %wide.load1384, ptr %i.aca, align 8, !tbaa !9
  store <4 x double> %wide.load1385, ptr %i.acb, align 8, !tbaa !9
  %index.next1386 = add nuw i64 %index1381, 16    ; 2 uses
  %i.acc = icmp eq i64 %index.next1386, %n.vec1379
  br i1 %i.acc, label %middle.block1387, label %vector.body1380, !llvm.loop !64

middle.block1387:                                 ; preds = %vector.body1380
  %cmp.n1388 = icmp eq i64 %i.aab, %n.vec1379
  br i1 %cmp.n1388, label %._crit_edge569, label %vec.epilog.iter.check1393

vec.epilog.iter.check1393:                        ; preds = %middle.block1387
  %min.epilog.iters.check1394 = icmp eq i64 %i.abr, 0
  br i1 %min.epilog.iters.check1394, label %vec.epilog.scalar.ph1392.preheader, label %vec.epilog.ph1395, !prof !15

vec.epilog.ph1395:                                ; preds = %vector.main.loop.iter.check1376, %vec.epilog.iter.check1393
  %vec.epilog.resume.val1389 = phi i64 [ %n.vec1379, %vec.epilog.iter.check1393 ], [ 0, %vector.main.loop.iter.check1376 ]
  %n.vec1396 = and i64 %i.aab, -4                 ; 4 uses
  %i.acd = add i64 %indvars.iv829, %n.vec1396
  %i.ace = add i64 %n.vec1396, %i.abn             ; 2 uses
  %i.acf = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv829
  %invariant.gep2026 = getelementptr [8 x i8], ptr %5, i64 %i.abn
  br label %vec.epilog.vector.body1397

vec.epilog.vector.body1397:                       ; preds = %vec.epilog.vector.body1397, %vec.epilog.ph1395
  %index1398 = phi i64 [ %vec.epilog.resume.val1389, %vec.epilog.ph1395 ], [ %index.next1400, %vec.epilog.vector.body1397 ] ; 3 uses
  %i.acg = getelementptr [8 x i8], ptr %i.acf, i64 %index1398
  %wide.load1399 = load <4 x double>, ptr %i.acg, align 8, !tbaa !9
  %gep2027 = getelementptr [8 x i8], ptr %invariant.gep2026, i64 %index1398
  store <4 x double> %wide.load1399, ptr %gep2027, align 8, !tbaa !9
  %index.next1400 = add nuw i64 %index1398, 4     ; 2 uses
  %i.ach = icmp eq i64 %index.next1400, %n.vec1396
  br i1 %i.ach, label %vec.epilog.middle.block1401, label %vec.epilog.vector.body1397, !llvm.loop !65

vec.epilog.middle.block1401:                      ; preds = %vec.epilog.vector.body1397
  %cmp.n1402 = icmp eq i64 %i.aab, %n.vec1396
  br i1 %cmp.n1402, label %._crit_edge569, label %vec.epilog.scalar.ph1392.preheader

vec.epilog.scalar.ph1392.preheader:               ; preds = %vector.memcheck1373, %iter.check1391, %vec.epilog.iter.check1393, %vec.epilog.middle.block1401
  %indvars.iv831.ph.a = phi i64 [ %indvars.iv829, %iter.check1391 ], [ %indvars.iv829, %vector.memcheck1373 ], [ %i.abs, %vec.epilog.iter.check1393 ], [ %i.acd, %vec.epilog.middle.block1401 ] ; 4 uses
  %indvars.iv827.ph = phi i64 [ %i.abn, %iter.check1391 ], [ %i.abn, %vector.memcheck1373 ], [ %i.abt, %vec.epilog.iter.check1393 ], [ %i.ace, %vec.epilog.middle.block1401 ] ; 2 uses
  %i.aci = sub i64 %i.zs, %indvars.iv831.ph.a
  %xtraiter1912 = and i64 %i.aci, 7               ; 2 uses
  %lcmp.mod1913.not = icmp eq i64 %xtraiter1912, 0
  br i1 %lcmp.mod1913.not, label %vec.epilog.scalar.ph1392.prol.loopexit, label %vec.epilog.scalar.ph1392.prol

vec.epilog.scalar.ph1392.prol:                    ; preds = %vec.epilog.scalar.ph1392.preheader, %vec.epilog.scalar.ph1392.prol
  %indvars.iv831.prol.a = phi i64 [ %indvars.iv.next832.prol, %vec.epilog.scalar.ph1392.prol ], [ %indvars.iv831.ph.a, %vec.epilog.scalar.ph1392.preheader ] ; 2 uses
  %indvars.iv827.prol = phi i64 [ %indvars.iv.next828.prol, %vec.epilog.scalar.ph1392.prol ], [ %indvars.iv827.ph, %vec.epilog.scalar.ph1392.preheader ] ; 2 uses
  %prol.iter1914 = phi i64 [ %prol.iter1914.next, %vec.epilog.scalar.ph1392.prol ], [ 0, %vec.epilog.scalar.ph1392.preheader ]
  %gep1020.prol = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.prol.a
  %i.acj = load double, ptr %gep1020.prol, align 8, !tbaa !9
  %i.ack = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv827.prol
  store double %i.acj, ptr %i.ack, align 8, !tbaa !9
  %indvars.iv.next828.prol = add nsw i64 %indvars.iv827.prol, 1 ; 3 uses
  %indvars.iv.next832.prol = add nuw nsw i64 %indvars.iv831.prol.a, 1 ; 2 uses
  %prol.iter1914.next = add i64 %prol.iter1914, 1 ; 2 uses
  %prol.iter1914.cmp.not = icmp eq i64 %prol.iter1914.next, %xtraiter1912
  br i1 %prol.iter1914.cmp.not, label %vec.epilog.scalar.ph1392.prol.loopexit, label %vec.epilog.scalar.ph1392.prol, !llvm.loop !66

vec.epilog.scalar.ph1392.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1392.prol, %vec.epilog.scalar.ph1392.preheader
  %indvars.iv.next828.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph1392.preheader ], [ %indvars.iv.next828.prol, %vec.epilog.scalar.ph1392.prol ]
  %indvars.iv831.unr.a = phi i64 [ %indvars.iv831.ph.a, %vec.epilog.scalar.ph1392.preheader ], [ %indvars.iv.next832.prol, %vec.epilog.scalar.ph1392.prol ]
  %indvars.iv827.unr = phi i64 [ %indvars.iv827.ph, %vec.epilog.scalar.ph1392.preheader ], [ %indvars.iv.next828.prol, %vec.epilog.scalar.ph1392.prol ]
  %i.acl = sub i64 %indvars.iv831.ph.a, %i.zs
  %i.acm = icmp ugt i64 %i.acl, -8
  br i1 %i.acm, label %._crit_edge569, label %vec.epilog.scalar.ph1392

vec.epilog.scalar.ph1435:                         ; preds = %vec.epilog.scalar.ph1435.preheader, %vec.epilog.scalar.ph1435
  %indvars.iv825.in = phi i32 [ %indvars.iv825, %vec.epilog.scalar.ph1435 ], [ %indvars.iv825.in.ph, %vec.epilog.scalar.ph1435.preheader ]
  %indvars.iv821 = phi i64 [ %indvars.iv.next822.a, %vec.epilog.scalar.ph1435 ], [ %indvars.iv821.ph, %vec.epilog.scalar.ph1435.preheader ] ; 3 uses
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %vec.epilog.scalar.ph1435 ], [ %indvars.iv819.ph, %vec.epilog.scalar.ph1435.preheader ] ; 2 uses
  %indvars.iv825 = add i32 %indvars.iv825.in, 1   ; 2 uses
  %i.acn = mul nsw i64 %indvars.iv821, %i.zu
  %gep1018 = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %i.acn
  %i.aco = load double, ptr %gep1018, align 8, !tbaa !9
  %i.acp = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv819
  store double %i.aco, ptr %i.acp, align 8, !tbaa !9
  %indvars.iv.next820 = add nsw i64 %indvars.iv819, 1 ; 2 uses
  %indvars.iv.next822.a = add nuw nsw i64 %indvars.iv821, 1
  %.not434.not = icmp samesign ult i64 %indvars.iv821, %i.aae
  br i1 %.not434.not, label %vec.epilog.scalar.ph1435, label %.preheader474, !llvm.loop !67

vec.epilog.scalar.ph1392:                         ; preds = %vec.epilog.scalar.ph1392.prol.loopexit, %vec.epilog.scalar.ph1392
  %indvars.iv831.a = phi i64 [ %indvars.iv.next832.7, %vec.epilog.scalar.ph1392 ], [ %indvars.iv831.unr.a, %vec.epilog.scalar.ph1392.prol.loopexit ] ; 9 uses
  %indvars.iv827 = phi i64 [ %indvars.iv.next828.7, %vec.epilog.scalar.ph1392 ], [ %indvars.iv827.unr, %vec.epilog.scalar.ph1392.prol.loopexit ] ; 9 uses
  %gep1020 = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %i.acq = load double, ptr %gep1020, align 8, !tbaa !9
  %i.acr = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv827
  store double %i.acq, ptr %i.acr, align 8, !tbaa !9
  %i.acs = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.1 = getelementptr i8, ptr %i.acs, i64 8
  %i.act = load double, ptr %gep1020.1, align 8, !tbaa !9
  %i.acu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.acv = getelementptr i8, ptr %i.acu, i64 8
  store double %i.act, ptr %i.acv, align 8, !tbaa !9
  %i.acw = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.2 = getelementptr i8, ptr %i.acw, i64 16
  %i.acx = load double, ptr %gep1020.2, align 8, !tbaa !9
  %i.acy = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.acz = getelementptr i8, ptr %i.acy, i64 16
  store double %i.acx, ptr %i.acz, align 8, !tbaa !9
  %i.ada = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.3 = getelementptr i8, ptr %i.ada, i64 24
  %i.adb = load double, ptr %gep1020.3, align 8, !tbaa !9
  %i.adc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.add = getelementptr i8, ptr %i.adc, i64 24
  store double %i.adb, ptr %i.add, align 8, !tbaa !9
  %i.ade = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.4 = getelementptr i8, ptr %i.ade, i64 32
  %i.adf = load double, ptr %gep1020.4, align 8, !tbaa !9
  %i.adg = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.adh = getelementptr i8, ptr %i.adg, i64 32
  store double %i.adf, ptr %i.adh, align 8, !tbaa !9
  %i.adi = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.5 = getelementptr i8, ptr %i.adi, i64 40
  %i.adj = load double, ptr %gep1020.5, align 8, !tbaa !9
  %i.adk = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.adl = getelementptr i8, ptr %i.adk, i64 40
  store double %i.adj, ptr %i.adl, align 8, !tbaa !9
  %i.adm = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.6 = getelementptr i8, ptr %i.adm, i64 48
  %i.adn = load double, ptr %gep1020.6, align 8, !tbaa !9
  %i.ado = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.adp = getelementptr i8, ptr %i.ado, i64 48
  store double %i.adn, ptr %i.adp, align 8, !tbaa !9
  %i.adq = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.a
  %gep1020.7 = getelementptr i8, ptr %i.adq, i64 56
  %i.adr = load double, ptr %gep1020.7, align 8, !tbaa !9
  %i.ads = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.adt = getelementptr i8, ptr %i.ads, i64 56
  store double %i.adr, ptr %i.adt, align 8, !tbaa !9
  %indvars.iv.next828.7 = add nsw i64 %indvars.iv827, 8 ; 2 uses
  %indvars.iv.next832.7 = add nuw nsw i64 %indvars.iv831.a, 8 ; 2 uses
  %exitcond837.not.7 = icmp eq i64 %indvars.iv.next832.7, %i.zs
  br i1 %exitcond837.not.7, label %._crit_edge569, label %vec.epilog.scalar.ph1392, !llvm.loop !68

._crit_edge569:                                   ; preds = %vec.epilog.scalar.ph1392.prol.loopexit, %vec.epilog.scalar.ph1392, %middle.block1387, %vec.epilog.middle.block1401, %.preheader474
  %.18.lcssa.in = phi i64 [ %indvars.iv.next820.lcssa, %.preheader474 ], [ %i.ace, %vec.epilog.middle.block1401 ], [ %i.abt, %middle.block1387 ], [ %indvars.iv.next828.lcssa.unr, %vec.epilog.scalar.ph1392.prol.loopexit ], [ %indvars.iv.next828.7, %vec.epilog.scalar.ph1392 ]
  %.18.lcssa = trunc i64 %.18.lcssa.in to i32
  %indvars.iv.next830 = add nuw nsw i64 %indvars.iv829, 1 ; 2 uses
  %exitcond840.not = icmp eq i64 %indvars.iv.next830, %wide.trip.count839
  br i1 %exitcond840.not, label %.loopexit, label %iter.check1434, !llvm.loop !69

.preheader469.lr.ph:                              ; preds = %bb.p
  %i.adu = xor i32 %i.i, -1
  %i.adv = add nsw i32 %i.u, %i.adu
  %i.adw = shl nuw i32 %i.i, 1
  %i.adx = xor i32 %i.v, -1
  %i.ady = add nsw i32 %i.i, %i.adx
  %i.adz = sext i32 %i.d to i64                   ; 12 uses
  %i.aea = zext nneg i32 %i.i to i64              ; 4 uses
  %i.aeb = zext nneg i32 %i.v to i64              ; 4 uses
  %i.aec = shl nuw nsw i64 %i.aeb, 3
  %i.aed = add i64 %i.aec, %i.b
  %i.aee = add i64 %i.aed, 8
  %i.aef = add nuw nsw i64 %i.aea, 2305843009213693951
  %i.aeg = mul i64 %i.aef, %i.adz
  %i.aeh = shl i64 %i.aeg, 3
  %i.aei = add i64 %i.aeh, %i.a
  %i.aej = sub i64 %i.b, %i.aei
  %i.aek = shl nsw i64 %i.adz, 3
  %ident.check1593.not = icmp eq i32 %i.d, 1
  %invariant.op = sub i32 -2, %i.adw
  br label %iter.check1653

iter.check1653:                                   ; preds = %.preheader469.lr.ph, %._crit_edge611
  %indvar1595 = phi i64 [ 0, %.preheader469.lr.ph ], [ %indvar.next1596, %._crit_edge611 ] ; 5 uses
  %indvars.iv916 = phi i64 [ %i.aea, %.preheader469.lr.ph ], [ %indvars.iv.next917, %._crit_edge611 ] ; 10 uses
  %indvars.iv907 = phi i32 [ %i.ady, %.preheader469.lr.ph ], [ %indvars.iv.next908, %._crit_edge611 ] ; 3 uses
  %.19616 = phi i32 [ %i.adv, %.preheader469.lr.ph ], [ %.reass.reass, %._crit_edge611 ] ; 5 uses
  %i.ael = and i64 %indvar1595, 4294967295        ; 3 uses
  %i.aem = add nuw nsw i64 %i.ael, 1              ; 5 uses
  %i.aen = shl nuw nsw i64 %indvar1595, 3
  %i.aeo = sext i32 %indvars.iv907 to i64
  %i.aep = sext i32 %indvars.iv907 to i64         ; 6 uses
  %indvars.iv.next917 = add nsw i64 %indvars.iv916, -1 ; 4 uses
  %i.aeq = mul nsw i64 %indvars.iv.next917, %i.adz
  %i.aer = sext i32 %.19616 to i64                ; 7 uses
  %invariant.gep1029 = getelementptr [8 x i8], ptr %3, i64 %i.aeq ; 11 uses
  %min.iters.check1630 = icmp ult i64 %indvars.iv916, 4
  br i1 %min.iters.check1630, label %vec.epilog.scalar.ph1654.preheader, label %vector.memcheck1628

vector.memcheck1628:                              ; preds = %iter.check1653
  %i.aes = mul i64 %i.aek, %indvar1595
  %i.aet = add i64 %i.aej, %i.aes
  %i.aeu = shl nsw i64 %i.aer, 3
  %i.aev = add i64 %i.aet, %i.aeu
  %i.aew = add i64 %i.aev, -1
  %diff.check1629 = icmp ult i64 %i.aew, 127
  br i1 %diff.check1629, label %vec.epilog.scalar.ph1654.preheader, label %vector.main.loop.iter.check1631

vector.main.loop.iter.check1631:                  ; preds = %vector.memcheck1628
  %min.iters.check1632 = icmp ult i64 %indvars.iv916, 16
  br i1 %min.iters.check1632, label %vec.epilog.ph1657, label %vector.ph1633

vector.ph1633:                                    ; preds = %vector.main.loop.iter.check1631
  %i.aex = and i64 %indvars.iv916, 12
  %n.vec1634 = and i64 %indvars.iv916, -16        ; 5 uses
  %i.aey = add i64 %n.vec1634, %i.aer             ; 2 uses
  %i.aez = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.19616, i64 0
  %invariant.gep2040.a = getelementptr [8 x i8], ptr %5, i64 %i.aer
  br label %vector.body1635

vector.body1635:                                  ; preds = %vector.body1635, %vector.ph1633
  %index1636 = phi i64 [ 0, %vector.ph1633 ], [ %index.next1645, %vector.body1635 ] ; 3 uses
  %vec.phi1637 = phi <4 x i32> [ %i.aez, %vector.ph1633 ], [ %i.afa, %vector.body1635 ]
  %vec.phi1638 = phi <4 x i32> [ zeroinitializer, %vector.ph1633 ], [ %i.afb, %vector.body1635 ]
  %vec.phi1639 = phi <4 x i32> [ zeroinitializer, %vector.ph1633 ], [ %i.afc, %vector.body1635 ]
  %vec.phi1640 = phi <4 x i32> [ zeroinitializer, %vector.ph1633 ], [ %i.afd, %vector.body1635 ]
  %i.afa = add <4 x i32> %vec.phi1637, splat (i32 1) ; 2 uses
  %i.afb = add <4 x i32> %vec.phi1638, splat (i32 1) ; 2 uses
  %i.afc = add <4 x i32> %vec.phi1639, splat (i32 1) ; 2 uses
  %i.afd = add <4 x i32> %vec.phi1640, splat (i32 1) ; 2 uses
  %i.afe = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %index1636 ; 4 uses
  %i.aff = getelementptr i8, ptr %i.afe, i64 32
  %i.afg = getelementptr i8, ptr %i.afe, i64 64
  %i.afh = getelementptr i8, ptr %i.afe, i64 96
  %wide.load1641 = load <4 x double>, ptr %i.afe, align 8, !tbaa !9
  %wide.load1642 = load <4 x double>, ptr %i.aff, align 8, !tbaa !9
  %wide.load1643 = load <4 x double>, ptr %i.afg, align 8, !tbaa !9
  %wide.load1644 = load <4 x double>, ptr %i.afh, align 8, !tbaa !9
  %gep2041.a = getelementptr [8 x i8], ptr %invariant.gep2040.a, i64 %index1636 ; 4 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %gep2041.a, i64 32
  %i.afj = getelementptr inbounds nuw i8, ptr %gep2041.a, i64 64
  %i.afk = getelementptr inbounds nuw i8, ptr %gep2041.a, i64 96
  store <4 x double> %wide.load1641, ptr %gep2041.a, align 8, !tbaa !9
  store <4 x double> %wide.load1642, ptr %i.afi, align 8, !tbaa !9
  store <4 x double> %wide.load1643, ptr %i.afj, align 8, !tbaa !9
  store <4 x double> %wide.load1644, ptr %i.afk, align 8, !tbaa !9
  %index.next1645 = add nuw i64 %index1636, 16    ; 2 uses
  %i.afl = icmp eq i64 %index.next1645, %n.vec1634
  br i1 %i.afl, label %middle.block1646, label %vector.body1635, !llvm.loop !70

middle.block1646:                                 ; preds = %vector.body1635
  %bin.rdx1647 = add <4 x i32> %i.afb, %i.afa
  %bin.rdx1648 = add <4 x i32> %i.afc, %bin.rdx1647
  %bin.rdx1649 = add <4 x i32> %i.afd, %bin.rdx1648
  %i.afm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1649) ; 3 uses
  %cmp.n1650 = icmp eq i64 %indvars.iv916, %n.vec1634
  br i1 %cmp.n1650, label %.loopexit1811, label %vec.epilog.iter.check1655

vec.epilog.iter.check1655:                        ; preds = %middle.block1646
  %min.epilog.iters.check1656 = icmp eq i64 %i.aex, 0
  br i1 %min.epilog.iters.check1656, label %vec.epilog.scalar.ph1654.preheader, label %vec.epilog.ph1657, !prof !15

vec.epilog.ph1657:                                ; preds = %vector.main.loop.iter.check1631, %vec.epilog.iter.check1655
  %vec.epilog.resume.val1651 = phi i64 [ %n.vec1634, %vec.epilog.iter.check1655 ], [ 0, %vector.main.loop.iter.check1631 ]
  %bc.merge.rdx1652 = phi i32 [ %i.afm, %vec.epilog.iter.check1655 ], [ %.19616, %vector.main.loop.iter.check1631 ]
  %n.vec1658 = and i64 %indvars.iv916, -4         ; 4 uses
  %i.afn = add i64 %n.vec1658, %i.aer             ; 2 uses
  %i.afo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1652, i64 0
  %invariant.gep2042.a = getelementptr [8 x i8], ptr %5, i64 %i.aer
  br label %vec.epilog.vector.body1659

vec.epilog.vector.body1659:                       ; preds = %vec.epilog.vector.body1659, %vec.epilog.ph1657
  %index1660 = phi i64 [ %vec.epilog.resume.val1651, %vec.epilog.ph1657 ], [ %index.next1663, %vec.epilog.vector.body1659 ] ; 3 uses
  %vec.phi1661 = phi <4 x i32> [ %i.afo, %vec.epilog.ph1657 ], [ %i.afp, %vec.epilog.vector.body1659 ]
  %i.afp = add <4 x i32> %vec.phi1661, splat (i32 1) ; 2 uses
  %i.afq = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %index1660
  %wide.load1662 = load <4 x double>, ptr %i.afq, align 8, !tbaa !9
  %gep2043.a = getelementptr [8 x i8], ptr %invariant.gep2042.a, i64 %index1660
  store <4 x double> %wide.load1662, ptr %gep2043.a, align 8, !tbaa !9
  %index.next1663 = add nuw i64 %index1660, 4     ; 2 uses
  %i.afr = icmp eq i64 %index.next1663, %n.vec1658
  br i1 %i.afr, label %vec.epilog.middle.block1664, label %vec.epilog.vector.body1659, !llvm.loop !71

vec.epilog.middle.block1664:                      ; preds = %vec.epilog.vector.body1659
  %i.afs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.afp) ; 2 uses
  %cmp.n1665 = icmp eq i64 %indvars.iv916, %n.vec1658
  br i1 %cmp.n1665, label %.loopexit1811, label %vec.epilog.scalar.ph1654.preheader

vec.epilog.scalar.ph1654.preheader:               ; preds = %vector.memcheck1628, %iter.check1653, %vec.epilog.iter.check1655, %vec.epilog.middle.block1664
  %indvars.iv903.in.ph = phi i32 [ %.19616, %iter.check1653 ], [ %.19616, %vector.memcheck1628 ], [ %i.afm, %vec.epilog.iter.check1655 ], [ %i.afs, %vec.epilog.middle.block1664 ] ; 2 uses
  %indvars.iv896.ph = phi i64 [ 0, %iter.check1653 ], [ 0, %vector.memcheck1628 ], [ %n.vec1634, %vec.epilog.iter.check1655 ], [ %n.vec1658, %vec.epilog.middle.block1664 ] ; 4 uses
  %indvars.iv894.ph = phi i64 [ %i.aer, %iter.check1653 ], [ %i.aer, %vector.memcheck1628 ], [ %i.aey, %vec.epilog.iter.check1655 ], [ %i.afn, %vec.epilog.middle.block1664 ] ; 2 uses
  %i.aft = sub i64 %indvars.iv916, %indvars.iv896.ph
  %xtraiter1924 = and i64 %i.aft, 7               ; 2 uses
  %lcmp.mod1925.not = icmp eq i64 %xtraiter1924, 0
  br i1 %lcmp.mod1925.not, label %vec.epilog.scalar.ph1654.prol.loopexit, label %vec.epilog.scalar.ph1654.prol

vec.epilog.scalar.ph1654.prol:                    ; preds = %vec.epilog.scalar.ph1654.preheader, %vec.epilog.scalar.ph1654.prol
  %indvars.iv903.in.prol = phi i32 [ %indvars.iv903.prol, %vec.epilog.scalar.ph1654.prol ], [ %indvars.iv903.in.ph, %vec.epilog.scalar.ph1654.preheader ]
  %indvars.iv896.prol = phi i64 [ %indvars.iv.next897.prol, %vec.epilog.scalar.ph1654.prol ], [ %indvars.iv896.ph, %vec.epilog.scalar.ph1654.preheader ] ; 2 uses
  %indvars.iv894.prol = phi i64 [ %indvars.iv.next895.prol, %vec.epilog.scalar.ph1654.prol ], [ %indvars.iv894.ph, %vec.epilog.scalar.ph1654.preheader ] ; 2 uses
  %prol.iter1926 = phi i64 [ %prol.iter1926.next, %vec.epilog.scalar.ph1654.prol ], [ 0, %vec.epilog.scalar.ph1654.preheader ]
  %indvars.iv903.prol = add i32 %indvars.iv903.in.prol, 1 ; 3 uses
  %gep1030.prol = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896.prol
  %i.afu = load double, ptr %gep1030.prol, align 8, !tbaa !9
  %i.afv = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv894.prol
  store double %i.afu, ptr %i.afv, align 8, !tbaa !9
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
  %i.afw = sub i64 %indvar1595, %i.aea
  %i.afx = add i64 %i.afw, %indvars.iv896.ph
  %i.afy = icmp ugt i64 %i.afx, -8
  br i1 %i.afy, label %.loopexit1811, label %vec.epilog.scalar.ph1654

vec.epilog.scalar.ph1654:                         ; preds = %vec.epilog.scalar.ph1654.prol.loopexit, %vec.epilog.scalar.ph1654
  %indvars.iv903.in = phi i32 [ %indvars.iv903.7, %vec.epilog.scalar.ph1654 ], [ %indvars.iv903.in.unr, %vec.epilog.scalar.ph1654.prol.loopexit ]
  %indvars.iv896 = phi i64 [ %indvars.iv.next897.7, %vec.epilog.scalar.ph1654 ], [ %indvars.iv896.unr, %vec.epilog.scalar.ph1654.prol.loopexit ] ; 9 uses
  %indvars.iv894 = phi i64 [ %indvars.iv.next895.7, %vec.epilog.scalar.ph1654 ], [ %indvars.iv894.unr, %vec.epilog.scalar.ph1654.prol.loopexit ] ; 9 uses
  %gep1030 = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %i.afz = load double, ptr %gep1030, align 8, !tbaa !9
  %i.aga = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv894
  store double %i.afz, ptr %i.aga, align 8, !tbaa !9
  %i.agb = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.1 = getelementptr i8, ptr %i.agb, i64 8
  %i.agc = load double, ptr %gep1030.1, align 8, !tbaa !9
  %i.agd = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.age = getelementptr i8, ptr %i.agd, i64 8
  store double %i.agc, ptr %i.age, align 8, !tbaa !9
  %i.agf = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.2 = getelementptr i8, ptr %i.agf, i64 16
  %i.agg = load double, ptr %gep1030.2, align 8, !tbaa !9
  %i.agh = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.agi = getelementptr i8, ptr %i.agh, i64 16
  store double %i.agg, ptr %i.agi, align 8, !tbaa !9
  %i.agj = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.3 = getelementptr i8, ptr %i.agj, i64 24
  %i.agk = load double, ptr %gep1030.3, align 8, !tbaa !9
  %i.agl = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.agm = getelementptr i8, ptr %i.agl, i64 24
  store double %i.agk, ptr %i.agm, align 8, !tbaa !9
  %i.agn = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.4 = getelementptr i8, ptr %i.agn, i64 32
  %i.ago = load double, ptr %gep1030.4, align 8, !tbaa !9
  %i.agp = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.agq = getelementptr i8, ptr %i.agp, i64 32
  store double %i.ago, ptr %i.agq, align 8, !tbaa !9
  %i.agr = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.5 = getelementptr i8, ptr %i.agr, i64 40
  %i.ags = load double, ptr %gep1030.5, align 8, !tbaa !9
  %i.agt = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.agu = getelementptr i8, ptr %i.agt, i64 40
  store double %i.ags, ptr %i.agu, align 8, !tbaa !9
  %i.agv = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.6 = getelementptr i8, ptr %i.agv, i64 48
  %i.agw = load double, ptr %gep1030.6, align 8, !tbaa !9
  %i.agx = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.agy = getelementptr i8, ptr %i.agx, i64 48
  store double %i.agw, ptr %i.agy, align 8, !tbaa !9
  %indvars.iv903.7 = add i32 %indvars.iv903.in, 8 ; 2 uses
  %i.agz = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.7 = getelementptr i8, ptr %i.agz, i64 56
  %i.aha = load double, ptr %gep1030.7, align 8, !tbaa !9
  %i.ahb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 56
  store double %i.aha, ptr %i.ahc, align 8, !tbaa !9
  %indvars.iv.next895.7 = add nsw i64 %indvars.iv894, 8 ; 2 uses
  %indvars.iv.next897.7 = add nuw nsw i64 %indvars.iv896, 8 ; 2 uses
  %exitcond902.not.7 = icmp eq i64 %indvars.iv.next897.7, %indvars.iv916
  br i1 %exitcond902.not.7, label %.loopexit1811, label %vec.epilog.scalar.ph1654, !llvm.loop !73

.loopexit1811:                                    ; preds = %vec.epilog.scalar.ph1654.prol.loopexit, %vec.epilog.scalar.ph1654, %vec.epilog.middle.block1664, %middle.block1646
  %indvars.iv903.lcssa = phi i32 [ %i.afs, %vec.epilog.middle.block1664 ], [ %i.afm, %middle.block1646 ], [ %indvars.iv903.lcssa1842.unr, %vec.epilog.scalar.ph1654.prol.loopexit ], [ %indvars.iv903.7, %vec.epilog.scalar.ph1654 ]
  %indvars.iv.next895.lcssa = phi i64 [ %i.afn, %vec.epilog.middle.block1664 ], [ %i.aey, %middle.block1646 ], [ %indvars.iv.next895.lcssa1841.unr, %vec.epilog.scalar.ph1654.prol.loopexit ], [ %indvars.iv.next895.7, %vec.epilog.scalar.ph1654 ]
  %i.ahd = sub nsw i64 %indvars.iv.next917, %i.aeb ; 2 uses
  %.not432.not606 = icmp slt i64 %i.ahd, %i.aeb
  br i1 %.not432.not606, label %iter.check1614, label %._crit_edge611

iter.check1614:                                   ; preds = %.loopexit1811
  %i.ahe = sext i32 %indvars.iv903.lcssa to i64   ; 7 uses
  %invariant.gep1031.a = getelementptr [8 x i8], ptr %3, i64 %i.ahd ; 11 uses
  %min.iters.check1598 = icmp samesign ugt i64 %i.ael, 2
  %or.cond1823 = select i1 %min.iters.check1598, i1 %ident.check1593.not, i1 false
  br i1 %or.cond1823, label %vector.memcheck1594, label %.lr.ph610.preheader

vector.memcheck1594:                              ; preds = %iter.check1614
  %i.ahf = add i64 %i.aee, %i.aen
  %i.ahg = add nsw i64 %i.aea, %i.aeo
  %i.ahh = shl nsw i64 %i.ahg, 3
  %i.ahi = add i64 %i.ahh, %i.a
  %i.ahj = sub i64 %i.ahf, %i.ahi
  %i.ahk = shl nsw i64 %i.ahe, 3
  %i.ahl = add i64 %i.ahj, %i.ahk
  %i.ahm = add i64 %i.ahl, -1
  %diff.check1597 = icmp ult i64 %i.ahm, 127
  br i1 %diff.check1597, label %.lr.ph610.preheader, label %vector.main.loop.iter.check1599

vector.main.loop.iter.check1599:                  ; preds = %vector.memcheck1594
  %min.iters.check1600 = icmp samesign ult i64 %i.ael, 15
  br i1 %min.iters.check1600, label %vec.epilog.ph1618, label %vector.ph1601

vector.ph1601:                                    ; preds = %vector.main.loop.iter.check1599
  %i.ahn = and i64 %i.aem, 12
  %n.vec1602 = and i64 %i.aem, 8589934576         ; 5 uses
  %i.aho = add nsw i64 %n.vec1602, %i.aep
  %i.ahp = add nsw i64 %n.vec1602, %i.ahe         ; 2 uses
  %invariant.gep2044.a = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aep
  %invariant.gep2046.a = getelementptr [8 x i8], ptr %5, i64 %i.ahe
  br label %vector.body1603

vector.body1603:                                  ; preds = %vector.body1603, %vector.ph1601
  %index1604 = phi i64 [ 0, %vector.ph1601 ], [ %index.next1609, %vector.body1603 ] ; 3 uses
  %gep2045.a = getelementptr [8 x i8], ptr %invariant.gep2044.a, i64 %index1604 ; 4 uses
  %i.ahq = getelementptr i8, ptr %gep2045.a, i64 32
  %i.ahr = getelementptr i8, ptr %gep2045.a, i64 64
  %i.ahs = getelementptr i8, ptr %gep2045.a, i64 96
  %wide.load1605 = load <4 x double>, ptr %gep2045.a, align 8, !tbaa !9
  %wide.load1606 = load <4 x double>, ptr %i.ahq, align 8, !tbaa !9
  %wide.load1607 = load <4 x double>, ptr %i.ahr, align 8, !tbaa !9
  %wide.load1608 = load <4 x double>, ptr %i.ahs, align 8, !tbaa !9
  %gep2047.a = getelementptr [8 x i8], ptr %invariant.gep2046.a, i64 %index1604 ; 4 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %gep2047.a, i64 32
  %i.ahu = getelementptr inbounds nuw i8, ptr %gep2047.a, i64 64
  %i.ahv = getelementptr inbounds nuw i8, ptr %gep2047.a, i64 96
  store <4 x double> %wide.load1605, ptr %gep2047.a, align 8, !tbaa !9
  store <4 x double> %wide.load1606, ptr %i.aht, align 8, !tbaa !9
  store <4 x double> %wide.load1607, ptr %i.ahu, align 8, !tbaa !9
  store <4 x double> %wide.load1608, ptr %i.ahv, align 8, !tbaa !9
  %index.next1609 = add nuw i64 %index1604, 16    ; 2 uses
  %i.ahw = icmp eq i64 %index.next1609, %n.vec1602
  br i1 %i.ahw, label %middle.block1610, label %vector.body1603, !llvm.loop !74

middle.block1610:                                 ; preds = %vector.body1603
  %cmp.n1611 = icmp eq i64 %i.aem, %n.vec1602
  br i1 %cmp.n1611, label %._crit_edge611, label %vec.epilog.iter.check1616

vec.epilog.iter.check1616:                        ; preds = %middle.block1610
  %min.epilog.iters.check1617 = icmp eq i64 %i.ahn, 0
  br i1 %min.epilog.iters.check1617, label %.lr.ph610.preheader, label %vec.epilog.ph1618, !prof !15

vec.epilog.ph1618:                                ; preds = %vector.main.loop.iter.check1599, %vec.epilog.iter.check1616
  %vec.epilog.resume.val1612 = phi i64 [ %n.vec1602, %vec.epilog.iter.check1616 ], [ 0, %vector.main.loop.iter.check1599 ]
  %n.vec1619 = and i64 %i.aem, 8589934588         ; 4 uses
  %i.ahx = add nsw i64 %n.vec1619, %i.aep
  %i.ahy = add nsw i64 %n.vec1619, %i.ahe         ; 2 uses
  %invariant.gep2048.a = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aep
  %invariant.gep2050.a = getelementptr [8 x i8], ptr %5, i64 %i.ahe
  br label %vec.epilog.vector.body1620

vec.epilog.vector.body1620:                       ; preds = %vec.epilog.vector.body1620, %vec.epilog.ph1618
  %index1621 = phi i64 [ %vec.epilog.resume.val1612, %vec.epilog.ph1618 ], [ %index.next1623, %vec.epilog.vector.body1620 ] ; 3 uses
  %gep2049.a = getelementptr [8 x i8], ptr %invariant.gep2048.a, i64 %index1621
  %wide.load1622 = load <4 x double>, ptr %gep2049.a, align 8, !tbaa !9
  %gep2051.a = getelementptr [8 x i8], ptr %invariant.gep2050.a, i64 %index1621
  store <4 x double> %wide.load1622, ptr %gep2051.a, align 8, !tbaa !9
  %index.next1623 = add nuw i64 %index1621, 4     ; 2 uses
  %i.ahz = icmp eq i64 %index.next1623, %n.vec1619
  br i1 %i.ahz, label %vec.epilog.middle.block1624, label %vec.epilog.vector.body1620, !llvm.loop !75

vec.epilog.middle.block1624:                      ; preds = %vec.epilog.vector.body1620
  %cmp.n1625 = icmp eq i64 %i.aem, %n.vec1619
  br i1 %cmp.n1625, label %._crit_edge611, label %.lr.ph610.preheader

.lr.ph610.preheader:                              ; preds = %vector.memcheck1594, %iter.check1614, %vec.epilog.iter.check1616, %vec.epilog.middle.block1624
  %indvars.iv909.ph = phi i64 [ %i.aep, %iter.check1614 ], [ %i.aep, %vector.memcheck1594 ], [ %i.aho, %vec.epilog.iter.check1616 ], [ %i.ahx, %vec.epilog.middle.block1624 ] ; 3 uses
  %indvars.iv905.ph = phi i64 [ %i.ahe, %iter.check1614 ], [ %i.ahe, %vector.memcheck1594 ], [ %i.ahp, %vec.epilog.iter.check1616 ], [ %i.ahy, %vec.epilog.middle.block1624 ] ; 2 uses
  %i.aia = trunc i64 %indvars.iv909.ph to i32     ; 2 uses
  %i.aib = sub i32 %i.v, %i.aia
  %xtraiter1927 = and i32 %i.aib, 7               ; 2 uses
  %lcmp.mod1928.not = icmp eq i32 %xtraiter1927, 0
  br i1 %lcmp.mod1928.not, label %.lr.ph610.prol.loopexit, label %.lr.ph610.prol

.lr.ph610.prol:                                   ; preds = %.lr.ph610.preheader, %.lr.ph610.prol
  %indvars.iv909.prol = phi i64 [ %indvars.iv.next910.prol, %.lr.ph610.prol ], [ %indvars.iv909.ph, %.lr.ph610.preheader ] ; 2 uses
  %indvars.iv905.prol = phi i64 [ %indvars.iv.next906.prol, %.lr.ph610.prol ], [ %indvars.iv905.ph, %.lr.ph610.preheader ] ; 2 uses
  %prol.iter1929 = phi i32 [ %prol.iter1929.next, %.lr.ph610.prol ], [ 0, %.lr.ph610.preheader ]
  %i.aic = mul nsw i64 %indvars.iv909.prol, %i.adz
  %gep1032.prol = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aic
  %i.aid = load double, ptr %gep1032.prol, align 8, !tbaa !9
  %i.aie = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv905.prol
  store double %i.aid, ptr %i.aie, align 8, !tbaa !9
  %indvars.iv.next906.prol = add nsw i64 %indvars.iv905.prol, 1 ; 3 uses
  %indvars.iv.next910.prol = add nsw i64 %indvars.iv909.prol, 1 ; 2 uses
  %prol.iter1929.next = add i32 %prol.iter1929, 1 ; 2 uses
  %prol.iter1929.cmp.not = icmp eq i32 %prol.iter1929.next, %xtraiter1927
  br i1 %prol.iter1929.cmp.not, label %.lr.ph610.prol.loopexit, label %.lr.ph610.prol, !llvm.loop !76

.lr.ph610.prol.loopexit:                          ; preds = %.lr.ph610.prol, %.lr.ph610.preheader
  %indvars.iv.next906.lcssa.unr = phi i64 [ poison, %.lr.ph610.preheader ], [ %indvars.iv.next906.prol, %.lr.ph610.prol ]
  %indvars.iv909.unr = phi i64 [ %indvars.iv909.ph, %.lr.ph610.preheader ], [ %indvars.iv.next910.prol, %.lr.ph610.prol ]
  %indvars.iv905.unr = phi i64 [ %indvars.iv905.ph, %.lr.ph610.preheader ], [ %indvars.iv.next906.prol, %.lr.ph610.prol ]
  %i.aif = sub i32 %i.aia, %i.v
  %i.aig = icmp ugt i32 %i.aif, -8
  br i1 %i.aig, label %._crit_edge611, label %.lr.ph610

.lr.ph610:                                        ; preds = %.lr.ph610.prol.loopexit, %.lr.ph610
  %indvars.iv909 = phi i64 [ %indvars.iv.next910.7, %.lr.ph610 ], [ %indvars.iv909.unr, %.lr.ph610.prol.loopexit ] ; 9 uses
  %indvars.iv905 = phi i64 [ %indvars.iv.next906.7, %.lr.ph610 ], [ %indvars.iv905.unr, %.lr.ph610.prol.loopexit ] ; 9 uses
  %i.aih = mul nsw i64 %indvars.iv909, %i.adz
  %gep1032 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aih
  %i.aii = load double, ptr %gep1032, align 8, !tbaa !9
  %i.aij = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv905
  store double %i.aii, ptr %i.aij, align 8, !tbaa !9
  %indvars.iv.next910 = add nsw i64 %indvars.iv909, 1
  %i.aik = mul nsw i64 %indvars.iv.next910, %i.adz
  %gep1032.1 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aik
  %i.ail = load double, ptr %gep1032.1, align 8, !tbaa !9
  %i.aim = getelementptr [8 x i8], ptr %5, i64 %indvars.iv905
  %i.ain = getelementptr i8, ptr %i.aim, i64 8
  store double %i.ail, ptr %i.ain, align 8, !tbaa !9
  %indvars.iv.next910.1 = add nsw i64 %indvars.iv909, 2
  %i.aio = mul nsw i64 %indvars.iv.next910.1, %i.adz
  %gep1032.2 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aio
  %i.aip = load double, ptr %gep1032.2, align 8, !tbaa !9
  %i.aiq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv905
  %i.air = getelementptr i8, ptr %i.aiq, i64 16
  store double %i.aip, ptr %i.air, align 8, !tbaa !9
  %indvars.iv.next910.2 = add nsw i64 %indvars.iv909, 3
  %i.ais = mul nsw i64 %indvars.iv.next910.2, %i.adz
  %gep1032.3 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.ais
  %i.ait = load double, ptr %gep1032.3, align 8, !tbaa !9
  %i.aiu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv905
  %i.aiv = getelementptr i8, ptr %i.aiu, i64 24
  store double %i.ait, ptr %i.aiv, align 8, !tbaa !9
  %indvars.iv.next910.3 = add nsw i64 %indvars.iv909, 4
  %i.aiw = mul nsw i64 %indvars.iv.next910.3, %i.adz
  %gep1032.4 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aiw
  %i.aix = load double, ptr %gep1032.4, align 8, !tbaa !9
  %i.aiy = getelementptr [8 x i8], ptr %5, i64 %indvars.iv905
  %i.aiz = getelementptr i8, ptr %i.aiy, i64 32
  store double %i.aix, ptr %i.aiz, align 8, !tbaa !9
  %indvars.iv.next910.4 = add nsw i64 %indvars.iv909, 5
  %i.aja = mul nsw i64 %indvars.iv.next910.4, %i.adz
  %gep1032.5 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aja
  %i.ajb = load double, ptr %gep1032.5, align 8, !tbaa !9
  %i.ajc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv905
  %i.ajd = getelementptr i8, ptr %i.ajc, i64 40
  store double %i.ajb, ptr %i.ajd, align 8, !tbaa !9
  %indvars.iv.next910.5 = add nsw i64 %indvars.iv909, 6
  %i.aje = mul nsw i64 %indvars.iv.next910.5, %i.adz
  %gep1032.6 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aje
  %i.ajf = load double, ptr %gep1032.6, align 8, !tbaa !9
  %i.ajg = getelementptr [8 x i8], ptr %5, i64 %indvars.iv905
  %i.ajh = getelementptr i8, ptr %i.ajg, i64 48
  store double %i.ajf, ptr %i.ajh, align 8, !tbaa !9
  %indvars.iv.next910.6 = add nsw i64 %indvars.iv909, 7
  %i.aji = mul nsw i64 %indvars.iv.next910.6, %i.adz
  %gep1032.7 = getelementptr [8 x i8], ptr %invariant.gep1031.a, i64 %i.aji
  %i.ajj = load double, ptr %gep1032.7, align 8, !tbaa !9
  %i.ajk = getelementptr [8 x i8], ptr %5, i64 %indvars.iv905
  %i.ajl = getelementptr i8, ptr %i.ajk, i64 56
  store double %i.ajj, ptr %i.ajl, align 8, !tbaa !9
  %indvars.iv.next906.7 = add nsw i64 %indvars.iv905, 8 ; 2 uses
  %indvars.iv.next910.7 = add nsw i64 %indvars.iv909, 8 ; 2 uses
  %lftr.wideiv914.7 = trunc i64 %indvars.iv.next910.7 to i32
  %exitcond915.not.7 = icmp eq i32 %i.v, %lftr.wideiv914.7
  br i1 %exitcond915.not.7, label %._crit_edge611, label %.lr.ph610, !llvm.loop !77

._crit_edge611:                                   ; preds = %.lr.ph610.prol.loopexit, %.lr.ph610, %middle.block1610, %vec.epilog.middle.block1624, %.loopexit1811
  %.21.lcssa.in = phi i64 [ %indvars.iv.next895.lcssa, %.loopexit1811 ], [ %i.ahy, %vec.epilog.middle.block1624 ], [ %i.ahp, %middle.block1610 ], [ %indvars.iv.next906.lcssa.unr, %.lr.ph610.prol.loopexit ], [ %indvars.iv.next906.7, %.lr.ph610 ]
  %.21.lcssa = trunc i64 %.21.lcssa.in to i32
  %.reass.reass = add i32 %.21.lcssa, %invariant.op
  %.not430.not = icmp sgt i64 %indvars.iv.next917, %i.aeb
  %indvars.iv.next908 = add i32 %indvars.iv907, -1
  %indvar.next1596 = add i64 %indvar1595, 1
  br i1 %.not430.not, label %iter.check1653, label %.loopexit, !llvm.loop !78

iter.check1468:                                   ; preds = %.thread461
  %i.ajm = mul nsw i32 %i.v, %i.d
  %i.ajn = lshr exact i32 %i.i, 1
  %i.ajo = zext nneg i32 %i.ajn to i64            ; 10 uses
  %i.ajp = sext i32 %i.ajm to i64                 ; 2 uses
  %i.ajq = zext nneg i32 %i.i to i64              ; 2 uses
  %invariant.gep1021 = getelementptr [8 x i8], ptr %3, i64 %i.ajp ; 3 uses
  %i.ajr = add nuw nsw i64 %i.ajo, 1
  %umax1452 = tail call i64 @llvm.umax.i64(i64 %i.ajr, i64 %i.ajq)
  %i.ajs = sub nsw i64 %umax1452, %i.ajo          ; 7 uses
  %min.iters.check1453 = icmp ult i64 %i.ajs, 4
  br i1 %min.iters.check1453, label %vec.epilog.scalar.ph1469.preheader, label %vector.memcheck1450

vector.memcheck1450:                              ; preds = %iter.check1468
  %i.ajt = add nsw i64 %i.ajo, %i.ajp
  %i.aju = shl nsw i64 %i.ajt, 3
  %i.ajv = add i64 %i.aju, %i.a
  %i.ajw = sub i64 %i.ajv, %i.b
  %diff.check1451 = icmp ugt i64 %i.ajw, -128
  br i1 %diff.check1451, label %vec.epilog.scalar.ph1469.preheader, label %vector.main.loop.iter.check1454

vector.main.loop.iter.check1454:                  ; preds = %vector.memcheck1450
  %min.iters.check1455 = icmp ult i64 %i.ajs, 16
  br i1 %min.iters.check1455, label %vec.epilog.ph1472, label %vector.ph1456

vector.ph1456:                                    ; preds = %vector.main.loop.iter.check1454
  %i.ajx = and i64 %i.ajs, 12
  %n.vec1457 = and i64 %i.ajs, -16                ; 6 uses
  %i.ajy = add nsw i64 %n.vec1457, %i.ajo
  %invariant.gep2028 = getelementptr [8 x i8], ptr %invariant.gep1021, i64 %i.ajo
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1456
  %index1459 = phi i64 [ 0, %vector.ph1456 ], [ %index.next1464, %vector.body1458 ] ; 3 uses
  %gep2029 = getelementptr [8 x i8], ptr %invariant.gep2028, i64 %index1459 ; 4 uses
  %i.ajz = getelementptr i8, ptr %gep2029, i64 32
  %i.aka = getelementptr i8, ptr %gep2029, i64 64
  %i.akb = getelementptr i8, ptr %gep2029, i64 96
  %wide.load1460 = load <4 x double>, ptr %gep2029, align 8, !tbaa !9
  %wide.load1461 = load <4 x double>, ptr %i.ajz, align 8, !tbaa !9
  %wide.load1462 = load <4 x double>, ptr %i.aka, align 8, !tbaa !9
  %wide.load1463 = load <4 x double>, ptr %i.akb, align 8, !tbaa !9
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index1459 ; 4 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 32
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akc, i64 64
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akc, i64 96
  store <4 x double> %wide.load1460, ptr %i.akc, align 8, !tbaa !9
  store <4 x double> %wide.load1461, ptr %i.akd, align 8, !tbaa !9
  store <4 x double> %wide.load1462, ptr %i.ake, align 8, !tbaa !9
  store <4 x double> %wide.load1463, ptr %i.akf, align 8, !tbaa !9
  %index.next1464 = add nuw i64 %index1459, 16    ; 2 uses
  %i.akg = icmp eq i64 %index.next1464, %n.vec1457
  br i1 %i.akg, label %middle.block1465, label %vector.body1458, !llvm.loop !79

middle.block1465:                                 ; preds = %vector.body1458
  %cmp.n1466 = icmp eq i64 %i.ajs, %n.vec1457
  br i1 %cmp.n1466, label %._crit_edge579, label %vec.epilog.iter.check1470

vec.epilog.iter.check1470:                        ; preds = %middle.block1465
  %min.epilog.iters.check1471 = icmp eq i64 %i.ajx, 0
  br i1 %min.epilog.iters.check1471, label %vec.epilog.scalar.ph1469.preheader, label %vec.epilog.ph1472, !prof !15

vec.epilog.ph1472:                                ; preds = %vector.main.loop.iter.check1454, %vec.epilog.iter.check1470
  %vec.epilog.resume.val1467 = phi i64 [ %n.vec1457, %vec.epilog.iter.check1470 ], [ 0, %vector.main.loop.iter.check1454 ]
  %n.vec1473 = and i64 %i.ajs, -4                 ; 5 uses
  %i.akh = add nsw i64 %n.vec1473, %i.ajo
  %invariant.gep2030 = getelementptr [8 x i8], ptr %invariant.gep1021, i64 %i.ajo
  br label %vec.epilog.vector.body1474

vec.epilog.vector.body1474:                       ; preds = %vec.epilog.vector.body1474, %vec.epilog.ph1472
  %index1475 = phi i64 [ %vec.epilog.resume.val1467, %vec.epilog.ph1472 ], [ %index.next1477, %vec.epilog.vector.body1474 ] ; 3 uses
  %gep2031 = getelementptr [8 x i8], ptr %invariant.gep2030, i64 %index1475
  %wide.load1476 = load <4 x double>, ptr %gep2031, align 8, !tbaa !9
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index1475
  store <4 x double> %wide.load1476, ptr %i.aki, align 8, !tbaa !9
  %index.next1477 = add nuw i64 %index1475, 4     ; 2 uses
  %i.akj = icmp eq i64 %index.next1477, %n.vec1473
  br i1 %i.akj, label %vec.epilog.middle.block1478, label %vec.epilog.vector.body1474, !llvm.loop !80

vec.epilog.middle.block1478:                      ; preds = %vec.epilog.vector.body1474
  %cmp.n1479 = icmp eq i64 %i.ajs, %n.vec1473
  br i1 %cmp.n1479, label %._crit_edge579, label %vec.epilog.scalar.ph1469.preheader

vec.epilog.scalar.ph1469.preheader:               ; preds = %vector.memcheck1450, %iter.check1468, %vec.epilog.iter.check1470, %vec.epilog.middle.block1478
  %indvars.iv843.ph = phi i64 [ %i.ajo, %iter.check1468 ], [ %i.ajo, %vector.memcheck1450 ], [ %i.ajy, %vec.epilog.iter.check1470 ], [ %i.akh, %vec.epilog.middle.block1478 ]
  %indvars.iv841.ph = phi i64 [ 0, %iter.check1468 ], [ 0, %vector.memcheck1450 ], [ %n.vec1457, %vec.epilog.iter.check1470 ], [ %n.vec1473, %vec.epilog.middle.block1478 ]
  br label %vec.epilog.scalar.ph1469

vec.epilog.scalar.ph1469:                         ; preds = %vec.epilog.scalar.ph1469.preheader, %vec.epilog.scalar.ph1469
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %vec.epilog.scalar.ph1469 ], [ %indvars.iv843.ph, %vec.epilog.scalar.ph1469.preheader ] ; 2 uses
  %indvars.iv841 = phi i64 [ %indvars.iv.next842, %vec.epilog.scalar.ph1469 ], [ %indvars.iv841.ph, %vec.epilog.scalar.ph1469.preheader ] ; 2 uses
  %gep1022 = getelementptr [8 x i8], ptr %invariant.gep1021, i64 %indvars.iv843
  %i.akk = load double, ptr %gep1022, align 8, !tbaa !9
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv841
  store double %i.akk, ptr %i.akl, align 8, !tbaa !9
  %indvars.iv.next842 = add nuw nsw i64 %indvars.iv841, 1 ; 2 uses
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 1 ; 2 uses
  %.not424.not = icmp samesign ult i64 %indvars.iv.next844, %i.ajq
  br i1 %.not424.not, label %vec.epilog.scalar.ph1469, label %._crit_edge579, !llvm.loop !81

._crit_edge579:                                   ; preds = %vec.epilog.scalar.ph1469, %vec.epilog.middle.block1478, %middle.block1465
  %indvars.iv.next842.lcssa = phi i64 [ %n.vec1473, %vec.epilog.middle.block1478 ], [ %n.vec1457, %middle.block1465 ], [ %indvars.iv.next842, %vec.epilog.scalar.ph1469 ] ; 2 uses
  %.not425590 = icmp samesign ult i32 %i.i, 4
  br i1 %.not425590, label %.preheader471.preheader, label %.preheader473.lr.ph

.preheader473.lr.ph:                              ; preds = %._crit_edge579
  %i.akm = add nuw nsw i32 %i.v, 1                ; 2 uses
  %i.akn = sext i32 %i.d to i64                   ; 8 uses
  %i.ako = zext nneg i32 %i.akm to i64            ; 2 uses
  %i.akp = zext nneg i32 %i.i to i64
  %i.akq = add nsw i32 %i.v, -1
  %wide.trip.count878 = zext nneg i32 %i.akq to i64
  %i.akr = mul nsw i64 %i.ako, %i.akn
  %i.aks = mul nsw i64 %i.akn, -8
  %i.akt = add nsw i32 %i.i, -2
  %ident.check1515.not = icmp eq i32 %i.d, 1
  br label %iter.check1541

iter.check1541:                                   ; preds = %.preheader473.lr.ph, %._crit_edge588
  %indvars.iv873 = phi i64 [ 0, %.preheader473.lr.ph ], [ %indvars.iv.next874, %._crit_edge588 ] ; 7 uses
  %indvars.iv871 = phi i64 [ 1, %.preheader473.lr.ph ], [ %indvars.iv.next872, %._crit_edge588 ] ; 10 uses
  %indvars.iv862 = phi i32 [ %i.akm, %.preheader473.lr.ph ], [ %indvars.iv.next863, %._crit_edge588 ] ; 3 uses
  %.23592.in = phi i64 [ %indvars.iv.next842.lcssa, %.preheader473.lr.ph ], [ %.25.lcssa.in, %._crit_edge588 ] ; 2 uses
  %i.aku = trunc i64 %indvars.iv873 to i32
  %i.akv = add i32 %i.v, %i.aku
  %i.akw = sub i32 %i.akt, %i.akv                 ; 3 uses
  %i.akx = zext i32 %i.akw to i64
  %i.aky = add nuw nsw i64 %i.akx, 1              ; 5 uses
  %i.akz = mul i64 %i.aks, %indvars.iv873
  %i.ala = sext i32 %indvars.iv862 to i64
  %.23592 = trunc i64 %.23592.in to i32           ; 4 uses
  %i.alb = sext i32 %indvars.iv862 to i64         ; 6 uses
  %sext983 = shl i64 %.23592.in, 32               ; 2 uses
  %i.alc = ashr exact i64 %sext983, 32            ; 6 uses
  %invariant.gep1023 = getelementptr [8 x i8], ptr %3, i64 %indvars.iv873 ; 7 uses
  %min.iters.check1518 = icmp samesign ugt i64 %indvars.iv871, 3
  %or.cond1824 = select i1 %min.iters.check1518, i1 %ident.check1515.not, i1 false
  br i1 %or.cond1824, label %vector.memcheck1516, label %vec.epilog.scalar.ph1542.preheader

vector.memcheck1516:                              ; preds = %iter.check1541
  %i.ald = shl i64 %indvars.iv873, 3
  %i.ale = add i64 %i.ald, %i.a
  %i.alf = sub i64 %i.b, %i.ale
  %i.alg = ashr exact i64 %sext983, 29
  %i.alh = add i64 %i.alf, %i.alg
  %i.ali = add i64 %i.alh, -1
  %diff.check1517 = icmp ult i64 %i.ali, 127
  br i1 %diff.check1517, label %vec.epilog.scalar.ph1542.preheader, label %vector.main.loop.iter.check1519

vector.main.loop.iter.check1519:                  ; preds = %vector.memcheck1516
  %min.iters.check1520 = icmp samesign ult i64 %indvars.iv871, 16
  br i1 %min.iters.check1520, label %vec.epilog.ph1545, label %vector.ph1521

vector.ph1521:                                    ; preds = %vector.main.loop.iter.check1519
  %i.alj = and i64 %indvars.iv871, 12
  %n.vec1522 = and i64 %indvars.iv871, 9223372036854775792 ; 5 uses
  %i.alk = add i64 %i.alc, %n.vec1522             ; 2 uses
  %i.all = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.23592, i64 0
  %i.alm = getelementptr [8 x i8], ptr %5, i64 %i.alc
  br label %vector.body1523

vector.body1523:                                  ; preds = %vector.body1523, %vector.ph1521
  %index1524 = phi i64 [ 0, %vector.ph1521 ], [ %index.next1533, %vector.body1523 ] ; 3 uses
  %vec.phi1525 = phi <4 x i32> [ %i.all, %vector.ph1521 ], [ %i.aln, %vector.body1523 ]
  %vec.phi1526 = phi <4 x i32> [ zeroinitializer, %vector.ph1521 ], [ %i.alo, %vector.body1523 ]
  %vec.phi1527 = phi <4 x i32> [ zeroinitializer, %vector.ph1521 ], [ %i.alp, %vector.body1523 ]
  %vec.phi1528 = phi <4 x i32> [ zeroinitializer, %vector.ph1521 ], [ %i.alq, %vector.body1523 ]
  %i.aln = add <4 x i32> %vec.phi1525, splat (i32 1) ; 2 uses
  %i.alo = add <4 x i32> %vec.phi1526, splat (i32 1) ; 2 uses
  %i.alp = add <4 x i32> %vec.phi1527, splat (i32 1) ; 2 uses
  %i.alq = add <4 x i32> %vec.phi1528, splat (i32 1) ; 2 uses
  %i.alr = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %index1524 ; 4 uses
  %i.als = getelementptr i8, ptr %i.alr, i64 32
  %i.alt = getelementptr i8, ptr %i.alr, i64 64
  %i.alu = getelementptr i8, ptr %i.alr, i64 96
  %wide.load1529 = load <4 x double>, ptr %i.alr, align 8, !tbaa !9
  %wide.load1530 = load <4 x double>, ptr %i.als, align 8, !tbaa !9
  %wide.load1531 = load <4 x double>, ptr %i.alt, align 8, !tbaa !9
  %wide.load1532 = load <4 x double>, ptr %i.alu, align 8, !tbaa !9
  %i.alv = getelementptr [8 x i8], ptr %i.alm, i64 %index1524 ; 4 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 32
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alv, i64 64
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alv, i64 96
  store <4 x double> %wide.load1529, ptr %i.alv, align 8, !tbaa !9
  store <4 x double> %wide.load1530, ptr %i.alw, align 8, !tbaa !9
  store <4 x double> %wide.load1531, ptr %i.alx, align 8, !tbaa !9
  store <4 x double> %wide.load1532, ptr %i.aly, align 8, !tbaa !9
  %index.next1533 = add nuw i64 %index1524, 16    ; 2 uses
  %i.alz = icmp eq i64 %index.next1533, %n.vec1522
  br i1 %i.alz, label %middle.block1534, label %vector.body1523, !llvm.loop !82

middle.block1534:                                 ; preds = %vector.body1523
  %bin.rdx1535 = add <4 x i32> %i.alo, %i.aln
  %bin.rdx1536 = add <4 x i32> %i.alp, %bin.rdx1535
  %bin.rdx1537 = add <4 x i32> %i.alq, %bin.rdx1536
  %i.ama = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1537) ; 3 uses
  %cmp.n1538 = icmp eq i64 %indvars.iv871, %n.vec1522
  br i1 %cmp.n1538, label %.loopexit1812, label %vec.epilog.iter.check1543

vec.epilog.iter.check1543:                        ; preds = %middle.block1534
  %min.epilog.iters.check1544 = icmp eq i64 %i.alj, 0
  br i1 %min.epilog.iters.check1544, label %vec.epilog.scalar.ph1542.preheader, label %vec.epilog.ph1545, !prof !15

vec.epilog.ph1545:                                ; preds = %vector.main.loop.iter.check1519, %vec.epilog.iter.check1543
  %vec.epilog.resume.val1539 = phi i64 [ %n.vec1522, %vec.epilog.iter.check1543 ], [ 0, %vector.main.loop.iter.check1519 ]
  %bc.merge.rdx1540 = phi i32 [ %i.ama, %vec.epilog.iter.check1543 ], [ %.23592, %vector.main.loop.iter.check1519 ]
  %n.vec1546 = and i64 %indvars.iv871, 9223372036854775804 ; 4 uses
  %i.amb = add i64 %i.alc, %n.vec1546             ; 2 uses
  %i.amc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1540, i64 0
  %i.amd = getelementptr [8 x i8], ptr %5, i64 %i.alc
  br label %vec.epilog.vector.body1547

vec.epilog.vector.body1547:                       ; preds = %vec.epilog.vector.body1547, %vec.epilog.ph1545
  %index1548 = phi i64 [ %vec.epilog.resume.val1539, %vec.epilog.ph1545 ], [ %index.next1551, %vec.epilog.vector.body1547 ] ; 3 uses
  %vec.phi1549 = phi <4 x i32> [ %i.amc, %vec.epilog.ph1545 ], [ %i.ame, %vec.epilog.vector.body1547 ]
  %i.ame = add <4 x i32> %vec.phi1549, splat (i32 1) ; 2 uses
  %i.amf = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %index1548
  %wide.load1550 = load <4 x double>, ptr %i.amf, align 8, !tbaa !9
  %i.amg = getelementptr [8 x i8], ptr %i.amd, i64 %index1548
  store <4 x double> %wide.load1550, ptr %i.amg, align 8, !tbaa !9
  %index.next1551 = add nuw i64 %index1548, 4     ; 2 uses
  %i.amh = icmp eq i64 %index.next1551, %n.vec1546
  br i1 %i.amh, label %vec.epilog.middle.block1552, label %vec.epilog.vector.body1547, !llvm.loop !83

vec.epilog.middle.block1552:                      ; preds = %vec.epilog.vector.body1547
  %i.ami = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ame) ; 2 uses
  %cmp.n1553 = icmp eq i64 %indvars.iv871, %n.vec1546
  br i1 %cmp.n1553, label %.loopexit1812, label %vec.epilog.scalar.ph1542.preheader

vec.epilog.scalar.ph1542.preheader:               ; preds = %vector.memcheck1516, %iter.check1541, %vec.epilog.iter.check1543, %vec.epilog.middle.block1552
  %indvars.iv858.in.ph = phi i32 [ %.23592, %iter.check1541 ], [ %.23592, %vector.memcheck1516 ], [ %i.ama, %vec.epilog.iter.check1543 ], [ %i.ami, %vec.epilog.middle.block1552 ] ; 2 uses
  %indvars.iv848.ph = phi i64 [ 0, %iter.check1541 ], [ 0, %vector.memcheck1516 ], [ %n.vec1522, %vec.epilog.iter.check1543 ], [ %n.vec1546, %vec.epilog.middle.block1552 ] ; 3 uses
  %indvars.iv846.ph = phi i64 [ %i.alc, %iter.check1541 ], [ %i.alc, %vector.memcheck1516 ], [ %i.alk, %vec.epilog.iter.check1543 ], [ %i.amb, %vec.epilog.middle.block1552 ] ; 2 uses
  %i.amj = sub nsw i64 %indvars.iv873, %indvars.iv848.ph
  %xtraiter1915 = and i64 %indvars.iv871, 3       ; 2 uses
  %lcmp.mod1916.not = icmp eq i64 %xtraiter1915, 0
  br i1 %lcmp.mod1916.not, label %vec.epilog.scalar.ph1542.prol.loopexit, label %vec.epilog.scalar.ph1542.prol

vec.epilog.scalar.ph1542.prol:                    ; preds = %vec.epilog.scalar.ph1542.preheader, %vec.epilog.scalar.ph1542.prol
  %indvars.iv858.in.prol = phi i32 [ %indvars.iv858.prol, %vec.epilog.scalar.ph1542.prol ], [ %indvars.iv858.in.ph, %vec.epilog.scalar.ph1542.preheader ]
  %indvars.iv848.prol = phi i64 [ %indvars.iv.next849.prol, %vec.epilog.scalar.ph1542.prol ], [ %indvars.iv848.ph, %vec.epilog.scalar.ph1542.preheader ] ; 2 uses
  %indvars.iv846.prol = phi i64 [ %indvars.iv.next847.prol, %vec.epilog.scalar.ph1542.prol ], [ %indvars.iv846.ph, %vec.epilog.scalar.ph1542.preheader ] ; 2 uses
  %prol.iter1917 = phi i64 [ %prol.iter1917.next, %vec.epilog.scalar.ph1542.prol ], [ 0, %vec.epilog.scalar.ph1542.preheader ]
  %indvars.iv858.prol = add i32 %indvars.iv858.in.prol, 1 ; 3 uses
  %i.amk = mul nsw i64 %indvars.iv848.prol, %i.akn
  %gep1024.prol = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amk
  %i.aml = load double, ptr %gep1024.prol, align 8, !tbaa !9
  %i.amm = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv846.prol
  store double %i.aml, ptr %i.amm, align 8, !tbaa !9
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
  %i.amn = icmp ult i64 %i.amj, 3
  br i1 %i.amn, label %.loopexit1812, label %vec.epilog.scalar.ph1542

vec.epilog.scalar.ph1542:                         ; preds = %vec.epilog.scalar.ph1542.prol.loopexit, %vec.epilog.scalar.ph1542
  %indvars.iv858.in = phi i32 [ %indvars.iv858.3, %vec.epilog.scalar.ph1542 ], [ %indvars.iv858.in.unr, %vec.epilog.scalar.ph1542.prol.loopexit ]
  %indvars.iv848 = phi i64 [ %indvars.iv.next849.3, %vec.epilog.scalar.ph1542 ], [ %indvars.iv848.unr, %vec.epilog.scalar.ph1542.prol.loopexit ] ; 5 uses
  %indvars.iv846 = phi i64 [ %indvars.iv.next847.3, %vec.epilog.scalar.ph1542 ], [ %indvars.iv846.unr, %vec.epilog.scalar.ph1542.prol.loopexit ] ; 5 uses
  %i.amo = mul nsw i64 %indvars.iv848, %i.akn
  %gep1024 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amo
  %i.amp = load double, ptr %gep1024, align 8, !tbaa !9
  %i.amq = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv846
  store double %i.amp, ptr %i.amq, align 8, !tbaa !9
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1
  %i.amr = mul nsw i64 %indvars.iv.next849, %i.akn
  %gep1024.1 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amr
  %i.ams = load double, ptr %gep1024.1, align 8, !tbaa !9
  %i.amt = getelementptr [8 x i8], ptr %5, i64 %indvars.iv846
  %i.amu = getelementptr i8, ptr %i.amt, i64 8
  store double %i.ams, ptr %i.amu, align 8, !tbaa !9
  %indvars.iv.next849.1 = add nuw nsw i64 %indvars.iv848, 2
  %i.amv = mul nsw i64 %indvars.iv.next849.1, %i.akn
  %gep1024.2 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amv
  %i.amw = load double, ptr %gep1024.2, align 8, !tbaa !9
  %i.amx = getelementptr [8 x i8], ptr %5, i64 %indvars.iv846
  %i.amy = getelementptr i8, ptr %i.amx, i64 16
  store double %i.amw, ptr %i.amy, align 8, !tbaa !9
  %indvars.iv.next849.2 = add nuw nsw i64 %indvars.iv848, 3
  %indvars.iv858.3 = add i32 %indvars.iv858.in, 4 ; 2 uses
  %i.amz = mul nsw i64 %indvars.iv.next849.2, %i.akn
  %gep1024.3 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %i.amz
  %i.ana = load double, ptr %gep1024.3, align 8, !tbaa !9
  %i.anb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv846
  %i.anc = getelementptr i8, ptr %i.anb, i64 24
  store double %i.ana, ptr %i.anc, align 8, !tbaa !9
  %indvars.iv.next847.3 = add nsw i64 %indvars.iv846, 4 ; 2 uses
  %indvars.iv.next849.3 = add nuw nsw i64 %indvars.iv848, 4 ; 2 uses
  %exitcond856.not.3 = icmp eq i64 %indvars.iv.next849.3, %indvars.iv871
  br i1 %exitcond856.not.3, label %.loopexit1812, label %vec.epilog.scalar.ph1542, !llvm.loop !85

.loopexit1812:                                    ; preds = %vec.epilog.scalar.ph1542.prol.loopexit, %vec.epilog.scalar.ph1542, %vec.epilog.middle.block1552, %middle.block1534
  %indvars.iv858.lcssa = phi i32 [ %i.ami, %vec.epilog.middle.block1552 ], [ %i.ama, %middle.block1534 ], [ %indvars.iv858.lcssa1851.unr, %vec.epilog.scalar.ph1542.prol.loopexit ], [ %indvars.iv858.3, %vec.epilog.scalar.ph1542 ]
  %indvars.iv.next847.lcssa = phi i64 [ %i.amb, %vec.epilog.middle.block1552 ], [ %i.alk, %middle.block1534 ], [ %indvars.iv.next847.lcssa1850.unr, %vec.epilog.scalar.ph1542.prol.loopexit ], [ %indvars.iv.next847.3, %vec.epilog.scalar.ph1542 ]
  %i.and = add nuw nsw i64 %indvars.iv873, %i.ako ; 2 uses
  %.not429.not583 = icmp samesign ult i64 %i.and, %i.akp
  br i1 %.not429.not583, label %iter.check1500, label %._crit_edge588

iter.check1500:                                   ; preds = %.loopexit1812
  %i.ane = mul nsw i64 %i.and, %i.akn
  %i.anf = sext i32 %indvars.iv858.lcssa to i64   ; 7 uses
  %invariant.gep1025 = getelementptr [8 x i8], ptr %3, i64 %i.ane ; 11 uses
  %min.iters.check1484 = icmp ult i32 %i.akw, 3
  br i1 %min.iters.check1484, label %vec.epilog.scalar.ph1501.preheader, label %vector.memcheck1482

vector.memcheck1482:                              ; preds = %iter.check1500
  %i.ang = add i64 %i.akz, %i.b
  %i.anh = add i64 %i.akr, %i.ala
  %i.ani = shl i64 %i.anh, 3
  %i.anj = add i64 %i.ani, %i.a
  %i.ank = sub i64 %i.ang, %i.anj
  %i.anl = shl nsw i64 %i.anf, 3
  %i.anm = add i64 %i.ank, %i.anl
  %i.ann = add i64 %i.anm, -1
  %diff.check1483 = icmp ult i64 %i.ann, 127
  br i1 %diff.check1483, label %vec.epilog.scalar.ph1501.preheader, label %vector.main.loop.iter.check1485

vector.main.loop.iter.check1485:                  ; preds = %vector.memcheck1482
  %min.iters.check1486 = icmp ult i32 %i.akw, 15
  br i1 %min.iters.check1486, label %vec.epilog.ph1504, label %vector.ph1487

vector.ph1487:                                    ; preds = %vector.main.loop.iter.check1485
  %i.ano = and i64 %i.aky, 12
  %n.vec1488 = and i64 %i.aky, 8589934576         ; 5 uses
  %i.anp = add nsw i64 %n.vec1488, %i.alb
  %i.anq = add nsw i64 %n.vec1488, %i.anf         ; 2 uses
  %invariant.gep2032 = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %i.alb
  %invariant.gep2034 = getelementptr [8 x i8], ptr %5, i64 %i.anf
  br label %vector.body1489

vector.body1489:                                  ; preds = %vector.body1489, %vector.ph1487
  %index1490 = phi i64 [ 0, %vector.ph1487 ], [ %index.next1495, %vector.body1489 ] ; 3 uses
  %gep2033 = getelementptr [8 x i8], ptr %invariant.gep2032, i64 %index1490 ; 4 uses
  %i.anr = getelementptr i8, ptr %gep2033, i64 32
  %i.ans = getelementptr i8, ptr %gep2033, i64 64
  %i.ant = getelementptr i8, ptr %gep2033, i64 96
  %wide.load1491 = load <4 x double>, ptr %gep2033, align 8, !tbaa !9
  %wide.load1492 = load <4 x double>, ptr %i.anr, align 8, !tbaa !9
  %wide.load1493 = load <4 x double>, ptr %i.ans, align 8, !tbaa !9
  %wide.load1494 = load <4 x double>, ptr %i.ant, align 8, !tbaa !9
  %gep2035 = getelementptr [8 x i8], ptr %invariant.gep2034, i64 %index1490 ; 4 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %gep2035, i64 32
  %i.anv = getelementptr inbounds nuw i8, ptr %gep2035, i64 64
  %i.anw = getelementptr inbounds nuw i8, ptr %gep2035, i64 96
  store <4 x double> %wide.load1491, ptr %gep2035, align 8, !tbaa !9
  store <4 x double> %wide.load1492, ptr %i.anu, align 8, !tbaa !9
  store <4 x double> %wide.load1493, ptr %i.anv, align 8, !tbaa !9
  store <4 x double> %wide.load1494, ptr %i.anw, align 8, !tbaa !9
  %index.next1495 = add nuw i64 %index1490, 16    ; 2 uses
  %i.anx = icmp eq i64 %index.next1495, %n.vec1488
  br i1 %i.anx, label %middle.block1496, label %vector.body1489, !llvm.loop !86

middle.block1496:                                 ; preds = %vector.body1489
  %cmp.n1497 = icmp eq i64 %i.aky, %n.vec1488
  br i1 %cmp.n1497, label %._crit_edge588, label %vec.epilog.iter.check1502

vec.epilog.iter.check1502:                        ; preds = %middle.block1496
  %min.epilog.iters.check1503 = icmp eq i64 %i.ano, 0
  br i1 %min.epilog.iters.check1503, label %vec.epilog.scalar.ph1501.preheader, label %vec.epilog.ph1504, !prof !15

vec.epilog.ph1504:                                ; preds = %vector.main.loop.iter.check1485, %vec.epilog.iter.check1502
  %vec.epilog.resume.val1498 = phi i64 [ %n.vec1488, %vec.epilog.iter.check1502 ], [ 0, %vector.main.loop.iter.check1485 ]
  %n.vec1505 = and i64 %i.aky, 8589934588         ; 4 uses
  %i.any = add nsw i64 %n.vec1505, %i.alb
  %i.anz = add nsw i64 %n.vec1505, %i.anf         ; 2 uses
  %invariant.gep2036 = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %i.alb
  %invariant.gep2038 = getelementptr [8 x i8], ptr %5, i64 %i.anf
  br label %vec.epilog.vector.body1506

vec.epilog.vector.body1506:                       ; preds = %vec.epilog.vector.body1506, %vec.epilog.ph1504
  %index1507 = phi i64 [ %vec.epilog.resume.val1498, %vec.epilog.ph1504 ], [ %index.next1509, %vec.epilog.vector.body1506 ] ; 3 uses
  %gep2037 = getelementptr [8 x i8], ptr %invariant.gep2036, i64 %index1507
  %wide.load1508 = load <4 x double>, ptr %gep2037, align 8, !tbaa !9
  %gep2039 = getelementptr [8 x i8], ptr %invariant.gep2038, i64 %index1507
  store <4 x double> %wide.load1508, ptr %gep2039, align 8, !tbaa !9
  %index.next1509 = add nuw i64 %index1507, 4     ; 2 uses
  %i.aoa = icmp eq i64 %index.next1509, %n.vec1505
  br i1 %i.aoa, label %vec.epilog.middle.block1510, label %vec.epilog.vector.body1506, !llvm.loop !87

vec.epilog.middle.block1510:                      ; preds = %vec.epilog.vector.body1506
  %cmp.n1511 = icmp eq i64 %i.aky, %n.vec1505
  br i1 %cmp.n1511, label %._crit_edge588, label %vec.epilog.scalar.ph1501.preheader

vec.epilog.scalar.ph1501.preheader:               ; preds = %vector.memcheck1482, %iter.check1500, %vec.epilog.iter.check1502, %vec.epilog.middle.block1510
  %indvars.iv864.ph = phi i64 [ %i.alb, %iter.check1500 ], [ %i.alb, %vector.memcheck1482 ], [ %i.anp, %vec.epilog.iter.check1502 ], [ %i.any, %vec.epilog.middle.block1510 ] ; 3 uses
  %indvars.iv860.ph = phi i64 [ %i.anf, %iter.check1500 ], [ %i.anf, %vector.memcheck1482 ], [ %i.anq, %vec.epilog.iter.check1502 ], [ %i.anz, %vec.epilog.middle.block1510 ] ; 2 uses
  %i.aob = trunc i64 %indvars.iv864.ph to i32     ; 2 uses
  %i.aoc = sub i32 %i.i, %i.aob
  %xtraiter1918 = and i32 %i.aoc, 7               ; 2 uses
  %lcmp.mod1919.not = icmp eq i32 %xtraiter1918, 0
  br i1 %lcmp.mod1919.not, label %vec.epilog.scalar.ph1501.prol.loopexit, label %vec.epilog.scalar.ph1501.prol

vec.epilog.scalar.ph1501.prol:                    ; preds = %vec.epilog.scalar.ph1501.preheader, %vec.epilog.scalar.ph1501.prol
  %indvars.iv864.prol = phi i64 [ %indvars.iv.next865.prol, %vec.epilog.scalar.ph1501.prol ], [ %indvars.iv864.ph, %vec.epilog.scalar.ph1501.preheader ] ; 2 uses
  %indvars.iv860.prol = phi i64 [ %indvars.iv.next861.prol, %vec.epilog.scalar.ph1501.prol ], [ %indvars.iv860.ph, %vec.epilog.scalar.ph1501.preheader ] ; 2 uses
  %prol.iter1920 = phi i32 [ %prol.iter1920.next, %vec.epilog.scalar.ph1501.prol ], [ 0, %vec.epilog.scalar.ph1501.preheader ]
  %gep1026.prol = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864.prol
  %i.aod = load double, ptr %gep1026.prol, align 8, !tbaa !9
  %i.aoe = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv860.prol
  store double %i.aod, ptr %i.aoe, align 8, !tbaa !9
  %indvars.iv.next861.prol = add nsw i64 %indvars.iv860.prol, 1 ; 3 uses
  %indvars.iv.next865.prol = add nsw i64 %indvars.iv864.prol, 1 ; 2 uses
  %prol.iter1920.next = add i32 %prol.iter1920, 1 ; 2 uses
  %prol.iter1920.cmp.not = icmp eq i32 %prol.iter1920.next, %xtraiter1918
  br i1 %prol.iter1920.cmp.not, label %vec.epilog.scalar.ph1501.prol.loopexit, label %vec.epilog.scalar.ph1501.prol, !llvm.loop !88

vec.epilog.scalar.ph1501.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1501.prol, %vec.epilog.scalar.ph1501.preheader
  %indvars.iv.next861.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph1501.preheader ], [ %indvars.iv.next861.prol, %vec.epilog.scalar.ph1501.prol ]
  %indvars.iv864.unr = phi i64 [ %indvars.iv864.ph, %vec.epilog.scalar.ph1501.preheader ], [ %indvars.iv.next865.prol, %vec.epilog.scalar.ph1501.prol ]
  %indvars.iv860.unr = phi i64 [ %indvars.iv860.ph, %vec.epilog.scalar.ph1501.preheader ], [ %indvars.iv.next861.prol, %vec.epilog.scalar.ph1501.prol ]
  %i.aof = sub i32 %i.aob, %i.i
  %i.aog = icmp ugt i32 %i.aof, -8
  br i1 %i.aog, label %._crit_edge588, label %vec.epilog.scalar.ph1501

vec.epilog.scalar.ph1501:                         ; preds = %vec.epilog.scalar.ph1501.prol.loopexit, %vec.epilog.scalar.ph1501
  %indvars.iv864 = phi i64 [ %indvars.iv.next865.7, %vec.epilog.scalar.ph1501 ], [ %indvars.iv864.unr, %vec.epilog.scalar.ph1501.prol.loopexit ] ; 9 uses
  %indvars.iv860 = phi i64 [ %indvars.iv.next861.7, %vec.epilog.scalar.ph1501 ], [ %indvars.iv860.unr, %vec.epilog.scalar.ph1501.prol.loopexit ] ; 9 uses
  %gep1026 = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %i.aoh = load double, ptr %gep1026, align 8, !tbaa !9
  %i.aoi = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv860
  store double %i.aoh, ptr %i.aoi, align 8, !tbaa !9
  %i.aoj = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.1 = getelementptr i8, ptr %i.aoj, i64 8
  %i.aok = load double, ptr %gep1026.1, align 8, !tbaa !9
  %i.aol = getelementptr [8 x i8], ptr %5, i64 %indvars.iv860
  %i.aom = getelementptr i8, ptr %i.aol, i64 8
  store double %i.aok, ptr %i.aom, align 8, !tbaa !9
  %i.aon = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.2 = getelementptr i8, ptr %i.aon, i64 16
  %i.aoo = load double, ptr %gep1026.2, align 8, !tbaa !9
  %i.aop = getelementptr [8 x i8], ptr %5, i64 %indvars.iv860
  %i.aoq = getelementptr i8, ptr %i.aop, i64 16
  store double %i.aoo, ptr %i.aoq, align 8, !tbaa !9
  %i.aor = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.3 = getelementptr i8, ptr %i.aor, i64 24
  %i.aos = load double, ptr %gep1026.3, align 8, !tbaa !9
  %i.aot = getelementptr [8 x i8], ptr %5, i64 %indvars.iv860
  %i.aou = getelementptr i8, ptr %i.aot, i64 24
  store double %i.aos, ptr %i.aou, align 8, !tbaa !9
  %i.aov = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.4 = getelementptr i8, ptr %i.aov, i64 32
  %i.aow = load double, ptr %gep1026.4, align 8, !tbaa !9
  %i.aox = getelementptr [8 x i8], ptr %5, i64 %indvars.iv860
  %i.aoy = getelementptr i8, ptr %i.aox, i64 32
  store double %i.aow, ptr %i.aoy, align 8, !tbaa !9
  %i.aoz = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.5 = getelementptr i8, ptr %i.aoz, i64 40
  %i.apa = load double, ptr %gep1026.5, align 8, !tbaa !9
  %i.apb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv860
  %i.apc = getelementptr i8, ptr %i.apb, i64 40
  store double %i.apa, ptr %i.apc, align 8, !tbaa !9
  %i.apd = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.6 = getelementptr i8, ptr %i.apd, i64 48
  %i.ape = load double, ptr %gep1026.6, align 8, !tbaa !9
  %i.apf = getelementptr [8 x i8], ptr %5, i64 %indvars.iv860
  %i.apg = getelementptr i8, ptr %i.apf, i64 48
  store double %i.ape, ptr %i.apg, align 8, !tbaa !9
  %i.aph = getelementptr [8 x i8], ptr %invariant.gep1025, i64 %indvars.iv864
  %gep1026.7 = getelementptr i8, ptr %i.aph, i64 56
  %i.api = load double, ptr %gep1026.7, align 8, !tbaa !9
  %i.apj = getelementptr [8 x i8], ptr %5, i64 %indvars.iv860
  %i.apk = getelementptr i8, ptr %i.apj, i64 56
  store double %i.api, ptr %i.apk, align 8, !tbaa !9
  %indvars.iv.next861.7 = add nsw i64 %indvars.iv860, 8 ; 2 uses
  %indvars.iv.next865.7 = add nsw i64 %indvars.iv864, 8 ; 2 uses
  %lftr.wideiv869.7 = trunc i64 %indvars.iv.next865.7 to i32
  %exitcond870.not.7 = icmp eq i32 %i.i, %lftr.wideiv869.7
  br i1 %exitcond870.not.7, label %._crit_edge588, label %vec.epilog.scalar.ph1501, !llvm.loop !89

._crit_edge588:                                   ; preds = %vec.epilog.scalar.ph1501.prol.loopexit, %vec.epilog.scalar.ph1501, %middle.block1496, %vec.epilog.middle.block1510, %.loopexit1812
  %.25.lcssa.in = phi i64 [ %indvars.iv.next847.lcssa, %.loopexit1812 ], [ %i.anz, %vec.epilog.middle.block1510 ], [ %i.anq, %middle.block1496 ], [ %indvars.iv.next861.lcssa.unr, %vec.epilog.scalar.ph1501.prol.loopexit ], [ %indvars.iv.next861.7, %vec.epilog.scalar.ph1501 ] ; 2 uses
  %indvars.iv.next874 = add nuw nsw i64 %indvars.iv873, 1 ; 2 uses
  %indvars.iv.next872 = add nuw nsw i64 %indvars.iv871, 1
  %indvars.iv.next863 = add nuw i32 %indvars.iv862, 1
  %exitcond879.not = icmp eq i64 %indvars.iv.next874, %wide.trip.count878
  br i1 %exitcond879.not, label %.preheader471.preheader, label %iter.check1541, !llvm.loop !90

.preheader471.preheader:                          ; preds = %._crit_edge588, %._crit_edge579
  %.23.lcssa = phi i64 [ %indvars.iv.next842.lcssa, %._crit_edge579 ], [ %.25.lcssa.in, %._crit_edge588 ]
  %i.apl = sext i32 %i.d to i64                   ; 9 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.v, i32 1)
  %i.apm = lshr exact i32 %i.i, 1                 ; 2 uses
  %i.apn = zext nneg i32 %i.apm to i64
  %i.apo = add nsw i64 %i.apn, -1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.v)
  %i.app = add nuw i32 %smax, %i.apm
  %i.apq = sub i32 %i.app, %i.v
  %wide.trip.count891 = zext i32 %i.apq to i64
  %sext982 = shl i64 %.23.lcssa, 32
  %i.apr = ashr exact i64 %sext982, 32
  %wide.trip.count887 = zext nneg i32 %umax to i64 ; 8 uses
  %i.aps = add i64 %i.b, 8
  %min.iters.check1563 = icmp ugt i32 %i.i, 7
  %ident.check1558.not = icmp eq i32 %i.d, 1
  %or.cond1825 = select i1 %min.iters.check1563, i1 %ident.check1558.not, i1 false
  %min.iters.check1565 = icmp ult i32 %i.i, 32
  %i.apt = and i64 %wide.trip.count887, 12
  %n.vec1567 = and i64 %wide.trip.count887, 1073741808 ; 5 uses
  %cmp.n1576 = icmp eq i64 %n.vec1567, %wide.trip.count887
  %min.epilog.iters.check1581 = icmp eq i64 %i.apt, 0
  %n.vec1583 = and i64 %wide.trip.count887, 1073741820 ; 4 uses
  %cmp.n1589 = icmp eq i64 %n.vec1583, %wide.trip.count887
  br label %iter.check1578

iter.check1578:                                   ; preds = %.preheader471.preheader, %._crit_edge599
  %indvar1560 = phi i64 [ 0, %.preheader471.preheader ], [ %indvar.next1561, %._crit_edge599 ] ; 2 uses
  %indvars.iv889 = phi i64 [ %i.apo, %.preheader471.preheader ], [ %indvars.iv.next890, %._crit_edge599 ] ; 2 uses
  %.26603 = phi i64 [ %i.apr, %.preheader471.preheader ], [ %indvars.iv.next881.lcssa, %._crit_edge599 ] ; 7 uses
  %invariant.gep1027 = getelementptr [8 x i8], ptr %3, i64 %indvars.iv889 ; 11 uses
  br i1 %or.cond1825, label %vector.memcheck1559, label %vec.epilog.scalar.ph1579.preheader

vector.memcheck1559:                              ; preds = %iter.check1578
  %i.apu = add i64 %indvar1560, %i.ajo
  %i.apv = shl i64 %i.apu, 3
  %i.apw = add i64 %i.apv, %i.a
  %i.apx = sub i64 %i.aps, %i.apw
  %i.apy = shl i64 %.26603, 3
  %i.apz = add i64 %i.apx, %i.apy
  %i.aqa = add i64 %i.apz, -1
  %diff.check1562 = icmp ult i64 %i.aqa, 127
  br i1 %diff.check1562, label %vec.epilog.scalar.ph1579.preheader, label %vector.main.loop.iter.check1564

vector.main.loop.iter.check1564:                  ; preds = %vector.memcheck1559
  br i1 %min.iters.check1565, label %vec.epilog.ph1582, label %vector.ph1566

vector.ph1566:                                    ; preds = %vector.main.loop.iter.check1564
  %i.aqb = add i64 %.26603, %n.vec1567            ; 2 uses
  %i.aqc = getelementptr [8 x i8], ptr %5, i64 %.26603
  br label %vector.body1568

vector.body1568:                                  ; preds = %vector.body1568, %vector.ph1566
  %index1569 = phi i64 [ 0, %vector.ph1566 ], [ %index.next1574, %vector.body1568 ] ; 3 uses
  %i.aqd = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %index1569 ; 4 uses
  %i.aqe = getelementptr i8, ptr %i.aqd, i64 32
  %i.aqf = getelementptr i8, ptr %i.aqd, i64 64
  %i.aqg = getelementptr i8, ptr %i.aqd, i64 96
  %wide.load1570 = load <4 x double>, ptr %i.aqd, align 8, !tbaa !9
  %wide.load1571 = load <4 x double>, ptr %i.aqe, align 8, !tbaa !9
  %wide.load1572 = load <4 x double>, ptr %i.aqf, align 8, !tbaa !9
  %wide.load1573 = load <4 x double>, ptr %i.aqg, align 8, !tbaa !9
  %i.aqh = getelementptr [8 x i8], ptr %i.aqc, i64 %index1569 ; 4 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 32
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqh, i64 64
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqh, i64 96
  store <4 x double> %wide.load1570, ptr %i.aqh, align 8, !tbaa !9
  store <4 x double> %wide.load1571, ptr %i.aqi, align 8, !tbaa !9
  store <4 x double> %wide.load1572, ptr %i.aqj, align 8, !tbaa !9
  store <4 x double> %wide.load1573, ptr %i.aqk, align 8, !tbaa !9
  %index.next1574 = add nuw i64 %index1569, 16    ; 2 uses
  %i.aql = icmp eq i64 %index.next1574, %n.vec1567
  br i1 %i.aql, label %middle.block1575, label %vector.body1568, !llvm.loop !91

middle.block1575:                                 ; preds = %vector.body1568
  br i1 %cmp.n1576, label %._crit_edge599, label %vec.epilog.iter.check1580

vec.epilog.iter.check1580:                        ; preds = %middle.block1575
  br i1 %min.epilog.iters.check1581, label %vec.epilog.scalar.ph1579.preheader, label %vec.epilog.ph1582, !prof !15

vec.epilog.ph1582:                                ; preds = %vector.main.loop.iter.check1564, %vec.epilog.iter.check1580
  %vec.epilog.resume.val1577 = phi i64 [ %n.vec1567, %vec.epilog.iter.check1580 ], [ 0, %vector.main.loop.iter.check1564 ]
  %i.aqm = add i64 %.26603, %n.vec1583            ; 2 uses
  %i.aqn = getelementptr [8 x i8], ptr %5, i64 %.26603
  br label %vec.epilog.vector.body1584

vec.epilog.vector.body1584:                       ; preds = %vec.epilog.vector.body1584, %vec.epilog.ph1582
  %index1585 = phi i64 [ %vec.epilog.resume.val1577, %vec.epilog.ph1582 ], [ %index.next1587, %vec.epilog.vector.body1584 ] ; 3 uses
  %i.aqo = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %index1585
  %wide.load1586 = load <4 x double>, ptr %i.aqo, align 8, !tbaa !9
  %i.aqp = getelementptr [8 x i8], ptr %i.aqn, i64 %index1585
  store <4 x double> %wide.load1586, ptr %i.aqp, align 8, !tbaa !9
  %index.next1587 = add nuw i64 %index1585, 4     ; 2 uses
  %i.aqq = icmp eq i64 %index.next1587, %n.vec1583
  br i1 %i.aqq, label %vec.epilog.middle.block1588, label %vec.epilog.vector.body1584, !llvm.loop !92

vec.epilog.middle.block1588:                      ; preds = %vec.epilog.vector.body1584
  br i1 %cmp.n1589, label %._crit_edge599, label %vec.epilog.scalar.ph1579.preheader

vec.epilog.scalar.ph1579.preheader:               ; preds = %vector.memcheck1559, %iter.check1578, %vec.epilog.iter.check1580, %vec.epilog.middle.block1588
  %indvars.iv882.ph = phi i64 [ 0, %iter.check1578 ], [ 0, %vector.memcheck1559 ], [ %n.vec1567, %vec.epilog.iter.check1580 ], [ %n.vec1583, %vec.epilog.middle.block1588 ] ; 4 uses
  %indvars.iv880.ph = phi i64 [ %.26603, %iter.check1578 ], [ %.26603, %vector.memcheck1559 ], [ %i.aqb, %vec.epilog.iter.check1580 ], [ %i.aqm, %vec.epilog.middle.block1588 ] ; 2 uses
  %i.aqr = sub nsw i64 %wide.trip.count887, %indvars.iv882.ph
  %xtraiter1921 = and i64 %i.aqr, 7               ; 2 uses
  %lcmp.mod1922.not = icmp eq i64 %xtraiter1921, 0
  br i1 %lcmp.mod1922.not, label %vec.epilog.scalar.ph1579.prol.loopexit, label %vec.epilog.scalar.ph1579.prol

vec.epilog.scalar.ph1579.prol:                    ; preds = %vec.epilog.scalar.ph1579.preheader, %vec.epilog.scalar.ph1579.prol
  %indvars.iv882.prol = phi i64 [ %indvars.iv.next883.prol, %vec.epilog.scalar.ph1579.prol ], [ %indvars.iv882.ph, %vec.epilog.scalar.ph1579.preheader ] ; 2 uses
  %indvars.iv880.prol = phi i64 [ %indvars.iv.next881.prol, %vec.epilog.scalar.ph1579.prol ], [ %indvars.iv880.ph, %vec.epilog.scalar.ph1579.preheader ] ; 2 uses
  %prol.iter1923 = phi i64 [ %prol.iter1923.next, %vec.epilog.scalar.ph1579.prol ], [ 0, %vec.epilog.scalar.ph1579.preheader ]
  %i.aqs = mul nsw i64 %indvars.iv882.prol, %i.apl
  %gep1028.prol.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aqs
  %i.aqt = load double, ptr %gep1028.prol.a, align 8, !tbaa !9
  %i.aqu = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv880.prol
  store double %i.aqt, ptr %i.aqu, align 8, !tbaa !9
  %indvars.iv.next881.prol = add nsw i64 %indvars.iv880.prol, 1 ; 3 uses
  %indvars.iv.next883.prol = add nuw nsw i64 %indvars.iv882.prol, 1 ; 2 uses
  %prol.iter1923.next = add i64 %prol.iter1923, 1 ; 2 uses
  %prol.iter1923.cmp.not = icmp eq i64 %prol.iter1923.next, %xtraiter1921
  br i1 %prol.iter1923.cmp.not, label %vec.epilog.scalar.ph1579.prol.loopexit, label %vec.epilog.scalar.ph1579.prol, !llvm.loop !93

vec.epilog.scalar.ph1579.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1579.prol, %vec.epilog.scalar.ph1579.preheader
  %indvars.iv.next881.lcssa1844.unr = phi i64 [ poison, %vec.epilog.scalar.ph1579.preheader ], [ %indvars.iv.next881.prol, %vec.epilog.scalar.ph1579.prol ]
  %indvars.iv882.unr = phi i64 [ %indvars.iv882.ph, %vec.epilog.scalar.ph1579.preheader ], [ %indvars.iv.next883.prol, %vec.epilog.scalar.ph1579.prol ]
  %indvars.iv880.unr = phi i64 [ %indvars.iv880.ph, %vec.epilog.scalar.ph1579.preheader ], [ %indvars.iv.next881.prol, %vec.epilog.scalar.ph1579.prol ]
  %i.aqv = sub nsw i64 %indvars.iv882.ph, %wide.trip.count887
  %i.aqw = icmp ugt i64 %i.aqv, -8
  br i1 %i.aqw, label %._crit_edge599, label %vec.epilog.scalar.ph1579

vec.epilog.scalar.ph1579:                         ; preds = %vec.epilog.scalar.ph1579.prol.loopexit, %vec.epilog.scalar.ph1579
  %indvars.iv882 = phi i64 [ %indvars.iv.next883.7, %vec.epilog.scalar.ph1579 ], [ %indvars.iv882.unr, %vec.epilog.scalar.ph1579.prol.loopexit ] ; 9 uses
  %indvars.iv880 = phi i64 [ %indvars.iv.next881.7, %vec.epilog.scalar.ph1579 ], [ %indvars.iv880.unr, %vec.epilog.scalar.ph1579.prol.loopexit ] ; 9 uses
  %i.aqx = mul nsw i64 %indvars.iv882, %i.apl
  %gep1028.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aqx
  %i.aqy = load double, ptr %gep1028.a, align 8, !tbaa !9
  %i.aqz = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv880
  store double %i.aqy, ptr %i.aqz, align 8, !tbaa !9
  %indvars.iv.next883 = add nuw nsw i64 %indvars.iv882, 1
  %i.ara = mul nsw i64 %indvars.iv.next883, %i.apl
  %gep1028.1.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.ara
  %i.arb = load double, ptr %gep1028.1.a, align 8, !tbaa !9
  %i.arc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv880
  %i.ard = getelementptr i8, ptr %i.arc, i64 8
  store double %i.arb, ptr %i.ard, align 8, !tbaa !9
  %indvars.iv.next883.1 = add nuw nsw i64 %indvars.iv882, 2
  %i.are = mul nsw i64 %indvars.iv.next883.1, %i.apl
  %gep1028.2.a = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.are
  %i.arf = load double, ptr %gep1028.2.a, align 8, !tbaa !9
  %i.arg = getelementptr [8 x i8], ptr %5, i64 %indvars.iv880
  %i.arh = getelementptr i8, ptr %i.arg, i64 16
  store double %i.arf, ptr %i.arh, align 8, !tbaa !9
  %indvars.iv.next883.2 = add nuw nsw i64 %indvars.iv882, 3
  %i.ari = mul nsw i64 %indvars.iv.next883.2, %i.apl
  %gep1028.3 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.ari
  %i.arj = load double, ptr %gep1028.3, align 8, !tbaa !9
  %i.ark = getelementptr [8 x i8], ptr %5, i64 %indvars.iv880
  %i.arl = getelementptr i8, ptr %i.ark, i64 24
  store double %i.arj, ptr %i.arl, align 8, !tbaa !9
  %indvars.iv.next883.3 = add nuw nsw i64 %indvars.iv882, 4
  %i.arm = mul nsw i64 %indvars.iv.next883.3, %i.apl
  %gep1028.4 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.arm
  %i.arn = load double, ptr %gep1028.4, align 8, !tbaa !9
  %i.aro = getelementptr [8 x i8], ptr %5, i64 %indvars.iv880
  %i.arp = getelementptr i8, ptr %i.aro, i64 32
  store double %i.arn, ptr %i.arp, align 8, !tbaa !9
  %indvars.iv.next883.4 = add nuw nsw i64 %indvars.iv882, 5
  %i.arq = mul nsw i64 %indvars.iv.next883.4, %i.apl
  %gep1028.5 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.arq
  %i.arr = load double, ptr %gep1028.5, align 8, !tbaa !9
  %i.ars = getelementptr [8 x i8], ptr %5, i64 %indvars.iv880
  %i.art = getelementptr i8, ptr %i.ars, i64 40
  store double %i.arr, ptr %i.art, align 8, !tbaa !9
  %indvars.iv.next883.5 = add nuw nsw i64 %indvars.iv882, 6
  %i.aru = mul nsw i64 %indvars.iv.next883.5, %i.apl
  %gep1028.6 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.aru
  %i.arv = load double, ptr %gep1028.6, align 8, !tbaa !9
  %i.arw = getelementptr [8 x i8], ptr %5, i64 %indvars.iv880
  %i.arx = getelementptr i8, ptr %i.arw, i64 48
  store double %i.arv, ptr %i.arx, align 8, !tbaa !9
  %indvars.iv.next883.6 = add nuw nsw i64 %indvars.iv882, 7
  %i.ary = mul nsw i64 %indvars.iv.next883.6, %i.apl
  %gep1028.7 = getelementptr [8 x i8], ptr %invariant.gep1027, i64 %i.ary
  %i.arz = load double, ptr %gep1028.7, align 8, !tbaa !9
  %i.asa = getelementptr [8 x i8], ptr %5, i64 %indvars.iv880
  %i.asb = getelementptr i8, ptr %i.asa, i64 56
  store double %i.arz, ptr %i.asb, align 8, !tbaa !9
  %indvars.iv.next881.7 = add nsw i64 %indvars.iv880, 8 ; 2 uses
  %indvars.iv.next883.7 = add nuw nsw i64 %indvars.iv882, 8 ; 2 uses
  %exitcond888.not.7 = icmp eq i64 %indvars.iv.next883.7, %wide.trip.count887
  br i1 %exitcond888.not.7, label %._crit_edge599, label %vec.epilog.scalar.ph1579, !llvm.loop !94

._crit_edge599:                                   ; preds = %vec.epilog.scalar.ph1579.prol.loopexit, %vec.epilog.scalar.ph1579, %vec.epilog.middle.block1588, %middle.block1575
  %indvars.iv.next881.lcssa = phi i64 [ %i.aqm, %vec.epilog.middle.block1588 ], [ %i.aqb, %middle.block1575 ], [ %indvars.iv.next881.lcssa1844.unr, %vec.epilog.scalar.ph1579.prol.loopexit ], [ %indvars.iv.next881.7, %vec.epilog.scalar.ph1579 ]
  %indvars.iv.next890 = add nsw i64 %indvars.iv889, 1 ; 2 uses
  %exitcond892.not = icmp eq i64 %indvars.iv.next890, %wide.trip.count891
  %indvar.next1561 = add i64 %indvar1560, 1
  br i1 %exitcond892.not, label %.loopexit, label %iter.check1578, !llvm.loop !95

.preheader468.us.preheader:                       ; preds = %bb.p
  %i.asc = lshr exact i32 %i.i, 1
  %i.asd = zext nneg i32 %i.asc to i64            ; 9 uses
  %i.ase = sext i32 %i.d to i64                   ; 2 uses
  %i.asf = zext nneg i32 %i.i to i64              ; 2 uses
  %i.asg = add nuw nsw i32 %i.v, 1
  %wide.trip.count927 = zext nneg i32 %i.asg to i64 ; 2 uses
  %umax1673 = tail call i64 @llvm.umax.i64(i64 %wide.trip.count927, i64 %i.asf)
  %i.ash = sub nsw i64 %umax1673, %i.asd          ; 7 uses
  %min.iters.check1674 = icmp ugt i64 %i.ash, 3
  %ident.check1670.not = icmp eq i32 %i.d, 1
  %or.cond1826 = select i1 %min.iters.check1674, i1 %ident.check1670.not, i1 false
  %min.iters.check1676 = icmp ult i64 %i.ash, 16
  %i.asi = and i64 %i.ash, 12
  %n.vec1678 = and i64 %i.ash, -16                ; 5 uses
  %i.asj = add nsw i64 %n.vec1678, %i.asd
  %cmp.n1687 = icmp eq i64 %i.ash, %n.vec1678
  %min.epilog.iters.check1693 = icmp eq i64 %i.asi, 0
  %n.vec1695 = and i64 %i.ash, -4                 ; 4 uses
  %i.ask = add nsw i64 %n.vec1695, %i.asd
  %cmp.n1701 = icmp eq i64 %i.ash, %n.vec1695
  br label %iter.check1690

iter.check1690:                                   ; preds = %.preheader468.us.preheader, %._crit_edge622.us
  %indvars.iv924 = phi i64 [ 0, %.preheader468.us.preheader ], [ %indvars.iv.next925, %._crit_edge622.us ] ; 3 uses
  %.28625.us = phi i64 [ 0, %.preheader468.us.preheader ], [ %indvars.iv.next920.lcssa, %._crit_edge622.us ] ; 7 uses
  %invariant.gep1033 = getelementptr [8 x i8], ptr %3, i64 %indvars.iv924 ; 3 uses
  br i1 %or.cond1826, label %vector.memcheck1671, label %vec.epilog.scalar.ph1691.preheader

vector.memcheck1671:                              ; preds = %iter.check1690
  %i.asl = add nuw i64 %indvars.iv924, %i.asd
  %i.asm = shl i64 %i.asl, 3
  %i.asn = add i64 %i.asm, %i.a
  %i.aso = sub i64 %i.b, %i.asn
  %i.asp = shl i64 %.28625.us, 3
  %i.asq = add i64 %i.aso, %i.asp
  %i.asr = add i64 %i.asq, -1
  %diff.check1672 = icmp ult i64 %i.asr, 127
  br i1 %diff.check1672, label %vec.epilog.scalar.ph1691.preheader, label %vector.main.loop.iter.check1675

vector.main.loop.iter.check1675:                  ; preds = %vector.memcheck1671
  br i1 %min.iters.check1676, label %vec.epilog.ph1694, label %vector.ph1677

vector.ph1677:                                    ; preds = %vector.main.loop.iter.check1675
  %i.ass = add i64 %.28625.us, %n.vec1678         ; 2 uses
  %invariant.gep2052 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.asd
  %i.ast = getelementptr [8 x i8], ptr %5, i64 %.28625.us
  br label %vector.body1679

vector.body1679:                                  ; preds = %vector.body1679, %vector.ph1677
  %index1680 = phi i64 [ 0, %vector.ph1677 ], [ %index.next1685, %vector.body1679 ] ; 3 uses
  %gep2053 = getelementptr [8 x i8], ptr %invariant.gep2052, i64 %index1680 ; 4 uses
  %i.asu = getelementptr i8, ptr %gep2053, i64 32
  %i.asv = getelementptr i8, ptr %gep2053, i64 64
  %i.asw = getelementptr i8, ptr %gep2053, i64 96
  %wide.load1681 = load <4 x double>, ptr %gep2053, align 8, !tbaa !9
  %wide.load1682 = load <4 x double>, ptr %i.asu, align 8, !tbaa !9
  %wide.load1683 = load <4 x double>, ptr %i.asv, align 8, !tbaa !9
  %wide.load1684 = load <4 x double>, ptr %i.asw, align 8, !tbaa !9
  %i.asx = getelementptr [8 x i8], ptr %i.ast, i64 %index1680 ; 4 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 32
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asx, i64 64
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asx, i64 96
  store <4 x double> %wide.load1681, ptr %i.asx, align 8, !tbaa !9
  store <4 x double> %wide.load1682, ptr %i.asy, align 8, !tbaa !9
  store <4 x double> %wide.load1683, ptr %i.asz, align 8, !tbaa !9
  store <4 x double> %wide.load1684, ptr %i.ata, align 8, !tbaa !9
  %index.next1685 = add nuw i64 %index1680, 16    ; 2 uses
  %i.atb = icmp eq i64 %index.next1685, %n.vec1678
  br i1 %i.atb, label %middle.block1686, label %vector.body1679, !llvm.loop !96

middle.block1686:                                 ; preds = %vector.body1679
  br i1 %cmp.n1687, label %._crit_edge622.us, label %vec.epilog.iter.check1692

vec.epilog.iter.check1692:                        ; preds = %middle.block1686
  br i1 %min.epilog.iters.check1693, label %vec.epilog.scalar.ph1691.preheader, label %vec.epilog.ph1694, !prof !15

vec.epilog.ph1694:                                ; preds = %vector.main.loop.iter.check1675, %vec.epilog.iter.check1692
  %vec.epilog.resume.val1688 = phi i64 [ %n.vec1678, %vec.epilog.iter.check1692 ], [ 0, %vector.main.loop.iter.check1675 ]
  %i.atc = add i64 %.28625.us, %n.vec1695         ; 2 uses
  %invariant.gep2054 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.asd
  %i.atd = getelementptr [8 x i8], ptr %5, i64 %.28625.us
  br label %vec.epilog.vector.body1696

vec.epilog.vector.body1696:                       ; preds = %vec.epilog.vector.body1696, %vec.epilog.ph1694
  %index1697 = phi i64 [ %vec.epilog.resume.val1688, %vec.epilog.ph1694 ], [ %index.next1699, %vec.epilog.vector.body1696 ] ; 3 uses
  %gep2055 = getelementptr [8 x i8], ptr %invariant.gep2054, i64 %index1697
  %wide.load1698 = load <4 x double>, ptr %gep2055, align 8, !tbaa !9
  %i.ate = getelementptr [8 x i8], ptr %i.atd, i64 %index1697
  store <4 x double> %wide.load1698, ptr %i.ate, align 8, !tbaa !9
  %index.next1699 = add nuw i64 %index1697, 4     ; 2 uses
  %i.atf = icmp eq i64 %index.next1699, %n.vec1695
  br i1 %i.atf, label %vec.epilog.middle.block1700, label %vec.epilog.vector.body1696, !llvm.loop !97

vec.epilog.middle.block1700:                      ; preds = %vec.epilog.vector.body1696
  br i1 %cmp.n1701, label %._crit_edge622.us, label %vec.epilog.scalar.ph1691.preheader

vec.epilog.scalar.ph1691.preheader:               ; preds = %vector.memcheck1671, %iter.check1690, %vec.epilog.iter.check1692, %vec.epilog.middle.block1700
  %indvars.iv921.ph = phi i64 [ %i.asd, %iter.check1690 ], [ %i.asd, %vector.memcheck1671 ], [ %i.asj, %vec.epilog.iter.check1692 ], [ %i.ask, %vec.epilog.middle.block1700 ]
  %indvars.iv919.ph = phi i64 [ %.28625.us, %iter.check1690 ], [ %.28625.us, %vector.memcheck1671 ], [ %i.ass, %vec.epilog.iter.check1692 ], [ %i.atc, %vec.epilog.middle.block1700 ]
  br label %vec.epilog.scalar.ph1691

vec.epilog.scalar.ph1691:                         ; preds = %vec.epilog.scalar.ph1691.preheader, %vec.epilog.scalar.ph1691
  %indvars.iv921 = phi i64 [ %indvars.iv.next922, %vec.epilog.scalar.ph1691 ], [ %indvars.iv921.ph, %vec.epilog.scalar.ph1691.preheader ] ; 2 uses
  %indvars.iv919 = phi i64 [ %indvars.iv.next920, %vec.epilog.scalar.ph1691 ], [ %indvars.iv919.ph, %vec.epilog.scalar.ph1691.preheader ] ; 2 uses
  %i.atg = mul nsw i64 %indvars.iv921, %i.ase
  %gep1034 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.atg
  %i.ath = load double, ptr %gep1034, align 8, !tbaa !9
  %i.ati = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv919
  store double %i.ath, ptr %i.ati, align 8, !tbaa !9
  %indvars.iv.next920 = add nsw i64 %indvars.iv919, 1 ; 2 uses
  %indvars.iv.next922 = add nuw nsw i64 %indvars.iv921, 1 ; 2 uses
  %.not423.not.us = icmp samesign ult i64 %indvars.iv.next922, %i.asf
  br i1 %.not423.not.us, label %vec.epilog.scalar.ph1691, label %._crit_edge622.us, !llvm.loop !98

._crit_edge622.us:                                ; preds = %vec.epilog.scalar.ph1691, %vec.epilog.middle.block1700, %middle.block1686
  %indvars.iv.next920.lcssa = phi i64 [ %i.atc, %vec.epilog.middle.block1700 ], [ %i.ass, %middle.block1686 ], [ %indvars.iv.next920, %vec.epilog.scalar.ph1691 ] ; 3 uses
  %indvars.iv.next925 = add nuw nsw i64 %indvars.iv924, 1 ; 2 uses
  %exitcond928.not = icmp eq i64 %indvars.iv.next925, %wide.trip.count927
  br i1 %exitcond928.not, label %.split627.us, label %iter.check1690, !llvm.loop !99

.split627.us:                                     ; preds = %._crit_edge622.us
  %.not419638 = icmp ult i32 %i.i, 4
  br i1 %.not419638, label %iter.check1796, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.split627.us
  %i.atj = add nuw nsw i32 %i.v, 1                ; 2 uses
  %i.atk = sext i32 %i.d to i64                   ; 10 uses
  %i.atl = zext nneg i32 %i.atj to i64
  %i.atm = zext nneg i32 %i.i to i64
  %i.atn = add nsw i32 %i.v, -1                   ; 2 uses
  %wide.trip.count961 = zext nneg i32 %i.atn to i64
  %i.ato = add i64 %i.b, -8
  %i.atp = add nsw i32 %i.i, -2
  %i.atq = sub i64 %i.b, %i.a
  %i.atr = mul nsw i64 %i.ase, -8
  %ident.check1705.not = icmp eq i32 %i.d, 1
  br label %iter.check1763

iter.check1763:                                   ; preds = %.preheader.lr.ph, %._crit_edge636
  %indvars.iv956 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next957, %._crit_edge636 ] ; 7 uses
  %indvars.iv954 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next955, %._crit_edge636 ] ; 10 uses
  %indvars.iv945 = phi i32 [ %i.atj, %.preheader.lr.ph ], [ %indvars.iv.next946, %._crit_edge636 ] ; 3 uses
  %.30640.in = phi i64 [ %indvars.iv.next920.lcssa, %.preheader.lr.ph ], [ %.32.lcssa.in, %._crit_edge636 ] ; 2 uses
  %i.ats = trunc i64 %indvars.iv956 to i32
  %i.att = add i32 %i.v, %i.ats
  %i.atu = sub i32 %i.atp, %i.att                 ; 3 uses
  %i.atv = zext i32 %i.atu to i64
  %i.atw = add nuw nsw i64 %i.atv, 1              ; 5 uses
  %i.atx = add nuw i64 %indvars.iv956, %i.asd
  %i.aty = sext i32 %indvars.iv945 to i64
  %.30640 = trunc i64 %.30640.in to i32           ; 4 uses
  %i.atz = sext i32 %indvars.iv945 to i64         ; 6 uses
  %i.aua = mul nsw i64 %indvars.iv956, %i.atk
  %sext985 = shl i64 %.30640.in, 32               ; 2 uses
  %i.aub = ashr exact i64 %sext985, 32            ; 6 uses
  %invariant.gep1035 = getelementptr [8 x i8], ptr %3, i64 %i.aua ; 11 uses
  %min.iters.check1740 = icmp samesign ult i64 %indvars.iv954, 4
  br i1 %min.iters.check1740, label %vec.epilog.scalar.ph1764.preheader, label %vector.memcheck1738

vector.memcheck1738:                              ; preds = %iter.check1763
  %i.auc = mul i64 %i.atr, %indvars.iv956
  %i.aud = add i64 %i.atq, %i.auc
  %i.aue = ashr exact i64 %sext985, 29
  %i.auf = add i64 %i.aud, %i.aue
  %i.aug = add i64 %i.auf, -1
  %diff.check1739 = icmp ult i64 %i.aug, 127
  br i1 %diff.check1739, label %vec.epilog.scalar.ph1764.preheader, label %vector.main.loop.iter.check1741

vector.main.loop.iter.check1741:                  ; preds = %vector.memcheck1738
  %min.iters.check1742 = icmp samesign ult i64 %indvars.iv954, 16
  br i1 %min.iters.check1742, label %vec.epilog.ph1767, label %vector.ph1743

vector.ph1743:                                    ; preds = %vector.main.loop.iter.check1741
  %i.auh = and i64 %indvars.iv954, 12
  %n.vec1744 = and i64 %indvars.iv954, 9223372036854775792 ; 5 uses
  %i.aui = add i64 %i.aub, %n.vec1744             ; 2 uses
  %i.auj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.30640, i64 0
  %i.auk = getelementptr [8 x i8], ptr %5, i64 %i.aub
  br label %vector.body1745

vector.body1745:                                  ; preds = %vector.body1745, %vector.ph1743
  %index1746 = phi i64 [ 0, %vector.ph1743 ], [ %index.next1755, %vector.body1745 ] ; 3 uses
  %vec.phi1747 = phi <4 x i32> [ %i.auj, %vector.ph1743 ], [ %i.aul, %vector.body1745 ]
  %vec.phi1748 = phi <4 x i32> [ zeroinitializer, %vector.ph1743 ], [ %i.aum, %vector.body1745 ]
  %vec.phi1749 = phi <4 x i32> [ zeroinitializer, %vector.ph1743 ], [ %i.aun, %vector.body1745 ]
  %vec.phi1750 = phi <4 x i32> [ zeroinitializer, %vector.ph1743 ], [ %i.auo, %vector.body1745 ]
  %i.aul = add <4 x i32> %vec.phi1747, splat (i32 1) ; 2 uses
  %i.aum = add <4 x i32> %vec.phi1748, splat (i32 1) ; 2 uses
  %i.aun = add <4 x i32> %vec.phi1749, splat (i32 1) ; 2 uses
  %i.auo = add <4 x i32> %vec.phi1750, splat (i32 1) ; 2 uses
  %i.aup = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %index1746 ; 4 uses
  %i.auq = getelementptr i8, ptr %i.aup, i64 32
  %i.aur = getelementptr i8, ptr %i.aup, i64 64
  %i.aus = getelementptr i8, ptr %i.aup, i64 96
  %wide.load1751 = load <4 x double>, ptr %i.aup, align 8, !tbaa !9
  %wide.load1752 = load <4 x double>, ptr %i.auq, align 8, !tbaa !9
  %wide.load1753 = load <4 x double>, ptr %i.aur, align 8, !tbaa !9
  %wide.load1754 = load <4 x double>, ptr %i.aus, align 8, !tbaa !9
  %i.aut = getelementptr [8 x i8], ptr %i.auk, i64 %index1746 ; 4 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 32
  %i.auv = getelementptr inbounds nuw i8, ptr %i.aut, i64 64
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aut, i64 96
  store <4 x double> %wide.load1751, ptr %i.aut, align 8, !tbaa !9
  store <4 x double> %wide.load1752, ptr %i.auu, align 8, !tbaa !9
  store <4 x double> %wide.load1753, ptr %i.auv, align 8, !tbaa !9
  store <4 x double> %wide.load1754, ptr %i.auw, align 8, !tbaa !9
  %index.next1755 = add nuw i64 %index1746, 16    ; 2 uses
  %i.aux = icmp eq i64 %index.next1755, %n.vec1744
  br i1 %i.aux, label %middle.block1756, label %vector.body1745, !llvm.loop !100

middle.block1756:                                 ; preds = %vector.body1745
  %bin.rdx1757 = add <4 x i32> %i.aum, %i.aul
  %bin.rdx1758 = add <4 x i32> %i.aun, %bin.rdx1757
  %bin.rdx1759 = add <4 x i32> %i.auo, %bin.rdx1758
  %i.auy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1759) ; 3 uses
  %cmp.n1760 = icmp eq i64 %indvars.iv954, %n.vec1744
  br i1 %cmp.n1760, label %.loopexit1810, label %vec.epilog.iter.check1765

vec.epilog.iter.check1765:                        ; preds = %middle.block1756
  %min.epilog.iters.check1766 = icmp eq i64 %i.auh, 0
  br i1 %min.epilog.iters.check1766, label %vec.epilog.scalar.ph1764.preheader, label %vec.epilog.ph1767, !prof !15

vec.epilog.ph1767:                                ; preds = %vector.main.loop.iter.check1741, %vec.epilog.iter.check1765
  %vec.epilog.resume.val1761 = phi i64 [ %n.vec1744, %vec.epilog.iter.check1765 ], [ 0, %vector.main.loop.iter.check1741 ]
  %bc.merge.rdx1762 = phi i32 [ %i.auy, %vec.epilog.iter.check1765 ], [ %.30640, %vector.main.loop.iter.check1741 ]
  %n.vec1768 = and i64 %indvars.iv954, 9223372036854775804 ; 4 uses
  %i.auz = add i64 %i.aub, %n.vec1768             ; 2 uses
  %i.ava = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1762, i64 0
  %i.avb = getelementptr [8 x i8], ptr %5, i64 %i.aub
  br label %vec.epilog.vector.body1769

vec.epilog.vector.body1769:                       ; preds = %vec.epilog.vector.body1769, %vec.epilog.ph1767
  %index1770 = phi i64 [ %vec.epilog.resume.val1761, %vec.epilog.ph1767 ], [ %index.next1773, %vec.epilog.vector.body1769 ] ; 3 uses
  %vec.phi1771 = phi <4 x i32> [ %i.ava, %vec.epilog.ph1767 ], [ %i.avc, %vec.epilog.vector.body1769 ]
  %i.avc = add <4 x i32> %vec.phi1771, splat (i32 1) ; 2 uses
  %i.avd = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %index1770
  %wide.load1772 = load <4 x double>, ptr %i.avd, align 8, !tbaa !9
  %i.ave = getelementptr [8 x i8], ptr %i.avb, i64 %index1770
  store <4 x double> %wide.load1772, ptr %i.ave, align 8, !tbaa !9
  %index.next1773 = add nuw i64 %index1770, 4     ; 2 uses
  %i.avf = icmp eq i64 %index.next1773, %n.vec1768
  br i1 %i.avf, label %vec.epilog.middle.block1774, label %vec.epilog.vector.body1769, !llvm.loop !101

vec.epilog.middle.block1774:                      ; preds = %vec.epilog.vector.body1769
  %i.avg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.avc) ; 2 uses
  %cmp.n1775 = icmp eq i64 %indvars.iv954, %n.vec1768
  br i1 %cmp.n1775, label %.loopexit1810, label %vec.epilog.scalar.ph1764.preheader

vec.epilog.scalar.ph1764.preheader:               ; preds = %vector.memcheck1738, %iter.check1763, %vec.epilog.iter.check1765, %vec.epilog.middle.block1774
  %indvars.iv941.in.ph = phi i32 [ %.30640, %iter.check1763 ], [ %.30640, %vector.memcheck1738 ], [ %i.auy, %vec.epilog.iter.check1765 ], [ %i.avg, %vec.epilog.middle.block1774 ] ; 2 uses
  %indvars.iv932.ph = phi i64 [ 0, %iter.check1763 ], [ 0, %vector.memcheck1738 ], [ %n.vec1744, %vec.epilog.iter.check1765 ], [ %n.vec1768, %vec.epilog.middle.block1774 ] ; 4 uses
  %indvars.iv930.ph = phi i64 [ %i.aub, %iter.check1763 ], [ %i.aub, %vector.memcheck1738 ], [ %i.aui, %vec.epilog.iter.check1765 ], [ %i.auz, %vec.epilog.middle.block1774 ] ; 2 uses
  %i.avh = sub nsw i64 %indvars.iv954, %indvars.iv932.ph
  %i.avi = sub nsw i64 %indvars.iv956, %indvars.iv932.ph
  %xtraiter1930 = and i64 %i.avh, 7               ; 2 uses
  %lcmp.mod1931.not = icmp eq i64 %xtraiter1930, 0
  br i1 %lcmp.mod1931.not, label %vec.epilog.scalar.ph1764.prol.loopexit, label %vec.epilog.scalar.ph1764.prol

vec.epilog.scalar.ph1764.prol:                    ; preds = %vec.epilog.scalar.ph1764.preheader, %vec.epilog.scalar.ph1764.prol
  %indvars.iv941.in.prol = phi i32 [ %indvars.iv941.prol, %vec.epilog.scalar.ph1764.prol ], [ %indvars.iv941.in.ph, %vec.epilog.scalar.ph1764.preheader ]
  %indvars.iv932.prol = phi i64 [ %indvars.iv.next933.prol, %vec.epilog.scalar.ph1764.prol ], [ %indvars.iv932.ph, %vec.epilog.scalar.ph1764.preheader ] ; 2 uses
  %indvars.iv930.prol = phi i64 [ %indvars.iv.next931.prol, %vec.epilog.scalar.ph1764.prol ], [ %indvars.iv930.ph, %vec.epilog.scalar.ph1764.preheader ] ; 2 uses
  %prol.iter1932 = phi i64 [ %prol.iter1932.next, %vec.epilog.scalar.ph1764.prol ], [ 0, %vec.epilog.scalar.ph1764.preheader ]
  %indvars.iv941.prol = add i32 %indvars.iv941.in.prol, 1 ; 3 uses
  %gep1036.prol = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932.prol
  %i.avj = load double, ptr %gep1036.prol, align 8, !tbaa !9
  %i.avk = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv930.prol
  store double %i.avj, ptr %i.avk, align 8, !tbaa !9
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
  %i.avl = icmp ult i64 %i.avi, 7
  br i1 %i.avl, label %.loopexit1810, label %vec.epilog.scalar.ph1764

vec.epilog.scalar.ph1764:                         ; preds = %vec.epilog.scalar.ph1764.prol.loopexit, %vec.epilog.scalar.ph1764
  %indvars.iv941.in = phi i32 [ %indvars.iv941.7, %vec.epilog.scalar.ph1764 ], [ %indvars.iv941.in.unr, %vec.epilog.scalar.ph1764.prol.loopexit ]
  %indvars.iv932 = phi i64 [ %indvars.iv.next933.7, %vec.epilog.scalar.ph1764 ], [ %indvars.iv932.unr, %vec.epilog.scalar.ph1764.prol.loopexit ] ; 9 uses
  %indvars.iv930 = phi i64 [ %indvars.iv.next931.7, %vec.epilog.scalar.ph1764 ], [ %indvars.iv930.unr, %vec.epilog.scalar.ph1764.prol.loopexit ] ; 9 uses
  %gep1036 = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %i.avm = load double, ptr %gep1036, align 8, !tbaa !9
  %i.avn = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv930
  store double %i.avm, ptr %i.avn, align 8, !tbaa !9
  %i.avo = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.1 = getelementptr i8, ptr %i.avo, i64 8
  %i.avp = load double, ptr %gep1036.1, align 8, !tbaa !9
  %i.avq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv930
  %i.avr = getelementptr i8, ptr %i.avq, i64 8
  store double %i.avp, ptr %i.avr, align 8, !tbaa !9
  %i.avs = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.2 = getelementptr i8, ptr %i.avs, i64 16
  %i.avt = load double, ptr %gep1036.2, align 8, !tbaa !9
  %i.avu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv930
  %i.avv = getelementptr i8, ptr %i.avu, i64 16
  store double %i.avt, ptr %i.avv, align 8, !tbaa !9
  %i.avw = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.3 = getelementptr i8, ptr %i.avw, i64 24
  %i.avx = load double, ptr %gep1036.3, align 8, !tbaa !9
  %i.avy = getelementptr [8 x i8], ptr %5, i64 %indvars.iv930
  %i.avz = getelementptr i8, ptr %i.avy, i64 24
  store double %i.avx, ptr %i.avz, align 8, !tbaa !9
  %i.awa = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.4 = getelementptr i8, ptr %i.awa, i64 32
  %i.awb = load double, ptr %gep1036.4, align 8, !tbaa !9
  %i.awc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv930
  %i.awd = getelementptr i8, ptr %i.awc, i64 32
  store double %i.awb, ptr %i.awd, align 8, !tbaa !9
  %i.awe = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.5 = getelementptr i8, ptr %i.awe, i64 40
  %i.awf = load double, ptr %gep1036.5, align 8, !tbaa !9
  %i.awg = getelementptr [8 x i8], ptr %5, i64 %indvars.iv930
  %i.awh = getelementptr i8, ptr %i.awg, i64 40
  store double %i.awf, ptr %i.awh, align 8, !tbaa !9
  %i.awi = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.6 = getelementptr i8, ptr %i.awi, i64 48
  %i.awj = load double, ptr %gep1036.6, align 8, !tbaa !9
  %i.awk = getelementptr [8 x i8], ptr %5, i64 %indvars.iv930
  %i.awl = getelementptr i8, ptr %i.awk, i64 48
  store double %i.awj, ptr %i.awl, align 8, !tbaa !9
  %indvars.iv941.7 = add i32 %indvars.iv941.in, 8 ; 2 uses
  %i.awm = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %indvars.iv932
  %gep1036.7 = getelementptr i8, ptr %i.awm, i64 56
  %i.awn = load double, ptr %gep1036.7, align 8, !tbaa !9
  %i.awo = getelementptr [8 x i8], ptr %5, i64 %indvars.iv930
  %i.awp = getelementptr i8, ptr %i.awo, i64 56
  store double %i.awn, ptr %i.awp, align 8, !tbaa !9
  %indvars.iv.next931.7 = add nsw i64 %indvars.iv930, 8 ; 2 uses
  %indvars.iv.next933.7 = add nuw nsw i64 %indvars.iv932, 8 ; 2 uses
  %exitcond940.not.7 = icmp eq i64 %indvars.iv.next933.7, %indvars.iv954
  br i1 %exitcond940.not.7, label %.loopexit1810, label %vec.epilog.scalar.ph1764, !llvm.loop !103

.loopexit1810:                                    ; preds = %vec.epilog.scalar.ph1764.prol.loopexit, %vec.epilog.scalar.ph1764, %vec.epilog.middle.block1774, %middle.block1756
  %indvars.iv941.lcssa = phi i32 [ %i.avg, %vec.epilog.middle.block1774 ], [ %i.auy, %middle.block1756 ], [ %indvars.iv941.lcssa1833.unr, %vec.epilog.scalar.ph1764.prol.loopexit ], [ %indvars.iv941.7, %vec.epilog.scalar.ph1764 ]
  %indvars.iv.next931.lcssa = phi i64 [ %i.auz, %vec.epilog.middle.block1774 ], [ %i.aui, %middle.block1756 ], [ %indvars.iv.next931.lcssa1832.unr, %vec.epilog.scalar.ph1764.prol.loopexit ], [ %indvars.iv.next931.7, %vec.epilog.scalar.ph1764 ]
  %i.awq = add nuw nsw i64 %indvars.iv956, %i.atl ; 2 uses
  %.not422.not631 = icmp samesign ult i64 %i.awq, %i.atm
  br i1 %.not422.not631, label %iter.check1724, label %._crit_edge636

iter.check1724:                                   ; preds = %.loopexit1810
  %i.awr = sext i32 %indvars.iv941.lcssa to i64   ; 7 uses
  %invariant.gep1037 = getelementptr [8 x i8], ptr %3, i64 %i.awq ; 11 uses
  %min.iters.check1708 = icmp ugt i32 %i.atu, 2
  %or.cond1827 = select i1 %min.iters.check1708, i1 %ident.check1705.not, i1 false
  br i1 %or.cond1827, label %vector.memcheck1706, label %.lr.ph635.preheader

vector.memcheck1706:                              ; preds = %iter.check1724
  %i.aws = add i64 %i.atx, %i.aty
  %i.awt = shl i64 %i.aws, 3
  %i.awu = add i64 %i.awt, %i.a
  %i.awv = sub i64 %i.ato, %i.awu
  %i.aww = shl nsw i64 %i.awr, 3
  %i.awx = add i64 %i.awv, %i.aww
  %i.awy = add i64 %i.awx, -1
  %diff.check1707 = icmp ult i64 %i.awy, 127
  br i1 %diff.check1707, label %.lr.ph635.preheader, label %vector.main.loop.iter.check1709

vector.main.loop.iter.check1709:                  ; preds = %vector.memcheck1706
  %min.iters.check1710 = icmp ult i32 %i.atu, 15
  br i1 %min.iters.check1710, label %vec.epilog.ph1728, label %vector.ph1711

vector.ph1711:                                    ; preds = %vector.main.loop.iter.check1709
  %i.awz = and i64 %i.atw, 12
  %n.vec1712 = and i64 %i.atw, 8589934576         ; 5 uses
  %i.axa = add nsw i64 %n.vec1712, %i.atz
  %i.axb = add nsw i64 %n.vec1712, %i.awr         ; 2 uses
  %invariant.gep2056 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.atz
  %invariant.gep2058 = getelementptr [8 x i8], ptr %5, i64 %i.awr
  br label %vector.body1713

vector.body1713:                                  ; preds = %vector.body1713, %vector.ph1711
  %index1714 = phi i64 [ 0, %vector.ph1711 ], [ %index.next1719, %vector.body1713 ] ; 3 uses
  %gep2057 = getelementptr [8 x i8], ptr %invariant.gep2056, i64 %index1714 ; 4 uses
  %i.axc = getelementptr i8, ptr %gep2057, i64 32
  %i.axd = getelementptr i8, ptr %gep2057, i64 64
  %i.axe = getelementptr i8, ptr %gep2057, i64 96
  %wide.load1715 = load <4 x double>, ptr %gep2057, align 8, !tbaa !9
  %wide.load1716 = load <4 x double>, ptr %i.axc, align 8, !tbaa !9
  %wide.load1717 = load <4 x double>, ptr %i.axd, align 8, !tbaa !9
  %wide.load1718 = load <4 x double>, ptr %i.axe, align 8, !tbaa !9
  %gep2059 = getelementptr [8 x i8], ptr %invariant.gep2058, i64 %index1714 ; 4 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %gep2059, i64 32
  %i.axg = getelementptr inbounds nuw i8, ptr %gep2059, i64 64
  %i.axh = getelementptr inbounds nuw i8, ptr %gep2059, i64 96
  store <4 x double> %wide.load1715, ptr %gep2059, align 8, !tbaa !9
  store <4 x double> %wide.load1716, ptr %i.axf, align 8, !tbaa !9
  store <4 x double> %wide.load1717, ptr %i.axg, align 8, !tbaa !9
  store <4 x double> %wide.load1718, ptr %i.axh, align 8, !tbaa !9
  %index.next1719 = add nuw i64 %index1714, 16    ; 2 uses
  %i.axi = icmp eq i64 %index.next1719, %n.vec1712
  br i1 %i.axi, label %middle.block1720, label %vector.body1713, !llvm.loop !104

middle.block1720:                                 ; preds = %vector.body1713
  %cmp.n1721 = icmp eq i64 %i.atw, %n.vec1712
  br i1 %cmp.n1721, label %._crit_edge636, label %vec.epilog.iter.check1726

vec.epilog.iter.check1726:                        ; preds = %middle.block1720
  %min.epilog.iters.check1727 = icmp eq i64 %i.awz, 0
  br i1 %min.epilog.iters.check1727, label %.lr.ph635.preheader, label %vec.epilog.ph1728, !prof !15

vec.epilog.ph1728:                                ; preds = %vector.main.loop.iter.check1709, %vec.epilog.iter.check1726
  %vec.epilog.resume.val1722 = phi i64 [ %n.vec1712, %vec.epilog.iter.check1726 ], [ 0, %vector.main.loop.iter.check1709 ]
  %n.vec1729 = and i64 %i.atw, 8589934588         ; 4 uses
  %i.axj = add nsw i64 %n.vec1729, %i.atz
  %i.axk = add nsw i64 %n.vec1729, %i.awr         ; 2 uses
  %invariant.gep2060 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.atz
  %invariant.gep2062 = getelementptr [8 x i8], ptr %5, i64 %i.awr
  br label %vec.epilog.vector.body1730

vec.epilog.vector.body1730:                       ; preds = %vec.epilog.vector.body1730, %vec.epilog.ph1728
  %index1731 = phi i64 [ %vec.epilog.resume.val1722, %vec.epilog.ph1728 ], [ %index.next1733, %vec.epilog.vector.body1730 ] ; 3 uses
  %gep2061 = getelementptr [8 x i8], ptr %invariant.gep2060, i64 %index1731
  %wide.load1732 = load <4 x double>, ptr %gep2061, align 8, !tbaa !9
  %gep2063 = getelementptr [8 x i8], ptr %invariant.gep2062, i64 %index1731
  store <4 x double> %wide.load1732, ptr %gep2063, align 8, !tbaa !9
  %index.next1733 = add nuw i64 %index1731, 4     ; 2 uses
  %i.axl = icmp eq i64 %index.next1733, %n.vec1729
  br i1 %i.axl, label %vec.epilog.middle.block1734, label %vec.epilog.vector.body1730, !llvm.loop !105

vec.epilog.middle.block1734:                      ; preds = %vec.epilog.vector.body1730
  %cmp.n1735 = icmp eq i64 %i.atw, %n.vec1729
  br i1 %cmp.n1735, label %._crit_edge636, label %.lr.ph635.preheader

.lr.ph635.preheader:                              ; preds = %vector.memcheck1706, %iter.check1724, %vec.epilog.iter.check1726, %vec.epilog.middle.block1734
  %indvars.iv947.ph = phi i64 [ %i.atz, %iter.check1724 ], [ %i.atz, %vector.memcheck1706 ], [ %i.axa, %vec.epilog.iter.check1726 ], [ %i.axj, %vec.epilog.middle.block1734 ] ; 3 uses
  %indvars.iv943.ph = phi i64 [ %i.awr, %iter.check1724 ], [ %i.awr, %vector.memcheck1706 ], [ %i.axb, %vec.epilog.iter.check1726 ], [ %i.axk, %vec.epilog.middle.block1734 ] ; 2 uses
  %i.axm = trunc i64 %indvars.iv947.ph to i32     ; 2 uses
  %i.axn = sub i32 %i.i, %i.axm
  %xtraiter1933 = and i32 %i.axn, 7               ; 2 uses
  %lcmp.mod1934.not = icmp eq i32 %xtraiter1933, 0
  br i1 %lcmp.mod1934.not, label %.lr.ph635.prol.loopexit, label %.lr.ph635.prol

.lr.ph635.prol:                                   ; preds = %.lr.ph635.preheader, %.lr.ph635.prol
  %indvars.iv947.prol = phi i64 [ %indvars.iv.next948.prol, %.lr.ph635.prol ], [ %indvars.iv947.ph, %.lr.ph635.preheader ] ; 2 uses
  %indvars.iv943.prol = phi i64 [ %indvars.iv.next944.prol, %.lr.ph635.prol ], [ %indvars.iv943.ph, %.lr.ph635.preheader ] ; 2 uses
  %prol.iter1935 = phi i32 [ %prol.iter1935.next, %.lr.ph635.prol ], [ 0, %.lr.ph635.preheader ]
  %i.axo = mul nsw i64 %indvars.iv947.prol, %i.atk
  %gep1038.prol = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axo
  %i.axp = load double, ptr %gep1038.prol, align 8, !tbaa !9
  %i.axq = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv943.prol
  store double %i.axp, ptr %i.axq, align 8, !tbaa !9
  %indvars.iv.next944.prol = add nsw i64 %indvars.iv943.prol, 1 ; 3 uses
  %indvars.iv.next948.prol = add nsw i64 %indvars.iv947.prol, 1 ; 2 uses
  %prol.iter1935.next = add i32 %prol.iter1935, 1 ; 2 uses
  %prol.iter1935.cmp.not = icmp eq i32 %prol.iter1935.next, %xtraiter1933
  br i1 %prol.iter1935.cmp.not, label %.lr.ph635.prol.loopexit, label %.lr.ph635.prol, !llvm.loop !106

.lr.ph635.prol.loopexit:                          ; preds = %.lr.ph635.prol, %.lr.ph635.preheader
  %indvars.iv.next944.lcssa.unr = phi i64 [ poison, %.lr.ph635.preheader ], [ %indvars.iv.next944.prol, %.lr.ph635.prol ]
  %indvars.iv947.unr = phi i64 [ %indvars.iv947.ph, %.lr.ph635.preheader ], [ %indvars.iv.next948.prol, %.lr.ph635.prol ]
  %indvars.iv943.unr = phi i64 [ %indvars.iv943.ph, %.lr.ph635.preheader ], [ %indvars.iv.next944.prol, %.lr.ph635.prol ]
  %i.axr = sub i32 %i.axm, %i.i
  %i.axs = icmp ugt i32 %i.axr, -8
  br i1 %i.axs, label %._crit_edge636, label %.lr.ph635

.lr.ph635:                                        ; preds = %.lr.ph635.prol.loopexit, %.lr.ph635
  %indvars.iv947 = phi i64 [ %indvars.iv.next948.7, %.lr.ph635 ], [ %indvars.iv947.unr, %.lr.ph635.prol.loopexit ] ; 9 uses
  %indvars.iv943 = phi i64 [ %indvars.iv.next944.7, %.lr.ph635 ], [ %indvars.iv943.unr, %.lr.ph635.prol.loopexit ] ; 9 uses
  %i.axt = mul nsw i64 %indvars.iv947, %i.atk
  %gep1038 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axt
  %i.axu = load double, ptr %gep1038, align 8, !tbaa !9
  %i.axv = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv943
  store double %i.axu, ptr %i.axv, align 8, !tbaa !9
  %indvars.iv.next948 = add nsw i64 %indvars.iv947, 1
  %i.axw = mul nsw i64 %indvars.iv.next948, %i.atk
  %gep1038.1 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.axw
  %i.axx = load double, ptr %gep1038.1, align 8, !tbaa !9
  %i.axy = getelementptr [8 x i8], ptr %5, i64 %indvars.iv943
  %i.axz = getelementptr i8, ptr %i.axy, i64 8
  store double %i.axx, ptr %i.axz, align 8, !tbaa !9
  %indvars.iv.next948.1 = add nsw i64 %indvars.iv947, 2
  %i.aya = mul nsw i64 %indvars.iv.next948.1, %i.atk
  %gep1038.2 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.aya
  %i.ayb = load double, ptr %gep1038.2, align 8, !tbaa !9
  %i.ayc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv943
  %i.ayd = getelementptr i8, ptr %i.ayc, i64 16
  store double %i.ayb, ptr %i.ayd, align 8, !tbaa !9
  %indvars.iv.next948.2 = add nsw i64 %indvars.iv947, 3
  %i.aye = mul nsw i64 %indvars.iv.next948.2, %i.atk
  %gep1038.3 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.aye
  %i.ayf = load double, ptr %gep1038.3, align 8, !tbaa !9
  %i.ayg = getelementptr [8 x i8], ptr %5, i64 %indvars.iv943
  %i.ayh = getelementptr i8, ptr %i.ayg, i64 24
  store double %i.ayf, ptr %i.ayh, align 8, !tbaa !9
  %indvars.iv.next948.3 = add nsw i64 %indvars.iv947, 4
  %i.ayi = mul nsw i64 %indvars.iv.next948.3, %i.atk
  %gep1038.4 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.ayi
  %i.ayj = load double, ptr %gep1038.4, align 8, !tbaa !9
  %i.ayk = getelementptr [8 x i8], ptr %5, i64 %indvars.iv943
  %i.ayl = getelementptr i8, ptr %i.ayk, i64 32
  store double %i.ayj, ptr %i.ayl, align 8, !tbaa !9
  %indvars.iv.next948.4 = add nsw i64 %indvars.iv947, 5
  %i.aym = mul nsw i64 %indvars.iv.next948.4, %i.atk
  %gep1038.5 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.aym
  %i.ayn = load double, ptr %gep1038.5, align 8, !tbaa !9
  %i.ayo = getelementptr [8 x i8], ptr %5, i64 %indvars.iv943
  %i.ayp = getelementptr i8, ptr %i.ayo, i64 40
  store double %i.ayn, ptr %i.ayp, align 8, !tbaa !9
  %indvars.iv.next948.5 = add nsw i64 %indvars.iv947, 6
  %i.ayq = mul nsw i64 %indvars.iv.next948.5, %i.atk
  %gep1038.6 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.ayq
  %i.ayr = load double, ptr %gep1038.6, align 8, !tbaa !9
  %i.ays = getelementptr [8 x i8], ptr %5, i64 %indvars.iv943
  %i.ayt = getelementptr i8, ptr %i.ays, i64 48
  store double %i.ayr, ptr %i.ayt, align 8, !tbaa !9
  %indvars.iv.next948.6 = add nsw i64 %indvars.iv947, 7
  %i.ayu = mul nsw i64 %indvars.iv.next948.6, %i.atk
  %gep1038.7 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.ayu
  %i.ayv = load double, ptr %gep1038.7, align 8, !tbaa !9
  %i.ayw = getelementptr [8 x i8], ptr %5, i64 %indvars.iv943
  %i.ayx = getelementptr i8, ptr %i.ayw, i64 56
  store double %i.ayv, ptr %i.ayx, align 8, !tbaa !9
  %indvars.iv.next944.7 = add nsw i64 %indvars.iv943, 8 ; 2 uses
  %indvars.iv.next948.7 = add nsw i64 %indvars.iv947, 8 ; 2 uses
  %lftr.wideiv952.7 = trunc i64 %indvars.iv.next948.7 to i32
  %exitcond953.not.7 = icmp eq i32 %i.i, %lftr.wideiv952.7
  br i1 %exitcond953.not.7, label %._crit_edge636, label %.lr.ph635, !llvm.loop !107

._crit_edge636:                                   ; preds = %.lr.ph635.prol.loopexit, %.lr.ph635, %middle.block1720, %vec.epilog.middle.block1734, %.loopexit1810
  %.32.lcssa.in = phi i64 [ %indvars.iv.next931.lcssa, %.loopexit1810 ], [ %i.axk, %vec.epilog.middle.block1734 ], [ %i.axb, %middle.block1720 ], [ %indvars.iv.next944.lcssa.unr, %.lr.ph635.prol.loopexit ], [ %indvars.iv.next944.7, %.lr.ph635 ] ; 2 uses
  %indvars.iv.next957 = add nuw nsw i64 %indvars.iv956, 1 ; 2 uses
  %indvars.iv.next955 = add nuw nsw i64 %indvars.iv954, 1
  %indvars.iv.next946 = add nuw i32 %indvars.iv945, 1
  %exitcond962.not = icmp eq i64 %indvars.iv.next957, %wide.trip.count961
  br i1 %exitcond962.not, label %._crit_edge641.loopexit, label %iter.check1763, !llvm.loop !108

._crit_edge641.loopexit:                          ; preds = %._crit_edge636
  %sext984 = shl i64 %.32.lcssa.in, 32
  %i.ayy = ashr exact i64 %sext984, 32
  br label %iter.check1796

iter.check1796:                                   ; preds = %._crit_edge641.loopexit, %.split627.us
  %.11386.lcssa = phi i32 [ 0, %.split627.us ], [ %i.atn, %._crit_edge641.loopexit ] ; 4 uses
  %.30.lcssa = phi i64 [ %indvars.iv.next920.lcssa, %.split627.us ], [ %i.ayy, %._crit_edge641.loopexit ] ; 7 uses
  %i.ayz = mul nsw i32 %.11386.lcssa, %i.d
  %i.aza = sext i32 %i.ayz to i64                 ; 2 uses
  %i.azb = add nsw i32 %.11386.lcssa, 1
  %wide.trip.count971 = zext i32 %i.azb to i64    ; 8 uses
  %invariant.gep1039 = getelementptr [8 x i8], ptr %3, i64 %i.aza ; 11 uses
  %min.iters.check1781 = icmp ult i32 %.11386.lcssa, 3
  br i1 %min.iters.check1781, label %vec.epilog.scalar.ph1797.preheader, label %vector.memcheck1779

vector.memcheck1779:                              ; preds = %iter.check1796
  %i.azc = shl i64 %.30.lcssa, 3
  %i.azd = add i64 %i.azc, %i.b
  %i.aze = shl nsw i64 %i.aza, 3
  %i.azf = add i64 %i.aze, %i.a
  %i.azg = sub i64 %i.azf, %i.azd
  %diff.check1780 = icmp ugt i64 %i.azg, -128
  br i1 %diff.check1780, label %vec.epilog.scalar.ph1797.preheader, label %vector.main.loop.iter.check1782

vector.main.loop.iter.check1782:                  ; preds = %vector.memcheck1779
  %min.iters.check1783 = icmp ult i32 %.11386.lcssa, 15
  br i1 %min.iters.check1783, label %vec.epilog.ph1800, label %vector.ph1784

vector.ph1784:                                    ; preds = %vector.main.loop.iter.check1782
  %i.azh = and i64 %wide.trip.count971, 12
  %n.vec1785 = and i64 %wide.trip.count971, 2147483632 ; 5 uses
  %i.azi = add i64 %.30.lcssa, %n.vec1785
  %i.azj = getelementptr [8 x i8], ptr %5, i64 %.30.lcssa
  br label %vector.body1786

vector.body1786:                                  ; preds = %vector.body1786, %vector.ph1784
  %index1787 = phi i64 [ 0, %vector.ph1784 ], [ %index.next1792, %vector.body1786 ] ; 3 uses
  %i.azk = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %index1787 ; 4 uses
  %i.azl = getelementptr i8, ptr %i.azk, i64 32
  %i.azm = getelementptr i8, ptr %i.azk, i64 64
  %i.azn = getelementptr i8, ptr %i.azk, i64 96
  %wide.load1788 = load <4 x double>, ptr %i.azk, align 8, !tbaa !9
  %wide.load1789 = load <4 x double>, ptr %i.azl, align 8, !tbaa !9
  %wide.load1790 = load <4 x double>, ptr %i.azm, align 8, !tbaa !9
  %wide.load1791 = load <4 x double>, ptr %i.azn, align 8, !tbaa !9
  %i.azo = getelementptr [8 x i8], ptr %i.azj, i64 %index1787 ; 4 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 32
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azo, i64 64
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azo, i64 96
  store <4 x double> %wide.load1788, ptr %i.azo, align 8, !tbaa !9
  store <4 x double> %wide.load1789, ptr %i.azp, align 8, !tbaa !9
  store <4 x double> %wide.load1790, ptr %i.azq, align 8, !tbaa !9
  store <4 x double> %wide.load1791, ptr %i.azr, align 8, !tbaa !9
  %index.next1792 = add nuw i64 %index1787, 16    ; 2 uses
  %i.azs = icmp eq i64 %index.next1792, %n.vec1785
  br i1 %i.azs, label %middle.block1793, label %vector.body1786, !llvm.loop !109

middle.block1793:                                 ; preds = %vector.body1786
  %cmp.n1794 = icmp eq i64 %n.vec1785, %wide.trip.count971
  br i1 %cmp.n1794, label %.loopexit, label %vec.epilog.iter.check1798

vec.epilog.iter.check1798:                        ; preds = %middle.block1793
  %min.epilog.iters.check1799 = icmp eq i64 %i.azh, 0
  br i1 %min.epilog.iters.check1799, label %vec.epilog.scalar.ph1797.preheader, label %vec.epilog.ph1800, !prof !15

vec.epilog.ph1800:                                ; preds = %vector.main.loop.iter.check1782, %vec.epilog.iter.check1798
  %vec.epilog.resume.val1795 = phi i64 [ %n.vec1785, %vec.epilog.iter.check1798 ], [ 0, %vector.main.loop.iter.check1782 ]
  %n.vec1801 = and i64 %wide.trip.count971, 2147483644 ; 4 uses
  %i.azt = add i64 %.30.lcssa, %n.vec1801
  %i.azu = getelementptr [8 x i8], ptr %5, i64 %.30.lcssa
  br label %vec.epilog.vector.body1802

vec.epilog.vector.body1802:                       ; preds = %vec.epilog.vector.body1802, %vec.epilog.ph1800
  %index1803 = phi i64 [ %vec.epilog.resume.val1795, %vec.epilog.ph1800 ], [ %index.next1805, %vec.epilog.vector.body1802 ] ; 3 uses
  %i.azv = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %index1803
  %wide.load1804 = load <4 x double>, ptr %i.azv, align 8, !tbaa !9
  %i.azw = getelementptr [8 x i8], ptr %i.azu, i64 %index1803
  store <4 x double> %wide.load1804, ptr %i.azw, align 8, !tbaa !9
  %index.next1805 = add nuw i64 %index1803, 4     ; 2 uses
  %i.azx = icmp eq i64 %index.next1805, %n.vec1801
  br i1 %i.azx, label %vec.epilog.middle.block1806, label %vec.epilog.vector.body1802, !llvm.loop !110

vec.epilog.middle.block1806:                      ; preds = %vec.epilog.vector.body1802
  %cmp.n1807 = icmp eq i64 %n.vec1801, %wide.trip.count971
  br i1 %cmp.n1807, label %.loopexit, label %vec.epilog.scalar.ph1797.preheader

vec.epilog.scalar.ph1797.preheader:               ; preds = %vector.memcheck1779, %iter.check1796, %vec.epilog.iter.check1798, %vec.epilog.middle.block1806
  %indvars.iv966.ph = phi i64 [ 0, %iter.check1796 ], [ 0, %vector.memcheck1779 ], [ %n.vec1785, %vec.epilog.iter.check1798 ], [ %n.vec1801, %vec.epilog.middle.block1806 ] ; 4 uses
  %indvars.iv964.ph = phi i64 [ %.30.lcssa, %iter.check1796 ], [ %.30.lcssa, %vector.memcheck1779 ], [ %i.azi, %vec.epilog.iter.check1798 ], [ %i.azt, %vec.epilog.middle.block1806 ] ; 2 uses
  %i.azy = sub nsw i64 %wide.trip.count971, %indvars.iv966.ph
  %xtraiter1936 = and i64 %i.azy, 7               ; 2 uses
  %lcmp.mod1937.not = icmp eq i64 %xtraiter1936, 0
  br i1 %lcmp.mod1937.not, label %vec.epilog.scalar.ph1797.prol.loopexit, label %vec.epilog.scalar.ph1797.prol

vec.epilog.scalar.ph1797.prol:                    ; preds = %vec.epilog.scalar.ph1797.preheader, %vec.epilog.scalar.ph1797.prol
  %indvars.iv966.prol = phi i64 [ %indvars.iv.next967.prol, %vec.epilog.scalar.ph1797.prol ], [ %indvars.iv966.ph, %vec.epilog.scalar.ph1797.preheader ] ; 2 uses
  %indvars.iv964.prol = phi i64 [ %indvars.iv.next965.prol, %vec.epilog.scalar.ph1797.prol ], [ %indvars.iv964.ph, %vec.epilog.scalar.ph1797.preheader ] ; 2 uses
  %prol.iter1938 = phi i64 [ %prol.iter1938.next, %vec.epilog.scalar.ph1797.prol ], [ 0, %vec.epilog.scalar.ph1797.preheader ]
  %gep1040.prol = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966.prol
  %i.azz = load double, ptr %gep1040.prol, align 8, !tbaa !9
  %i.baa = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv964.prol
  store double %i.azz, ptr %i.baa, align 8, !tbaa !9
  %indvars.iv.next965.prol = add nsw i64 %indvars.iv964.prol, 1 ; 2 uses
  %indvars.iv.next967.prol = add nuw nsw i64 %indvars.iv966.prol, 1 ; 2 uses
  %prol.iter1938.next = add i64 %prol.iter1938, 1 ; 2 uses
  %prol.iter1938.cmp.not = icmp eq i64 %prol.iter1938.next, %xtraiter1936
  br i1 %prol.iter1938.cmp.not, label %vec.epilog.scalar.ph1797.prol.loopexit, label %vec.epilog.scalar.ph1797.prol, !llvm.loop !111

vec.epilog.scalar.ph1797.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1797.prol, %vec.epilog.scalar.ph1797.preheader
  %indvars.iv966.unr = phi i64 [ %indvars.iv966.ph, %vec.epilog.scalar.ph1797.preheader ], [ %indvars.iv.next967.prol, %vec.epilog.scalar.ph1797.prol ]
  %indvars.iv964.unr = phi i64 [ %indvars.iv964.ph, %vec.epilog.scalar.ph1797.preheader ], [ %indvars.iv.next965.prol, %vec.epilog.scalar.ph1797.prol ]
  %i.bab = sub nsw i64 %indvars.iv966.ph, %wide.trip.count971
  %i.bac = icmp ugt i64 %i.bab, -8
  br i1 %i.bac, label %.loopexit, label %vec.epilog.scalar.ph1797

vec.epilog.scalar.ph1797:                         ; preds = %vec.epilog.scalar.ph1797.prol.loopexit, %vec.epilog.scalar.ph1797
  %indvars.iv966 = phi i64 [ %indvars.iv.next967.7, %vec.epilog.scalar.ph1797 ], [ %indvars.iv966.unr, %vec.epilog.scalar.ph1797.prol.loopexit ] ; 9 uses
  %indvars.iv964 = phi i64 [ %indvars.iv.next965.7, %vec.epilog.scalar.ph1797 ], [ %indvars.iv964.unr, %vec.epilog.scalar.ph1797.prol.loopexit ] ; 9 uses
  %gep1040 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %i.bad = load double, ptr %gep1040, align 8, !tbaa !9
  %i.bae = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv964
  store double %i.bad, ptr %i.bae, align 8, !tbaa !9
  %i.baf = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.1 = getelementptr i8, ptr %i.baf, i64 8
  %i.bag = load double, ptr %gep1040.1, align 8, !tbaa !9
  %i.bah = getelementptr [8 x i8], ptr %5, i64 %indvars.iv964
  %i.bai = getelementptr i8, ptr %i.bah, i64 8
  store double %i.bag, ptr %i.bai, align 8, !tbaa !9
  %i.baj = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.2 = getelementptr i8, ptr %i.baj, i64 16
  %i.bak = load double, ptr %gep1040.2, align 8, !tbaa !9
  %i.bal = getelementptr [8 x i8], ptr %5, i64 %indvars.iv964
  %i.bam = getelementptr i8, ptr %i.bal, i64 16
  store double %i.bak, ptr %i.bam, align 8, !tbaa !9
  %i.ban = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.3 = getelementptr i8, ptr %i.ban, i64 24
  %i.bao = load double, ptr %gep1040.3, align 8, !tbaa !9
  %i.bap = getelementptr [8 x i8], ptr %5, i64 %indvars.iv964
  %i.baq = getelementptr i8, ptr %i.bap, i64 24
  store double %i.bao, ptr %i.baq, align 8, !tbaa !9
  %i.bar = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.4 = getelementptr i8, ptr %i.bar, i64 32
  %i.bas = load double, ptr %gep1040.4, align 8, !tbaa !9
  %i.bat = getelementptr [8 x i8], ptr %5, i64 %indvars.iv964
  %i.bau = getelementptr i8, ptr %i.bat, i64 32
  store double %i.bas, ptr %i.bau, align 8, !tbaa !9
  %i.bav = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.5 = getelementptr i8, ptr %i.bav, i64 40
  %i.baw = load double, ptr %gep1040.5, align 8, !tbaa !9
  %i.bax = getelementptr [8 x i8], ptr %5, i64 %indvars.iv964
  %i.bay = getelementptr i8, ptr %i.bax, i64 40
  store double %i.baw, ptr %i.bay, align 8, !tbaa !9
  %i.baz = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.6 = getelementptr i8, ptr %i.baz, i64 48
  %i.bba = load double, ptr %gep1040.6, align 8, !tbaa !9
  %i.bbb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv964
  %i.bbc = getelementptr i8, ptr %i.bbb, i64 48
  store double %i.bba, ptr %i.bbc, align 8, !tbaa !9
  %i.bbd = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %indvars.iv966
  %gep1040.7 = getelementptr i8, ptr %i.bbd, i64 56
  %i.bbe = load double, ptr %gep1040.7, align 8, !tbaa !9
  %i.bbf = getelementptr [8 x i8], ptr %5, i64 %indvars.iv964
  %i.bbg = getelementptr i8, ptr %i.bbf, i64 56
  store double %i.bbe, ptr %i.bbg, align 8, !tbaa !9
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
