inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 26
begin_hunk_0_@thinplate_match:bb.a
middle.block1394:                                 ; preds = %vector.body1383
  br i1 %cmp.n1395, label %._crit_edge808.i.i, label %vec.epilog.iter.check1400

vec.epilog.iter.check1400:                        ; preds = %middle.block1394
  br i1 %min.epilog.iters.check1401, label %.lr.ph807.i.i.preheader, label %vec.epilog.ph1402, !prof !22

vec.epilog.ph1402:                                ; preds = %vector.main.loop.iter.check1377, %vec.epilog.iter.check1400
  %vec.epilog.resume.val1396 = phi i64 [ %n.vec1380, %vec.epilog.iter.check1400 ], [ 0, %vector.main.loop.iter.check1377 ]
  %broadcast.splatinsert1404 = insertelement <4 x double> poison, double %.lcssa784, i64 0
  %broadcast.splat1405 = shufflevector <4 x double> %broadcast.splatinsert1404, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1406

vec.epilog.vector.body1406:                       ; preds = %vec.epilog.vector.body1406, %vec.epilog.ph1402
  %index1407 = phi i64 [ %vec.epilog.resume.val1396, %vec.epilog.ph1402 ], [ %index.next1410, %vec.epilog.vector.body1406 ] ; 2 uses
  %i.alg = add nuw i64 %indvars.iv942.i.i, %index1407 ; 2 uses
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %i.alg
  %wide.load1408 = load <4 x double>, ptr %i.alh, align 8, !tbaa !12
  %i.ali = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1408, %broadcast.splat1405
  %i.alj = getelementptr [8 x i8], ptr %invariant.gep1186.i.i, i64 %i.alg ; 2 uses
  %wide.load1409 = load <4 x double>, ptr %i.alj, align 8, !tbaa !12
  %i.alk = fadd reassoc nsz arcp contract afn <4 x double> %wide.load1409, %i.ali
  store <4 x double> %i.alk, ptr %i.alj, align 8, !tbaa !12
  %index.next1410 = add nuw i64 %index1407, 4     ; 2 uses
  %i.all = icmp eq i64 %index.next1410, %n.vec1403
  br i1 %i.all, label %vec.epilog.middle.block1411, label %vec.epilog.vector.body1406, !llvm.loop !75

vec.epilog.middle.block1411:                      ; preds = %vec.epilog.vector.body1406
  br i1 %cmp.n1412, label %._crit_edge808.i.i, label %.lr.ph807.i.i.preheader

.lr.ph807.i.i.preheader:                          ; preds = %iter.check1398, %vec.epilog.iter.check1400, %vec.epilog.middle.block1411
  %indvars.iv974.i.i.ph = phi i64 [ %indvars.iv942.i.i, %iter.check1398 ], [ %i.ajg, %vec.epilog.iter.check1400 ], [ %i.ajh, %vec.epilog.middle.block1411 ]
  br label %.lr.ph807.i.i

._crit_edge808.i.i:                               ; preds = %.lr.ph807.i.i, %vec.epilog.middle.block1411, %middle.block1394
  %indvars.iv.next980.i.i = add nuw nsw i64 %indvars.iv979.i.i, 1 ; 2 uses
  %exitcond983.not.i.i = icmp eq i64 %indvars.iv.next980.i.i, %i.gr
  br i1 %exitcond983.not.i.i, label %iter.check1358, label %iter.check1445

iter.check1358:                                   ; preds = %._crit_edge808.i.i
  %min.iters.check1340 = icmp ult i64 %i.rm, 4
  br i1 %min.iters.check1340, label %.lr.ph812.i.i.preheader, label %vector.main.loop.iter.check1341

vector.main.loop.iter.check1341:                  ; preds = %iter.check1358
  %min.iters.check1342 = icmp ult i64 %i.rm, 16
  br i1 %min.iters.check1342, label %vec.epilog.ph1362, label %vector.ph1343

vector.ph1343:                                    ; preds = %vector.main.loop.iter.check1341
  %i.alm = and i64 %i.rm, 12
  %n.vec1344 = and i64 %i.rm, -16                 ; 4 uses
  %i.aln = add i64 %indvars.iv942.i.i, %n.vec1344
  %broadcast.splatinsert1345 = insertelement <4 x double> poison, double %.lcssa782, i64 0
  %broadcast.splat1346 = shufflevector <4 x double> %broadcast.splatinsert1345, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.alo = getelementptr [8 x i8], ptr %invariant.gep1180.i.i, i64 %indvars.iv942.i.i
  br label %vector.body1347

vector.body1347:                                  ; preds = %vector.body1347, %vector.ph1343
  %index1348 = phi i64 [ 0, %vector.ph1343 ], [ %index.next1353, %vector.body1347 ] ; 2 uses
  %i.alp = getelementptr [8 x i8], ptr %i.alo, i64 %index1348 ; 5 uses
  %i.alq = getelementptr i8, ptr %i.alp, i64 32   ; 2 uses
  %i.alr = getelementptr i8, ptr %i.alp, i64 64   ; 2 uses
  %i.als = getelementptr i8, ptr %i.alp, i64 96   ; 2 uses
  %wide.load1349 = load <4 x double>, ptr %i.alp, align 8, !tbaa !12
  %wide.load1350 = load <4 x double>, ptr %i.alq, align 8, !tbaa !12
  %wide.load1351 = load <4 x double>, ptr %i.alr, align 8, !tbaa !12
  %wide.load1352 = load <4 x double>, ptr %i.als, align 8, !tbaa !12
  %i.alt = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1349, %broadcast.splat1346
  %i.alu = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1350, %broadcast.splat1346
  %i.alv = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1351, %broadcast.splat1346
  %i.alw = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1352, %broadcast.splat1346
  store <4 x double> %i.alt, ptr %i.alp, align 8, !tbaa !12
  store <4 x double> %i.alu, ptr %i.alq, align 8, !tbaa !12
  store <4 x double> %i.alv, ptr %i.alr, align 8, !tbaa !12
  store <4 x double> %i.alw, ptr %i.als, align 8, !tbaa !12
  %index.next1353 = add nuw i64 %index1348, 16    ; 2 uses
  %i.alx = icmp eq i64 %index.next1353, %n.vec1344
  br i1 %i.alx, label %middle.block1354, label %vector.body1347, !llvm.loop !76

middle.block1354:                                 ; preds = %vector.body1347
  %cmp.n1355 = icmp eq i64 %i.rm, %n.vec1344
  br i1 %cmp.n1355, label %.loopexit753.i.loopexit.i, label %vec.epilog.iter.check1360

vec.epilog.iter.check1360:                        ; preds = %middle.block1354
  %min.epilog.iters.check1361 = icmp eq i64 %i.alm, 0
  br i1 %min.epilog.iters.check1361, label %.lr.ph812.i.i.preheader, label %vec.epilog.ph1362, !prof !22

vec.epilog.ph1362:                                ; preds = %vector.main.loop.iter.check1341, %vec.epilog.iter.check1360
  %vec.epilog.resume.val1356 = phi i64 [ %n.vec1344, %vec.epilog.iter.check1360 ], [ 0, %vector.main.loop.iter.check1341 ]
  %n.vec1363 = and i64 %i.rm, -4                  ; 3 uses
  %i.aly = add i64 %indvars.iv942.i.i, %n.vec1363
  %broadcast.splatinsert1364 = insertelement <4 x double> poison, double %.lcssa782, i64 0
  %broadcast.splat1365 = shufflevector <4 x double> %broadcast.splatinsert1364, <4 x double> poison, <4 x i32> zeroinitializer
  %i.alz = getelementptr [8 x i8], ptr %invariant.gep1180.i.i, i64 %indvars.iv942.i.i
  br label %vec.epilog.vector.body1366

vec.epilog.vector.body1366:                       ; preds = %vec.epilog.vector.body1366, %vec.epilog.ph1362
  %index1367 = phi i64 [ %vec.epilog.resume.val1356, %vec.epilog.ph1362 ], [ %index.next1369, %vec.epilog.vector.body1366 ] ; 2 uses
  %i.ama = getelementptr [8 x i8], ptr %i.alz, i64 %index1367 ; 2 uses
  %wide.load1368 = load <4 x double>, ptr %i.ama, align 8, !tbaa !12
  %i.amb = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1368, %broadcast.splat1365
  store <4 x double> %i.amb, ptr %i.ama, align 8, !tbaa !12
  %index.next1369 = add nuw i64 %index1367, 4     ; 2 uses
  %i.amc = icmp eq i64 %index.next1369, %n.vec1363
  br i1 %i.amc, label %vec.epilog.middle.block1370, label %vec.epilog.vector.body1366, !llvm.loop !77

vec.epilog.middle.block1370:                      ; preds = %vec.epilog.vector.body1366
  %cmp.n1371 = icmp eq i64 %i.rm, %n.vec1363
  br i1 %cmp.n1371, label %.loopexit753.i.loopexit.i, label %.lr.ph812.i.i.preheader

.lr.ph812.i.i.preheader:                          ; preds = %iter.check1358, %vec.epilog.iter.check1360, %vec.epilog.middle.block1370
  %indvars.iv984.i.i.ph = phi i64 [ %indvars.iv942.i.i, %iter.check1358 ], [ %i.aln, %vec.epilog.iter.check1360 ], [ %i.aly, %vec.epilog.middle.block1370 ]
  br label %.lr.ph812.i.i

.lr.ph807.i.i:                                    ; preds = %.lr.ph807.i.i.preheader, %.lr.ph807.i.i
  %indvars.iv974.i.i = phi i64 [ %indvars.iv.next975.i.i, %.lr.ph807.i.i ], [ %indvars.iv974.i.i.ph, %.lr.ph807.i.i.preheader ] ; 3 uses
  %i.amd = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %indvars.iv974.i.i
  %i.ame = load double, ptr %i.amd, align 8, !tbaa !12
  %i.amf = fmul reassoc nsz arcp contract afn double %i.ame, %.lcssa784
  %gep1191.i.i = getelementptr [8 x i8], ptr %invariant.gep1186.i.i, i64 %indvars.iv974.i.i ; 2 uses
  %i.amg = load double, ptr %gep1191.i.i, align 8, !tbaa !12
  %i.amh = fadd reassoc nsz arcp contract afn double %i.amg, %i.amf
  store double %i.amh, ptr %gep1191.i.i, align 8, !tbaa !12
  %indvars.iv.next975.i.i = add nuw nsw i64 %indvars.iv974.i.i, 1 ; 2 uses
  %exitcond978.not.i.i = icmp eq i64 %indvars.iv.next975.i.i, %wide.trip.count990.i.i
  br i1 %exitcond978.not.i.i, label %._crit_edge808.i.i, label %.lr.ph807.i.i, !llvm.loop !78

.lr.ph812.i.i:                                    ; preds = %.lr.ph812.i.i.preheader, %.lr.ph812.i.i
  %indvars.iv984.i.i = phi i64 [ %indvars.iv.next985.i.i, %.lr.ph812.i.i ], [ %indvars.iv984.i.i.ph, %.lr.ph812.i.i.preheader ] ; 2 uses
  %gep1193.i.i = getelementptr [8 x i8], ptr %invariant.gep1180.i.i, i64 %indvars.iv984.i.i ; 2 uses
  %i.ami = load double, ptr %gep1193.i.i, align 8, !tbaa !12
  %i.amj = fmul reassoc nsz arcp contract afn double %i.ami, %.lcssa782
  store double %i.amj, ptr %gep1193.i.i, align 8, !tbaa !12
  %indvars.iv.next985.i.i = add nuw nsw i64 %indvars.iv984.i.i, 1 ; 2 uses
  %exitcond988.not.i.i = icmp eq i64 %indvars.iv.next985.i.i, %wide.trip.count990.i.i
  br i1 %exitcond988.not.i.i, label %.loopexit753.i.loopexit.i, label %.lr.ph812.i.i, !llvm.loop !79

.loopexit753.i.loopexit.i:                        ; preds = %.lr.ph812.i.i, %vec.epilog.middle.block1370, %middle.block1354
  %.pre146.i = load double, ptr %i.ro, align 8, !tbaa !12
  br label %.loopexit753.i.i

.loopexit753.i.i:                                 ; preds = %.loopexit753.i.loopexit.i, %._crit_edge791.i.i, %.loopexit758.i.i
  %i.amk = phi double [ %i.rn, %.loopexit758.i.i ], [ %i.rn, %._crit_edge791.i.i ], [ %.pre146.i, %.loopexit753.i.loopexit.i ]
  %.2670.i.i = phi nsz double [ 0.000000e+00, %.loopexit758.i.i ], [ 0.000000e+00, %._crit_edge791.i.i ], [ %i.ahp, %.loopexit753.i.loopexit.i ] ; 2 uses
  %.4.i.i = phi nsz double [ 0.000000e+00, %.loopexit758.i.i ], [ %.lcssa782, %._crit_edge791.i.i ], [ %.lcssa782, %.loopexit753.i.loopexit.i ]
  %i.aml = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aev)
  %i.amm = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.amk)
  %i.amn = fadd reassoc nsz arcp contract afn double %i.amm, %i.aml ; 2 uses
  %i.amo = fcmp reassoc nsz arcp contract afn ogt double %.0672813.i.i, %i.amn
  %.0672..i.i = select reassoc nsz arcp contract afn i1 %i.amo, double %.0672813.i.i, double %i.amn ; 11 uses
  %indvars.iv.next943.i.i = add nuw nsw i64 %indvars.iv942.i.i, 1
  %exitcond991.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count990.i.i
  br i1 %exitcond991.not.i.i, label %._crit_edge818.i.i, label %iter.check1797

._crit_edge818.i.i:                               ; preds = %.loopexit753.i.i, %.loopexit745.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit745.i.i ], [ 0, %.loopexit753.i.i ] ; 3 uses
  %indvars.iv1017.in.i.i = phi i64 [ %indvars.iv1017.i.i, %.loopexit745.i.i ], [ %i.oy, %.loopexit753.i.i ] ; 9 uses
  %.3671835.i.i = phi double [ %i.aqy, %.loopexit745.i.i ], [ %.2670.i.i, %.loopexit753.i.i ] ; 2 uses
  %sext2153 = shl i64 %indvars.iv1017.in.i.i, 32
  %i.amp = ashr exact i64 %sext2153, 32
  %i.amq = sub i64 %i.pj, %indvars.iv1017.in.i.i
  %i.amr = sub i64 %smin2095, %i.amp
  %sext = shl i64 %indvars.iv1017.in.i.i, 32
  %i.ams = ashr exact i64 %sext, 32
  %i.amt = sub i64 %i.pi, %i.ams                  ; 7 uses
  %sext1930 = shl i64 %indvars.iv1017.in.i.i, 32
  %i.amu = ashr exact i64 %sext1930, 32
  %i.amv = sub i64 %i.ph, %i.amu                  ; 10 uses
  %indvars118.i = trunc i64 %indvars.iv1017.in.i.i to i32 ; 3 uses
  %indvars.iv1017.i.i = add nsw i64 %indvars.iv1017.in.i.i, -1 ; 6 uses
  %indvars117.i = trunc i64 %indvars.iv1017.i.i to i32
  %i.amw = trunc i64 %indvars.iv.i to i32
  %i.amx = sub i32 %i.ow, %i.amw
  %i.amy = mul i32 %i.amx, %i.ox
  %.not.i.i = icmp sgt i64 %indvars.iv1017.in.i.i, %i.pb
  br i1 %.not.i.i, label %.loopexit745.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge818.i.i
  %i.amz = fcmp reassoc nsz arcp contract afn une double %.3671835.i.i, 0.000000e+00
  %i.ana = icmp sge i32 %i.ow, %indvars118.i      ; 2 uses
  %or.cond1234.i.i = and i1 %i.ana, %i.amz
  br i1 %or.cond1234.i.i, label %.lr.ph823.i.i, label %.loopexit747.i.i

.lr.ph823.i.i:                                    ; preds = %bb.r
  %i.anb = mul nsw i64 %indvars.iv1017.i.i, %i.ih
  %sext.i = shl i64 %indvars.iv1017.in.i.i, 32
  %i.anc = ashr exact i64 %sext.i, 32             ; 15 uses
  %i.and = getelementptr [8 x i8], ptr %i.in, i64 %i.anb ; 6 uses
  %i.ane = getelementptr [8 x i8], ptr %i.and, i64 %i.anc
  %invariant.gep1196.i.i = getelementptr [8 x i8], ptr %i.il, i64 %indvars.iv1017.i.i ; 7 uses
  %i.anf = load double, ptr %i.ane, align 8, !tbaa !12
  %i.ang = fmul reassoc nsz arcp contract afn double %i.anf, %.3671835.i.i ; 2 uses
  %min.iters.check1317 = icmp ult i64 %i.amv, 4
  br i1 %min.iters.check1317, label %scalar.ph1316.preheader, label %vector.ph1318

vector.ph1318:                                    ; preds = %.lr.ph823.i.i
  %n.vec1319 = and i64 %i.amv, -4                 ; 3 uses
  %i.anh = add i64 %i.anc, %n.vec1319
  %broadcast.splatinsert1320 = insertelement <4 x double> poison, double %i.ang, i64 0
  %broadcast.splat1321 = shufflevector <4 x double> %broadcast.splatinsert1320, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1324 = insertelement <4 x i64> poison, i64 %i.anc, i64 0
  %broadcast.splat1325 = shufflevector <4 x i64> %broadcast.splatinsert1324, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1326 = add nuw nsw <4 x i64> %broadcast.splat1325, <i64 0, i64 1, i64 2, i64 3>
  %i.ani = getelementptr [8 x i8], ptr %i.and, i64 %i.anc
  %i.anj = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1321
  br label %vector.body1327

vector.body1327:                                  ; preds = %vector.body1327, %vector.ph1318
  %index1328 = phi i64 [ 0, %vector.ph1318 ], [ %index.next1332, %vector.body1327 ] ; 2 uses
  %vec.ind1329 = phi <4 x i64> [ %induction1326, %vector.ph1318 ], [ %vec.ind.next1333, %vector.body1327 ] ; 2 uses
  %i.ank = getelementptr [8 x i8], ptr %i.ani, i64 %index1328
  %wide.load1330 = load <4 x double>, ptr %i.ank, align 8, !tbaa !12
  %i.anl = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1330, %i.anj
  %i.anm = mul nsw <4 x i64> %vec.ind1329, %broadcast.splat1323
  %wide.gep1331 = getelementptr [8 x i8], ptr %invariant.gep1196.i.i, <4 x i64> %i.anm
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.anl, <4 x ptr> align 8 %wide.gep1331, <4 x i1> splat (i1 true)), !tbaa !12
  %index.next1332 = add nuw i64 %index1328, 4     ; 2 uses
  %vec.ind.next1333 = add nuw nsw <4 x i64> %vec.ind1329, splat (i64 4)
  %i.ann = icmp eq i64 %index.next1332, %n.vec1319
  br i1 %i.ann, label %middle.block1334, label %vector.body1327, !llvm.loop !80

middle.block1334:                                 ; preds = %vector.body1327
  %cmp.n1335 = icmp eq i64 %i.amv, %n.vec1319
  br i1 %cmp.n1335, label %iter.check1292.preheader, label %scalar.ph1316.preheader

scalar.ph1316.preheader:                          ; preds = %.lr.ph823.i.i, %middle.block1334
  %indvars.iv992.i.i.ph = phi i64 [ %i.anc, %.lr.ph823.i.i ], [ %i.anh, %middle.block1334 ]
  %i.ano = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ang
  br label %scalar.ph1316

scalar.ph1316:                                    ; preds = %scalar.ph1316.preheader, %scalar.ph1316
  %indvars.iv992.i.i = phi i64 [ %indvars.iv.next993.i.i, %scalar.ph1316 ], [ %indvars.iv992.i.i.ph, %scalar.ph1316.preheader ] ; 3 uses
  %gep1195.i.i = getelementptr [8 x i8], ptr %i.and, i64 %indvars.iv992.i.i
  %i.anp = load double, ptr %gep1195.i.i, align 8, !tbaa !12
  %i.anq = fmul reassoc nsz arcp contract afn double %i.anp, %i.ano
  %i.anr = mul nsw i64 %indvars.iv992.i.i, %i.oy
  %gep1197.i.i = getelementptr [8 x i8], ptr %invariant.gep1196.i.i, i64 %i.anr
  store double %i.anq, ptr %gep1197.i.i, align 8, !tbaa !12
  %indvars.iv.next993.i.i = add nuw nsw i64 %indvars.iv992.i.i, 1 ; 2 uses
  %exitcond996.not.i.i = icmp eq i64 %indvars.iv.next993.i.i, %i.oy
  br i1 %exitcond996.not.i.i, label %iter.check1292.preheader, label %scalar.ph1316, !llvm.loop !81

iter.check1292.preheader:                         ; preds = %scalar.ph1316, %middle.block1334
  %min.iters.check1250 = icmp ult i64 %i.amt, 4
  %min.iters.check1252 = icmp ult i64 %i.amt, 16
  %i.ans = and i64 %i.amt, 12
  %n.vec1254 = and i64 %i.amt, -16                ; 4 uses
  %i.ant = add i64 %i.anc, %n.vec1254             ; 2 uses
  %broadcast.splatinsert1257 = insertelement <4 x i64> poison, i64 %i.anc, i64 0
  %broadcast.splat1258 = shufflevector <4 x i64> %broadcast.splatinsert1257, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1259 = add nuw nsw <4 x i64> %broadcast.splat1258, <i64 0, i64 1, i64 2, i64 3>
  %i.anu = getelementptr [8 x i8], ptr %i.and, i64 %i.anc
  %cmp.n1288 = icmp eq i64 %i.amt, %n.vec1254
  %min.epilog.iters.check1295 = icmp eq i64 %i.ans, 0
  %n.vec1297 = and i64 %i.amt, -4                 ; 3 uses
  %i.anv = add i64 %i.anc, %n.vec1297
  %i.anw = getelementptr [8 x i8], ptr %i.and, i64 %i.anc
  %cmp.n1313 = icmp eq i64 %i.amt, %n.vec1297
  %xtraiter2096 = and i64 %i.amq, 3               ; 2 uses
  %lcmp.mod2097.not = icmp eq i64 %xtraiter2096, 0
  %i.anx = icmp ult i64 %i.amr, 3
  br label %iter.check1292

iter.check1292:                                   ; preds = %iter.check1292.preheader, %._crit_edge830.i.i
  %indvars.iv1007.i.i = phi i64 [ %indvars.iv.next1008.i.i, %._crit_edge830.i.i ], [ %i.anc, %iter.check1292.preheader ] ; 2 uses
  %invariant.gep1200.i.i = getelementptr [8 x i8], ptr %i.il, i64 %indvars.iv1007.i.i ; 11 uses
  br i1 %min.iters.check1250, label %vec.epilog.scalar.ph1293.preheader, label %vector.main.loop.iter.check1251

vector.main.loop.iter.check1251:                  ; preds = %iter.check1292
  br i1 %min.iters.check1252, label %vec.epilog.ph1296, label %vector.body1260

vector.body1260:                                  ; preds = %vector.main.loop.iter.check1251, %vector.body1260
  %index1261 = phi i64 [ %index.next1282, %vector.body1260 ], [ 0, %vector.main.loop.iter.check1251 ] ; 2 uses
  %vec.ind1262 = phi <4 x i64> [ %vec.ind.next1283, %vector.body1260 ], [ %induction1259, %vector.main.loop.iter.check1251 ] ; 5 uses
  %vec.phi1263 = phi <4 x double> [ %i.aok, %vector.body1260 ], [ zeroinitializer, %vector.main.loop.iter.check1251 ]
  %vec.phi1264 = phi <4 x double> [ %i.aol, %vector.body1260 ], [ zeroinitializer, %vector.main.loop.iter.check1251 ]
  %vec.phi1265 = phi <4 x double> [ %i.aom, %vector.body1260 ], [ zeroinitializer, %vector.main.loop.iter.check1251 ]
  %vec.phi1266 = phi <4 x double> [ %i.aon, %vector.body1260 ], [ zeroinitializer, %vector.main.loop.iter.check1251 ]
  %step.add1267 = add nuw nsw <4 x i64> %vec.ind1262, splat (i64 4)
  %step.add.21268 = add nuw nsw <4 x i64> %vec.ind1262, splat (i64 8)
  %step.add.31269 = add nuw nsw <4 x i64> %vec.ind1262, splat (i64 12)
  %i.any = getelementptr [8 x i8], ptr %i.anu, i64 %index1261 ; 4 uses
  %i.anz = getelementptr i8, ptr %i.any, i64 32
  %i.aoa = getelementptr i8, ptr %i.any, i64 64
  %i.aob = getelementptr i8, ptr %i.any, i64 96
  %wide.load1270 = load <4 x double>, ptr %i.any, align 8, !tbaa !12
  %wide.load1271 = load <4 x double>, ptr %i.anz, align 8, !tbaa !12
  %wide.load1272 = load <4 x double>, ptr %i.aoa, align 8, !tbaa !12
  %wide.load1273 = load <4 x double>, ptr %i.aob, align 8, !tbaa !12
  %i.aoc = mul nsw <4 x i64> %vec.ind1262, %broadcast.splat1256
  %i.aod = mul nsw <4 x i64> %step.add1267, %broadcast.splat1256
  %i.aoe = mul nsw <4 x i64> %step.add.21268, %broadcast.splat1256
  %i.aof = mul nsw <4 x i64> %step.add.31269, %broadcast.splat1256
  %wide.gep1274 = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, <4 x i64> %i.aoc
  %wide.gep1275 = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, <4 x i64> %i.aod
  %wide.gep1276 = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, <4 x i64> %i.aoe
  %wide.gep1277 = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, <4 x i64> %i.aof
  %wide.masked.gather1278 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1274, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather1279 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1275, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather1280 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1276, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather1281 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1277, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %i.aog = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1278, %wide.load1270
  %i.aoh = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1279, %wide.load1271
  %i.aoi = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1280, %wide.load1272
  %i.aoj = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1281, %wide.load1273
  %i.aok = fadd reassoc nsz arcp contract afn <4 x double> %i.aog, %vec.phi1263 ; 2 uses
  %i.aol = fadd reassoc nsz arcp contract afn <4 x double> %i.aoh, %vec.phi1264 ; 2 uses
  %i.aom = fadd reassoc nsz arcp contract afn <4 x double> %i.aoi, %vec.phi1265 ; 2 uses
  %i.aon = fadd reassoc nsz arcp contract afn <4 x double> %i.aoj, %vec.phi1266 ; 2 uses
  %index.next1282 = add nuw i64 %index1261, 16    ; 2 uses
  %vec.ind.next1283 = add nuw nsw <4 x i64> %vec.ind1262, splat (i64 16)
  %i.aoo = icmp eq i64 %index.next1282, %n.vec1254
  br i1 %i.aoo, label %middle.block1284, label %vector.body1260, !llvm.loop !82

middle.block1284:                                 ; preds = %vector.body1260
  %bin.rdx1285 = fadd reassoc nsz arcp contract afn <4 x double> %i.aol, %i.aok
  %bin.rdx1286 = fadd reassoc nsz arcp contract afn <4 x double> %i.aom, %bin.rdx1285
  %bin.rdx1287 = fadd reassoc nsz arcp contract afn <4 x double> %i.aon, %bin.rdx1286
  %i.aop = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1287) ; 3 uses
  br i1 %cmp.n1288, label %.lr.ph829.i.i.preheader, label %vec.epilog.iter.check1294

vec.epilog.iter.check1294:                        ; preds = %middle.block1284
  br i1 %min.epilog.iters.check1295, label %vec.epilog.scalar.ph1293.preheader, label %vec.epilog.ph1296, !prof !22

vec.epilog.ph1296:                                ; preds = %vector.main.loop.iter.check1251, %vec.epilog.iter.check1294
  %vec.epilog.resume.val1289 = phi i64 [ %n.vec1254, %vec.epilog.iter.check1294 ], [ 0, %vector.main.loop.iter.check1251 ]
  %bc.resume.val1290 = phi i64 [ %i.ant, %vec.epilog.iter.check1294 ], [ %i.anc, %vector.main.loop.iter.check1251 ]
  %bc.merge.rdx1291 = phi double [ %i.aop, %vec.epilog.iter.check1294 ], [ 0.000000e+00, %vector.main.loop.iter.check1251 ]
  %i.aoq = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1291, i64 0
  %broadcast.splatinsert1300 = insertelement <4 x i64> poison, i64 %bc.resume.val1290, i64 0
  %broadcast.splat1301 = shufflevector <4 x i64> %broadcast.splatinsert1300, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1302 = add nuw nsw <4 x i64> %broadcast.splat1301, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1303

vec.epilog.vector.body1303:                       ; preds = %vec.epilog.vector.body1303, %vec.epilog.ph1296
  %index1304 = phi i64 [ %vec.epilog.resume.val1289, %vec.epilog.ph1296 ], [ %index.next1310, %vec.epilog.vector.body1303 ] ; 2 uses
  %vec.ind1305 = phi <4 x i64> [ %induction1302, %vec.epilog.ph1296 ], [ %vec.ind.next1311, %vec.epilog.vector.body1303 ] ; 2 uses
  %vec.phi1306 = phi <4 x double> [ %i.aoq, %vec.epilog.ph1296 ], [ %i.aou, %vec.epilog.vector.body1303 ]
  %i.aor = getelementptr [8 x i8], ptr %i.anw, i64 %index1304
  %wide.load1307 = load <4 x double>, ptr %i.aor, align 8, !tbaa !12
  %i.aos = mul nsw <4 x i64> %vec.ind1305, %broadcast.splat1299
  %wide.gep1308 = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, <4 x i64> %i.aos
  %wide.masked.gather1309 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1308, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %i.aot = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1309, %wide.load1307
  %i.aou = fadd reassoc nsz arcp contract afn <4 x double> %i.aot, %vec.phi1306 ; 2 uses
  %index.next1310 = add nuw i64 %index1304, 4     ; 2 uses
  %vec.ind.next1311 = add nuw nsw <4 x i64> %vec.ind1305, splat (i64 4)
  %i.aov = icmp eq i64 %index.next1310, %n.vec1297
  br i1 %i.aov, label %vec.epilog.middle.block1312, label %vec.epilog.vector.body1303, !llvm.loop !83

vec.epilog.middle.block1312:                      ; preds = %vec.epilog.vector.body1303
  %i.aow = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.aou) ; 2 uses
  br i1 %cmp.n1313, label %.lr.ph829.i.i.preheader, label %vec.epilog.scalar.ph1293.preheader

vec.epilog.scalar.ph1293.preheader:               ; preds = %iter.check1292, %vec.epilog.iter.check1294, %vec.epilog.middle.block1312
  %indvars.iv997.i.i.ph = phi i64 [ %i.anc, %iter.check1292 ], [ %i.ant, %vec.epilog.iter.check1294 ], [ %i.anv, %vec.epilog.middle.block1312 ]
  %.4678824.i.i.ph = phi double [ 0.000000e+00, %iter.check1292 ], [ %i.aop, %vec.epilog.iter.check1294 ], [ %i.aow, %vec.epilog.middle.block1312 ]
  br label %vec.epilog.scalar.ph1293

vec.epilog.scalar.ph1293:                         ; preds = %vec.epilog.scalar.ph1293.preheader, %vec.epilog.scalar.ph1293
  %indvars.iv997.i.i = phi i64 [ %indvars.iv.next998.i.i, %vec.epilog.scalar.ph1293 ], [ %indvars.iv997.i.i.ph, %vec.epilog.scalar.ph1293.preheader ] ; 3 uses
  %.4678824.i.i = phi double [ %i.apb, %vec.epilog.scalar.ph1293 ], [ %.4678824.i.i.ph, %vec.epilog.scalar.ph1293.preheader ]
  %gep1199.i.i = getelementptr [8 x i8], ptr %i.and, i64 %indvars.iv997.i.i
  %i.aox = load double, ptr %gep1199.i.i, align 8, !tbaa !12
  %i.aoy = mul nsw i64 %indvars.iv997.i.i, %i.oy
  %gep1201.i.i = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, i64 %i.aoy
  %i.aoz = load double, ptr %gep1201.i.i, align 8, !tbaa !12
  %i.apa = fmul reassoc nsz arcp contract afn double %i.aoz, %i.aox
  %i.apb = fadd reassoc nsz arcp contract afn double %i.apa, %.4678824.i.i ; 2 uses
  %indvars.iv.next998.i.i = add nuw nsw i64 %indvars.iv997.i.i, 1 ; 2 uses
  %exitcond1001.not.i.i = icmp eq i64 %indvars.iv.next998.i.i, %i.oy
  br i1 %exitcond1001.not.i.i, label %.lr.ph829.i.i.preheader, label %vec.epilog.scalar.ph1293, !llvm.loop !84

.lr.ph829.i.i.preheader:                          ; preds = %vec.epilog.scalar.ph1293, %vec.epilog.middle.block1312, %middle.block1284
  %.lcssa785 = phi double [ %i.aow, %vec.epilog.middle.block1312 ], [ %i.aop, %middle.block1284 ], [ %i.apb, %vec.epilog.scalar.ph1293 ] ; 5 uses
  br i1 %lcmp.mod2097.not, label %.lr.ph829.i.i.prol.loopexit, label %.lr.ph829.i.i.prol

.lr.ph829.i.i.prol:                               ; preds = %.lr.ph829.i.i.preheader, %.lr.ph829.i.i.prol
  %indvars.iv1002.i.i.prol = phi i64 [ %indvars.iv.next1003.i.i.prol, %.lr.ph829.i.i.prol ], [ %i.anc, %.lr.ph829.i.i.preheader ] ; 2 uses
  %prol.iter2098 = phi i64 [ %prol.iter2098.next, %.lr.ph829.i.i.prol ], [ 0, %.lr.ph829.i.i.preheader ]
  %i.apc = mul nsw i64 %indvars.iv1002.i.i.prol, %i.oy ; 2 uses
  %gep1203.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1196.i.i, i64 %i.apc
  %i.apd = load double, ptr %gep1203.i.i.prol, align 8, !tbaa !12
  %i.ape = fmul reassoc nsz arcp contract afn double %i.apd, %.lcssa785
  %gep1205.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, i64 %i.apc ; 2 uses
  %i.apf = load double, ptr %gep1205.i.i.prol, align 8, !tbaa !12
  %i.apg = fadd reassoc nsz arcp contract afn double %i.apf, %i.ape
  store double %i.apg, ptr %gep1205.i.i.prol, align 8, !tbaa !12
  %indvars.iv.next1003.i.i.prol = add nuw nsw i64 %indvars.iv1002.i.i.prol, 1 ; 2 uses
  %prol.iter2098.next = add i64 %prol.iter2098, 1 ; 2 uses
  %prol.iter2098.cmp.not = icmp eq i64 %prol.iter2098.next, %xtraiter2096
  br i1 %prol.iter2098.cmp.not, label %.lr.ph829.i.i.prol.loopexit, label %.lr.ph829.i.i.prol, !llvm.loop !85

.lr.ph829.i.i.prol.loopexit:                      ; preds = %.lr.ph829.i.i.prol, %.lr.ph829.i.i.preheader
  %indvars.iv1002.i.i.unr = phi i64 [ %i.anc, %.lr.ph829.i.i.preheader ], [ %indvars.iv.next1003.i.i.prol, %.lr.ph829.i.i.prol ]
  br i1 %i.anx, label %._crit_edge830.i.i, label %.lr.ph829.i.i

._crit_edge830.i.i:                               ; preds = %.lr.ph829.i.i, %.lr.ph829.i.i.prol.loopexit
  %indvars.iv.next1008.i.i = add nuw nsw i64 %indvars.iv1007.i.i, 1 ; 2 uses
  %exitcond1011.not.i.i = icmp eq i64 %indvars.iv.next1008.i.i, %i.oy
  br i1 %exitcond1011.not.i.i, label %.loopexit747.i.i, label %iter.check1292

.lr.ph829.i.i:                                    ; preds = %.lr.ph829.i.i.prol.loopexit, %.lr.ph829.i.i
  %indvars.iv1002.i.i = phi i64 [ %indvars.iv.next1003.i.i.3, %.lr.ph829.i.i ], [ %indvars.iv1002.i.i.unr, %.lr.ph829.i.i.prol.loopexit ] ; 5 uses
  %i.aph = mul nsw i64 %indvars.iv1002.i.i, %i.oy ; 2 uses
  %gep1203.i.i = getelementptr [8 x i8], ptr %invariant.gep1196.i.i, i64 %i.aph
  %i.api = load double, ptr %gep1203.i.i, align 8, !tbaa !12
  %i.apj = fmul reassoc nsz arcp contract afn double %i.api, %.lcssa785
  %gep1205.i.i = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, i64 %i.aph ; 2 uses
  %i.apk = load double, ptr %gep1205.i.i, align 8, !tbaa !12
  %i.apl = fadd reassoc nsz arcp contract afn double %i.apk, %i.apj
  store double %i.apl, ptr %gep1205.i.i, align 8, !tbaa !12
  %indvars.iv.next1003.i.i = add nuw nsw i64 %indvars.iv1002.i.i, 1
  %i.apm = mul nsw i64 %indvars.iv.next1003.i.i, %i.oy ; 2 uses
  %gep1203.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1196.i.i, i64 %i.apm
  %i.apn = load double, ptr %gep1203.i.i.1, align 8, !tbaa !12
  %i.apo = fmul reassoc nsz arcp contract afn double %i.apn, %.lcssa785
  %gep1205.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, i64 %i.apm ; 2 uses
  %i.app = load double, ptr %gep1205.i.i.1, align 8, !tbaa !12
  %i.apq = fadd reassoc nsz arcp contract afn double %i.app, %i.apo
  store double %i.apq, ptr %gep1205.i.i.1, align 8, !tbaa !12
  %indvars.iv.next1003.i.i.1 = add nuw nsw i64 %indvars.iv1002.i.i, 2
  %i.apr = mul nsw i64 %indvars.iv.next1003.i.i.1, %i.oy ; 2 uses
  %gep1203.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1196.i.i, i64 %i.apr
  %i.aps = load double, ptr %gep1203.i.i.2, align 8, !tbaa !12
  %i.apt = fmul reassoc nsz arcp contract afn double %i.aps, %.lcssa785
  %gep1205.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, i64 %i.apr ; 2 uses
  %i.apu = load double, ptr %gep1205.i.i.2, align 8, !tbaa !12
  %i.apv = fadd reassoc nsz arcp contract afn double %i.apu, %i.apt
  store double %i.apv, ptr %gep1205.i.i.2, align 8, !tbaa !12
  %indvars.iv.next1003.i.i.2 = add nuw nsw i64 %indvars.iv1002.i.i, 3
  %i.apw = mul nsw i64 %indvars.iv.next1003.i.i.2, %i.oy ; 2 uses
  %gep1203.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1196.i.i, i64 %i.apw
  %i.apx = load double, ptr %gep1203.i.i.3, align 8, !tbaa !12
  %i.apy = fmul reassoc nsz arcp contract afn double %i.apx, %.lcssa785
  %gep1205.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1200.i.i, i64 %i.apw ; 2 uses
  %i.apz = load double, ptr %gep1205.i.i.3, align 8, !tbaa !12
  %i.aqa = fadd reassoc nsz arcp contract afn double %i.apz, %i.apy
  store double %i.aqa, ptr %gep1205.i.i.3, align 8, !tbaa !12
  %indvars.iv.next1003.i.i.3 = add nuw nsw i64 %indvars.iv1002.i.i, 4 ; 2 uses
  %exitcond1006.not.i.i.3 = icmp eq i64 %indvars.iv.next1003.i.i.3, %i.oy
  br i1 %exitcond1006.not.i.i.3, label %._crit_edge830.i.i, label %.lr.ph829.i.i

.loopexit747.i.i:                                 ; preds = %._crit_edge830.i.i, %bb.r
  br i1 %i.ana, label %iter.check1227, label %.loopexit745.i.i

iter.check1227:                                   ; preds = %.loopexit747.i.i
  %i.aqb = add i32 %i.amy, %indvars118.i
  %i.aqc = sext i32 %i.aqb to i64
  %i.aqd = shl nsw i64 %i.aqc, 3
  %scevgep.i.i = getelementptr i8, ptr %i.il, i64 %i.aqd
  %i.aqe = sub i32 %i.ow, %indvars118.i
  %i.aqf = zext i32 %i.aqe to i64
  %i.aqg = shl nuw nsw i64 %i.aqf, 3
  %i.aqh = add nuw nsw i64 %i.aqg, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.aqh, i1 false), !tbaa !12
  %sext174.i = shl i64 %indvars.iv1017.in.i.i, 32
  %i.aqi = ashr exact i64 %sext174.i, 32          ; 5 uses
  %invariant.gep1206.i.i = getelementptr [8 x i8], ptr %i.il, i64 %indvars.iv1017.i.i ; 6 uses
  %min.iters.check1201 = icmp ult i64 %i.amv, 4
  br i1 %min.iters.check1201, label %vec.epilog.scalar.ph1228.preheader, label %vector.main.loop.iter.check1202

vector.main.loop.iter.check1202:                  ; preds = %iter.check1227
  %min.iters.check1203 = icmp ult i64 %i.amv, 16
  br i1 %min.iters.check1203, label %vec.epilog.ph1231, label %vector.ph1204

vector.ph1204:                                    ; preds = %vector.main.loop.iter.check1202
  %i.aqj = and i64 %i.amv, 12
  %n.vec1205 = and i64 %i.amv, -16                ; 4 uses
  %i.aqk = add i64 %i.aqi, %n.vec1205             ; 2 uses
  %broadcast.splatinsert1208 = insertelement <4 x i64> poison, i64 %i.aqi, i64 0
  %broadcast.splat1209 = shufflevector <4 x i64> %broadcast.splatinsert1208, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1210 = add nuw nsw <4 x i64> %broadcast.splat1209, <i64 0, i64 1, i64 2, i64 3>
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %vector.ph1204
  %index1212 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1221, %vector.body1211 ]
  %vec.ind1213 = phi <4 x i64> [ %induction1210, %vector.ph1204 ], [ %vec.ind.next1222, %vector.body1211 ] ; 5 uses
  %step.add1214 = add nuw nsw <4 x i64> %vec.ind1213, splat (i64 4)
  %step.add.21215 = add nuw nsw <4 x i64> %vec.ind1213, splat (i64 8)
  %step.add.31216 = add nuw nsw <4 x i64> %vec.ind1213, splat (i64 12)
  %i.aql = mul nsw <4 x i64> %vec.ind1213, %broadcast.splat1207
  %i.aqm = mul nsw <4 x i64> %step.add1214, %broadcast.splat1207
  %i.aqn = mul nsw <4 x i64> %step.add.21215, %broadcast.splat1207
  %i.aqo = mul nsw <4 x i64> %step.add.31216, %broadcast.splat1207
  %wide.gep1217 = getelementptr [8 x i8], ptr %invariant.gep1206.i.i, <4 x i64> %i.aql
  %wide.gep1218 = getelementptr [8 x i8], ptr %invariant.gep1206.i.i, <4 x i64> %i.aqm
  %wide.gep1219 = getelementptr [8 x i8], ptr %invariant.gep1206.i.i, <4 x i64> %i.aqn
  %wide.gep1220 = getelementptr [8 x i8], ptr %invariant.gep1206.i.i, <4 x i64> %i.aqo
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1217, <4 x i1> splat (i1 true)), !tbaa !12
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1218, <4 x i1> splat (i1 true)), !tbaa !12
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1219, <4 x i1> splat (i1 true)), !tbaa !12
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1220, <4 x i1> splat (i1 true)), !tbaa !12
  %index.next1221 = add nuw i64 %index1212, 16    ; 2 uses
  %vec.ind.next1222 = add nuw nsw <4 x i64> %vec.ind1213, splat (i64 16)
  %i.aqp = icmp eq i64 %index.next1221, %n.vec1205
  br i1 %i.aqp, label %middle.block1223, label %vector.body1211, !llvm.loop !86

middle.block1223:                                 ; preds = %vector.body1211
  %cmp.n1224 = icmp eq i64 %i.amv, %n.vec1205
  br i1 %cmp.n1224, label %.loopexit745.i.i, label %vec.epilog.iter.check1229

vec.epilog.iter.check1229:                        ; preds = %middle.block1223
  %min.epilog.iters.check1230 = icmp eq i64 %i.aqj, 0
  br i1 %min.epilog.iters.check1230, label %vec.epilog.scalar.ph1228.preheader, label %vec.epilog.ph1231, !prof !22

vec.epilog.ph1231:                                ; preds = %vector.main.loop.iter.check1202, %vec.epilog.iter.check1229
  %vec.epilog.resume.val1225 = phi i64 [ %n.vec1205, %vec.epilog.iter.check1229 ], [ 0, %vector.main.loop.iter.check1202 ]
  %bc.resume.val1226 = phi i64 [ %i.aqk, %vec.epilog.iter.check1229 ], [ %i.aqi, %vector.main.loop.iter.check1202 ]
  %n.vec1232 = and i64 %i.amv, -4                 ; 3 uses
  %i.aqq = add i64 %i.aqi, %n.vec1232
  %broadcast.splatinsert1235 = insertelement <4 x i64> poison, i64 %bc.resume.val1226, i64 0
  %broadcast.splat1236 = shufflevector <4 x i64> %broadcast.splatinsert1235, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1237 = add nuw nsw <4 x i64> %broadcast.splat1236, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1238

vec.epilog.vector.body1238:                       ; preds = %vec.epilog.vector.body1238, %vec.epilog.ph1231
  %index1239 = phi i64 [ %vec.epilog.resume.val1225, %vec.epilog.ph1231 ], [ %index.next1242, %vec.epilog.vector.body1238 ]
  %vec.ind1240 = phi <4 x i64> [ %induction1237, %vec.epilog.ph1231 ], [ %vec.ind.next1243, %vec.epilog.vector.body1238 ] ; 2 uses
  %i.aqr = mul nsw <4 x i64> %vec.ind1240, %broadcast.splat1234
  %wide.gep1241 = getelementptr [8 x i8], ptr %invariant.gep1206.i.i, <4 x i64> %i.aqr
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1241, <4 x i1> splat (i1 true)), !tbaa !12
  %index.next1242 = add nuw i64 %index1239, 4     ; 2 uses
  %vec.ind.next1243 = add nuw nsw <4 x i64> %vec.ind1240, splat (i64 4)
  %i.aqs = icmp eq i64 %index.next1242, %n.vec1232
  br i1 %i.aqs, label %vec.epilog.middle.block1244, label %vec.epilog.vector.body1238, !llvm.loop !87

vec.epilog.middle.block1244:                      ; preds = %vec.epilog.vector.body1238
  %cmp.n1245 = icmp eq i64 %i.amv, %n.vec1232
  br i1 %cmp.n1245, label %.loopexit745.i.i, label %vec.epilog.scalar.ph1228.preheader

vec.epilog.scalar.ph1228.preheader:               ; preds = %iter.check1227, %vec.epilog.iter.check1229, %vec.epilog.middle.block1244
  %indvars.iv1012.i.i.ph = phi i64 [ %i.aqi, %iter.check1227 ], [ %i.aqk, %vec.epilog.iter.check1229 ], [ %i.aqq, %vec.epilog.middle.block1244 ]
  br label %vec.epilog.scalar.ph1228

vec.epilog.scalar.ph1228:                         ; preds = %vec.epilog.scalar.ph1228.preheader, %vec.epilog.scalar.ph1228
  %indvars.iv1012.i.i = phi i64 [ %indvars.iv.next1013.i.i, %vec.epilog.scalar.ph1228 ], [ %indvars.iv1012.i.i.ph, %vec.epilog.scalar.ph1228.preheader ] ; 2 uses
  %i.aqt = mul nsw i64 %indvars.iv1012.i.i, %i.oy
  %gep1207.i.i = getelementptr [8 x i8], ptr %invariant.gep1206.i.i, i64 %i.aqt
  store double 0.000000e+00, ptr %gep1207.i.i, align 8, !tbaa !12
  %indvars.iv.next1013.i.i = add nuw nsw i64 %indvars.iv1012.i.i, 1 ; 2 uses
  %exitcond1016.not.i.i = icmp eq i64 %indvars.iv.next1013.i.i, %i.oy
  br i1 %exitcond1016.not.i.i, label %.loopexit745.i.i, label %vec.epilog.scalar.ph1228, !llvm.loop !88

.loopexit745.i.i:                                 ; preds = %vec.epilog.scalar.ph1228, %middle.block1223, %vec.epilog.middle.block1244, %.loopexit747.i.i, %._crit_edge818.i.i
  %i.aqu = mul i32 %.0645699.i.i, %indvars117.i
  %i.aqv = sext i32 %i.aqu to i64
  %i.aqw = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.aqv
  store double 1.000000e+00, ptr %i.aqw, align 8, !tbaa !12
  %i.aqx = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %indvars.iv1017.i.i
  %i.aqy = load double, ptr %i.aqx, align 8, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond1020.not.i.i = icmp eq i64 %indvars.iv.i, %i.pb
  br i1 %exitcond1020.not.i.i, label %.preheader742.i.i, label %._crit_edge818.i.i

.preheader742.i.i:                                ; preds = %.loopexit745.i.i, %.loopexit735.i.i
  %indvars.iv1055.i.i = phi i64 [ %indvars.iv.next1056.i.i, %.loopexit735.i.i ], [ 0, %.loopexit745.i.i ] ; 10 uses
  %indvars.iv1029.in.i.i = phi i64 [ %indvars.iv1029.i.i, %.loopexit735.i.i ], [ %i.oy, %.loopexit745.i.i ] ; 10 uses
  %i.aqz = add i64 %indvars.iv1055.i.i, %i.b      ; 7 uses
  %i.ara = trunc i64 %indvars.iv1055.i.i to i32
  %i.arb = add i32 %i.iz, %i.ara                  ; 3 uses
  %i.arc = zext i32 %i.arb to i64
  %i.ard = add nuw nsw i64 %i.arc, 1              ; 5 uses
  %i.are = add i64 %indvars.iv1055.i.i, %i.b      ; 7 uses
  %i.arf = mul nsw i64 %indvars.iv1055.i.i, -16   ; 2 uses
  %i.arg = getelementptr i8, ptr %i.in, i64 %i.arf
  %scevgep1069 = getelementptr i8, ptr %i.arg, i64 8
  %i.arh = mul nsw i64 %indvars.iv1055.i.i, -8    ; 2 uses
  %scevgep1072 = getelementptr i8, ptr %i.pk, i64 %i.arh
  %i.ari = trunc i64 %indvars.iv1055.i.i to i32
  %i.arj = add i32 %i.pl, %i.ari
  %i.ark = zext i32 %i.arj to i64
  %i.arl = shl nuw nsw i64 %i.ark, 3
  %scevgep1075 = getelementptr i8, ptr %scevgep1072, i64 %i.arl
  %scevgep1076 = getelementptr i8, ptr %i.in, i64 %i.arf
  %scevgep1077 = getelementptr i8, ptr %i.pm, i64 %i.arh
  %i.arm = add i64 %indvars.iv1055.i.i, %i.b      ; 7 uses
  %indvars.iv1029.i.i = add nsw i64 %indvars.iv1029.in.i.i, -1 ; 23 uses
  %i.arn = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv1029.i.i
  %i.aro = load double, ptr %i.arn, align 8, !tbaa !12 ; 2 uses
  %i.arp = icmp slt i64 %indvars.iv1029.in.i.i, %i.oy ; 2 uses
  br i1 %i.arp, label %.lr.ph841.i.i, label %.loopexit741.i.i

.lr.ph841.i.i:                                    ; preds = %.preheader742.i.i
  %i.arq = shl nuw nsw i64 %indvars.iv1055.i.i, 3
  %i.arr = add nuw nsw i64 %i.arq, 34359738360
  %i.ars = and i64 %i.arr, 34359738360
  %i.art = add nuw nsw i64 %i.ars, 8
  %i.aru = trunc nuw nsw i64 %indvars.iv1055.i.i to i32
  %i.arv = mul i32 %i.aru, %i.iq
  %i.arw = add i32 %i.pd, %i.arv
  %i.arx = sext i32 %i.arw to i64
  %i.ary = shl nsw i64 %i.arx, 3
  %scevgep1023.i.i = getelementptr i8, ptr %i.in, i64 %i.ary
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1023.i.i, i8 0, i64 %i.art, i1 false), !tbaa !12
  br label %.loopexit741.i.i

.loopexit741.i.i:                                 ; preds = %.lr.ph841.i.i, %.preheader742.i.i
  %i.arz = fcmp reassoc nsz arcp contract afn une double %i.aro, 0.000000e+00
  br i1 %i.arz, label %bb.s, label %.preheader738.i.i

.preheader738.i.i:                                ; preds = %.loopexit741.i.i
  %.not1125.i.i = icmp sgt i64 %indvars.iv1029.in.i.i, %i.b
  br i1 %.not1125.i.i, label %.loopexit735.i.i, label %iter.check1186

iter.check1186:                                   ; preds = %.preheader738.i.i
  %invariant.gep1208.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1029.i.i ; 11 uses
  %min.iters.check1174 = icmp ugt i64 %i.aqz, 3
  %or.cond1937 = and i1 %min.iters.check1174, %ident.check1172.not
  br i1 %or.cond1937, label %vector.main.loop.iter.check1175, label %.lr.ph843.i.i.preheader

vector.main.loop.iter.check1175:                  ; preds = %iter.check1186
  %min.iters.check1176 = icmp ult i64 %i.aqz, 16
  br i1 %min.iters.check1176, label %vec.epilog.ph1190, label %vector.ph1177

vector.ph1177:                                    ; preds = %vector.main.loop.iter.check1175
  %i.asa = and i64 %i.aqz, 12
  %n.vec1178 = and i64 %i.aqz, -16                ; 4 uses
  %i.asb = add i64 %indvars.iv1029.i.i, %n.vec1178
  %i.asc = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %indvars.iv1029.i.i
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %vector.ph1177
  %index1180 = phi i64 [ 0, %vector.ph1177 ], [ %index.next1181, %vector.body1179 ] ; 2 uses
  %i.asd = getelementptr [8 x i8], ptr %i.asc, i64 %index1180 ; 4 uses
  %i.ase = getelementptr i8, ptr %i.asd, i64 32
  %i.asf = getelementptr i8, ptr %i.asd, i64 64
  %i.asg = getelementptr i8, ptr %i.asd, i64 96
  store <4 x double> zeroinitializer, ptr %i.asd, align 8, !tbaa !12
  store <4 x double> zeroinitializer, ptr %i.ase, align 8, !tbaa !12
  store <4 x double> zeroinitializer, ptr %i.asf, align 8, !tbaa !12
  store <4 x double> zeroinitializer, ptr %i.asg, align 8, !tbaa !12
  %index.next1181 = add nuw i64 %index1180, 16    ; 2 uses
  %i.ash = icmp eq i64 %index.next1181, %n.vec1178
  br i1 %i.ash, label %middle.block1182, label %vector.body1179, !llvm.loop !89

middle.block1182:                                 ; preds = %vector.body1179
  %cmp.n1183 = icmp eq i64 %i.aqz, %n.vec1178
  br i1 %cmp.n1183, label %.loopexit735.i.i, label %vec.epilog.iter.check1188

vec.epilog.iter.check1188:                        ; preds = %middle.block1182
  %min.epilog.iters.check1189 = icmp eq i64 %i.asa, 0
  br i1 %min.epilog.iters.check1189, label %.lr.ph843.i.i.preheader, label %vec.epilog.ph1190, !prof !22

vec.epilog.ph1190:                                ; preds = %vector.main.loop.iter.check1175, %vec.epilog.iter.check1188
  %vec.epilog.resume.val1184 = phi i64 [ %n.vec1178, %vec.epilog.iter.check1188 ], [ 0, %vector.main.loop.iter.check1175 ]
  %n.vec1191 = and i64 %i.aqz, -4                 ; 3 uses
  %i.asi = add i64 %indvars.iv1029.i.i, %n.vec1191
  %i.asj = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %indvars.iv1029.i.i
  br label %vec.epilog.vector.body1192

vec.epilog.vector.body1192:                       ; preds = %vec.epilog.vector.body1192, %vec.epilog.ph1190
  %index1193 = phi i64 [ %vec.epilog.resume.val1184, %vec.epilog.ph1190 ], [ %index.next1194, %vec.epilog.vector.body1192 ] ; 2 uses
  %i.ask = getelementptr [8 x i8], ptr %i.asj, i64 %index1193
  store <4 x double> zeroinitializer, ptr %i.ask, align 8, !tbaa !12
  %index.next1194 = add nuw i64 %index1193, 4     ; 2 uses
  %i.asl = icmp eq i64 %index.next1194, %n.vec1191
  br i1 %i.asl, label %vec.epilog.middle.block1195, label %vec.epilog.vector.body1192, !llvm.loop !90

vec.epilog.middle.block1195:                      ; preds = %vec.epilog.vector.body1192
  %cmp.n1196 = icmp eq i64 %i.aqz, %n.vec1191
  br i1 %cmp.n1196, label %.loopexit735.i.i, label %.lr.ph843.i.i.preheader

.lr.ph843.i.i.preheader:                          ; preds = %iter.check1186, %vec.epilog.iter.check1188, %vec.epilog.middle.block1195
  %indvars.iv1031.i.i.ph = phi i64 [ %indvars.iv1029.i.i, %iter.check1186 ], [ %i.asb, %vec.epilog.iter.check1188 ], [ %i.asi, %vec.epilog.middle.block1195 ] ; 4 uses
  %i.asm = sub i64 %i.b, %indvars.iv1031.i.i.ph
  %xtraiter2099 = and i64 %i.asm, 7               ; 2 uses
  %lcmp.mod2100.not = icmp eq i64 %xtraiter2099, 0
  br i1 %lcmp.mod2100.not, label %.lr.ph843.i.i.prol.loopexit, label %.lr.ph843.i.i.prol

.lr.ph843.i.i.prol:                               ; preds = %.lr.ph843.i.i.preheader, %.lr.ph843.i.i.prol
  %indvars.iv1031.i.i.prol = phi i64 [ %indvars.iv.next1032.i.i.prol, %.lr.ph843.i.i.prol ], [ %indvars.iv1031.i.i.ph, %.lr.ph843.i.i.preheader ] ; 2 uses
  %prol.iter2101 = phi i64 [ %prol.iter2101.next, %.lr.ph843.i.i.prol ], [ 0, %.lr.ph843.i.i.preheader ]
  %i.asn = mul nsw i64 %indvars.iv1031.i.i.prol, %i.ih
  %gep1209.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.asn
  store double 0.000000e+00, ptr %gep1209.i.i.prol, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.prol = add nuw nsw i64 %indvars.iv1031.i.i.prol, 1 ; 2 uses
  %prol.iter2101.next = add i64 %prol.iter2101, 1 ; 2 uses
  %prol.iter2101.cmp.not = icmp eq i64 %prol.iter2101.next, %xtraiter2099
  br i1 %prol.iter2101.cmp.not, label %.lr.ph843.i.i.prol.loopexit, label %.lr.ph843.i.i.prol, !llvm.loop !91

.lr.ph843.i.i.prol.loopexit:                      ; preds = %.lr.ph843.i.i.prol, %.lr.ph843.i.i.preheader
  %indvars.iv1031.i.i.unr = phi i64 [ %indvars.iv1031.i.i.ph, %.lr.ph843.i.i.preheader ], [ %indvars.iv.next1032.i.i.prol, %.lr.ph843.i.i.prol ]
  %i.aso = sub i64 %indvars.iv1031.i.i.ph, %i.b
  %i.asp = icmp ugt i64 %i.aso, -8
  br i1 %i.asp, label %.loopexit735.i.i, label %.lr.ph843.i.i

bb.s:                                             ; preds = %.loopexit741.i.i
  %i.asq = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aro ; 12 uses
  %.not696.i.i = icmp ne i64 %indvars.iv1029.i.i, %i.pb
  %or.cond906.i.i = and i1 %i.arp, %.not696.i.i
  br i1 %or.cond906.i.i, label %.preheader734.lr.ph.i.i, label %.loopexit737.i.i

.preheader734.lr.ph.i.i:                          ; preds = %bb.s
  %i.asr = trunc nuw nsw i64 %indvars.iv1029.i.i to i32
  %i.ass = mul i32 %.0661700.i.i, %i.asr
  %i.ast = sext i32 %i.ass to i64
  %i.asu = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.ast
  %invariant.gep1210.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1029.i.i ; 18 uses
  %min.iters.check1127 = icmp ugt i32 %i.arb, 2
  %or.cond1938 = and i1 %min.iters.check1127, %ident.check1125.not
  %min.iters.check1129 = icmp ult i32 %i.arb, 15
  %i.asv = and i64 %i.ard, 12
  %n.vec1131 = and i64 %i.ard, 8589934576         ; 4 uses
  %i.asw = add i64 %indvars.iv1029.in.i.i, %n.vec1131
  %cmp.n1151 = icmp eq i64 %i.ard, %n.vec1131
  %min.epilog.iters.check1158 = icmp eq i64 %i.asv, 0
  %n.vec1160 = and i64 %i.ard, 8589934588         ; 3 uses
  %i.asx = add i64 %indvars.iv1029.in.i.i, %n.vec1160
  %cmp.n1168 = icmp eq i64 %i.ard, %n.vec1160
  %min.iters.check1082 = icmp ugt i64 %i.are, 3
  %or.cond1939 = and i1 %min.iters.check1082, %ident.check1067.not
  %bound01078 = icmp ult ptr %scevgep1069, %scevgep1077
  %bound11079 = icmp ult ptr %scevgep1076, %scevgep1075
  %found.conflict1080 = and i1 %bound01078, %bound11079
  %min.iters.check1084 = icmp ult i64 %i.are, 16
  %i.asy = and i64 %i.are, 12
  %n.vec1086 = and i64 %i.are, -16                ; 4 uses
  %i.asz = add i64 %indvars.iv1029.i.i, %n.vec1086
  %cmp.n1103 = icmp eq i64 %i.are, %n.vec1086
  %min.epilog.iters.check1109 = icmp eq i64 %i.asy, 0
  %n.vec1111 = and i64 %i.are, -4                 ; 3 uses
  %i.ata = add i64 %indvars.iv1029.i.i, %n.vec1111
  %cmp.n1122 = icmp eq i64 %i.are, %n.vec1111
  br label %iter.check1155

iter.check1155:                                   ; preds = %._crit_edge852.i.loopexit.i, %.preheader734.lr.ph.i.i
  %indvars.iv1045.i.i = phi i64 [ %indvars.iv1029.in.i.i, %.preheader734.lr.ph.i.i ], [ %indvars.iv.next1046.i.i, %._crit_edge852.i.loopexit.i ] ; 2 uses
  %invariant.gep1212.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1045.i.i ; 18 uses
  br i1 %or.cond1938, label %vector.main.loop.iter.check1128, label %.lr.ph846.i.i.preheader

vector.main.loop.iter.check1128:                  ; preds = %iter.check1155
  br i1 %min.iters.check1129, label %vec.epilog.ph1159, label %vector.body1132

vector.body1132:                                  ; preds = %vector.main.loop.iter.check1128, %vector.body1132
  %index1133 = phi i64 [ %index.next1146, %vector.body1132 ], [ 0, %vector.main.loop.iter.check1128 ] ; 2 uses
  %vec.phi1134 = phi <4 x double> [ %i.ato, %vector.body1132 ], [ zeroinitializer, %vector.main.loop.iter.check1128 ]
  %vec.phi1135 = phi <4 x double> [ %i.atp, %vector.body1132 ], [ zeroinitializer, %vector.main.loop.iter.check1128 ]
  %vec.phi1136 = phi <4 x double> [ %i.atq, %vector.body1132 ], [ zeroinitializer, %vector.main.loop.iter.check1128 ]
  %vec.phi1137 = phi <4 x double> [ %i.atr, %vector.body1132 ], [ zeroinitializer, %vector.main.loop.iter.check1128 ]
  %i.atb = add i64 %indvars.iv1029.in.i.i, %index1133 ; 2 uses
  %i.atc = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.atb ; 4 uses
  %i.atd = getelementptr i8, ptr %i.atc, i64 32
  %i.ate = getelementptr i8, ptr %i.atc, i64 64
  %i.atf = getelementptr i8, ptr %i.atc, i64 96
  %wide.load1138 = load <4 x double>, ptr %i.atc, align 8, !tbaa !12
  %wide.load1139 = load <4 x double>, ptr %i.atd, align 8, !tbaa !12
  %wide.load1140 = load <4 x double>, ptr %i.ate, align 8, !tbaa !12
  %wide.load1141 = load <4 x double>, ptr %i.atf, align 8, !tbaa !12
  %i.atg = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.atb ; 4 uses
  %i.ath = getelementptr i8, ptr %i.atg, i64 32
  %i.ati = getelementptr i8, ptr %i.atg, i64 64
  %i.atj = getelementptr i8, ptr %i.atg, i64 96
  %wide.load1142 = load <4 x double>, ptr %i.atg, align 8, !tbaa !12
  %wide.load1143 = load <4 x double>, ptr %i.ath, align 8, !tbaa !12
  %wide.load1144 = load <4 x double>, ptr %i.ati, align 8, !tbaa !12
  %wide.load1145 = load <4 x double>, ptr %i.atj, align 8, !tbaa !12
  %i.atk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1142, %wide.load1138
  %i.atl = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1143, %wide.load1139
  %i.atm = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1144, %wide.load1140
  %i.atn = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1145, %wide.load1141
  %i.ato = fadd reassoc nsz arcp contract afn <4 x double> %i.atk, %vec.phi1134 ; 2 uses
  %i.atp = fadd reassoc nsz arcp contract afn <4 x double> %i.atl, %vec.phi1135 ; 2 uses
  %i.atq = fadd reassoc nsz arcp contract afn <4 x double> %i.atm, %vec.phi1136 ; 2 uses
  %i.atr = fadd reassoc nsz arcp contract afn <4 x double> %i.atn, %vec.phi1137 ; 2 uses
  %index.next1146 = add nuw i64 %index1133, 16    ; 2 uses
  %i.ats = icmp eq i64 %index.next1146, %n.vec1131
  br i1 %i.ats, label %middle.block1147, label %vector.body1132, !llvm.loop !92

middle.block1147:                                 ; preds = %vector.body1132
  %bin.rdx1148 = fadd reassoc nsz arcp contract afn <4 x double> %i.atp, %i.ato
  %bin.rdx1149 = fadd reassoc nsz arcp contract afn <4 x double> %i.atq, %bin.rdx1148
  %bin.rdx1150 = fadd reassoc nsz arcp contract afn <4 x double> %i.atr, %bin.rdx1149
  %i.att = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1150) ; 3 uses
  br i1 %cmp.n1151, label %iter.check1106, label %vec.epilog.iter.check1157

vec.epilog.iter.check1157:                        ; preds = %middle.block1147
  br i1 %min.epilog.iters.check1158, label %.lr.ph846.i.i.preheader, label %vec.epilog.ph1159, !prof !22

vec.epilog.ph1159:                                ; preds = %vector.main.loop.iter.check1128, %vec.epilog.iter.check1157
  %vec.epilog.resume.val1152 = phi i64 [ %n.vec1131, %vec.epilog.iter.check1157 ], [ 0, %vector.main.loop.iter.check1128 ]
  %bc.merge.rdx1154 = phi double [ %i.att, %vec.epilog.iter.check1157 ], [ 0.000000e+00, %vector.main.loop.iter.check1128 ]
  %i.atu = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1154, i64 0
  br label %vec.epilog.vector.body1161

vec.epilog.vector.body1161:                       ; preds = %vec.epilog.vector.body1161, %vec.epilog.ph1159
  %index1162 = phi i64 [ %vec.epilog.resume.val1152, %vec.epilog.ph1159 ], [ %index.next1166, %vec.epilog.vector.body1161 ] ; 2 uses
  %vec.phi1163 = phi <4 x double> [ %i.atu, %vec.epilog.ph1159 ], [ %i.atz, %vec.epilog.vector.body1161 ]
  %i.atv = add i64 %indvars.iv1029.in.i.i, %index1162 ; 2 uses
  %i.atw = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.atv
  %wide.load1164 = load <4 x double>, ptr %i.atw, align 8, !tbaa !12
  %i.atx = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.atv
  %wide.load1165 = load <4 x double>, ptr %i.atx, align 8, !tbaa !12
  %i.aty = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1165, %wide.load1164
  %i.atz = fadd reassoc nsz arcp contract afn <4 x double> %i.aty, %vec.phi1163 ; 2 uses
  %index.next1166 = add nuw i64 %index1162, 4     ; 2 uses
  %i.aua = icmp eq i64 %index.next1166, %n.vec1160
  br i1 %i.aua, label %vec.epilog.middle.block1167, label %vec.epilog.vector.body1161, !llvm.loop !93

vec.epilog.middle.block1167:                      ; preds = %vec.epilog.vector.body1161
  %i.aub = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.atz) ; 2 uses
  br i1 %cmp.n1168, label %iter.check1106, label %.lr.ph846.i.i.preheader

.lr.ph846.i.i.preheader:                          ; preds = %iter.check1155, %vec.epilog.iter.check1157, %vec.epilog.middle.block1167
  %indvars.iv1036.i.i.ph = phi i64 [ %indvars.iv1029.in.i.i, %iter.check1155 ], [ %i.asw, %vec.epilog.iter.check1157 ], [ %i.asx, %vec.epilog.middle.block1167 ] ; 3 uses
  %.5844.i.i.ph = phi double [ 0.000000e+00, %iter.check1155 ], [ %i.att, %vec.epilog.iter.check1157 ], [ %i.aub, %vec.epilog.middle.block1167 ] ; 2 uses
  %i.auc = trunc i64 %indvars.iv1036.i.i.ph to i32 ; 2 uses
  %i.aud = sub i32 %i.jf, %i.auc
  %i.aue = sub i32 %i.jg, %i.auc
  %xtraiter2102 = and i32 %i.aud, 7               ; 2 uses
  %lcmp.mod2103.not = icmp eq i32 %xtraiter2102, 0
  br i1 %lcmp.mod2103.not, label %.lr.ph846.i.i.prol.loopexit, label %.lr.ph846.i.i.prol

.lr.ph846.i.i.prol:                               ; preds = %.lr.ph846.i.i.preheader, %.lr.ph846.i.i.prol
  %indvars.iv1036.i.i.prol = phi i64 [ %indvars.iv.next1037.i.i.prol, %.lr.ph846.i.i.prol ], [ %indvars.iv1036.i.i.ph, %.lr.ph846.i.i.preheader ] ; 2 uses
  %.5844.i.i.prol = phi double [ %i.auj, %.lr.ph846.i.i.prol ], [ %.5844.i.i.ph, %.lr.ph846.i.i.preheader ]
  %prol.iter2104 = phi i32 [ %prol.iter2104.next, %.lr.ph846.i.i.prol ], [ 0, %.lr.ph846.i.i.preheader ]
  %i.auf = mul nsw i64 %indvars.iv1036.i.i.prol, %i.ih ; 2 uses
  %gep1211.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.auf
  %i.aug = load double, ptr %gep1211.i.i.prol, align 8, !tbaa !12
  %gep1213.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.auf
  %i.auh = load double, ptr %gep1213.i.i.prol, align 8, !tbaa !12
  %i.aui = fmul reassoc nsz arcp contract afn double %i.auh, %i.aug
  %i.auj = fadd reassoc nsz arcp contract afn double %i.aui, %.5844.i.i.prol ; 3 uses
  %indvars.iv.next1037.i.i.prol = add nsw i64 %indvars.iv1036.i.i.prol, 1 ; 2 uses
  %prol.iter2104.next = add i32 %prol.iter2104, 1 ; 2 uses
  %prol.iter2104.cmp.not = icmp eq i32 %prol.iter2104.next, %xtraiter2102
  br i1 %prol.iter2104.cmp.not, label %.lr.ph846.i.i.prol.loopexit, label %.lr.ph846.i.i.prol, !llvm.loop !94

.lr.ph846.i.i.prol.loopexit:                      ; preds = %.lr.ph846.i.i.prol, %.lr.ph846.i.i.preheader
  %.lcssa2003.unr = phi double [ poison, %.lr.ph846.i.i.preheader ], [ %i.auj, %.lr.ph846.i.i.prol ]
  %indvars.iv1036.i.i.unr = phi i64 [ %indvars.iv1036.i.i.ph, %.lr.ph846.i.i.preheader ], [ %indvars.iv.next1037.i.i.prol, %.lr.ph846.i.i.prol ]
  %.5844.i.i.unr = phi double [ %.5844.i.i.ph, %.lr.ph846.i.i.preheader ], [ %i.auj, %.lr.ph846.i.i.prol ]
  %i.auk = icmp ult i32 %i.aue, 7
  br i1 %i.auk, label %iter.check1106, label %.lr.ph846.i.i

iter.check1106:                                   ; preds = %.lr.ph846.i.i.prol.loopexit, %.lr.ph846.i.i, %vec.epilog.middle.block1167, %middle.block1147
  %.lcssa786 = phi double [ %i.aub, %vec.epilog.middle.block1167 ], [ %i.att, %middle.block1147 ], [ %.lcssa2003.unr, %.lr.ph846.i.i.prol.loopexit ], [ %i.axw, %.lr.ph846.i.i ]
  %i.aul = load double, ptr %i.asu, align 8, !tbaa !12 ; 7 uses
  %i.aum = fmul reassoc nsz arcp contract afn double %.lcssa786, %i.asq ; 7 uses
  %or.cond1939.not = xor i1 %or.cond1939, true
  %brmerge2250 = select i1 %or.cond1939.not, i1 true, i1 %found.conflict1080
  br i1 %brmerge2250, label %vec.epilog.scalar.ph1107.preheader, label %vector.main.loop.iter.check1083

vector.main.loop.iter.check1083:                  ; preds = %iter.check1106
  br i1 %min.iters.check1084, label %vec.epilog.ph1110, label %vector.ph1085

vector.ph1085:                                    ; preds = %vector.main.loop.iter.check1083
  %broadcast.splatinsert1087 = insertelement <4 x double> poison, double %i.aul, i64 0
  %broadcast.splat1088 = shufflevector <4 x double> %broadcast.splatinsert1087, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1089 = insertelement <4 x double> poison, double %i.aum, i64 0
  %broadcast.splat1090 = shufflevector <4 x double> %broadcast.splatinsert1089, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aun = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1088
  %i.auo = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1088
  %i.aup = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1088
  %i.auq = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1088
  br label %vector.body1091

vector.body1091:                                  ; preds = %vector.body1091, %vector.ph1085
  %index1092 = phi i64 [ 0, %vector.ph1085 ], [ %index.next1101, %vector.body1091 ] ; 2 uses
  %i.aur = add nuw i64 %indvars.iv1029.i.i, %index1092 ; 2 uses
  %i.aus = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.aur ; 4 uses
  %i.aut = getelementptr i8, ptr %i.aus, i64 32
  %i.auu = getelementptr i8, ptr %i.aus, i64 64
  %i.auv = getelementptr i8, ptr %i.aus, i64 96
  %wide.load1093 = load <4 x double>, ptr %i.aus, align 8, !tbaa !12, !alias.scope !95
  %wide.load1094 = load <4 x double>, ptr %i.aut, align 8, !tbaa !12, !alias.scope !95
  %wide.load1095 = load <4 x double>, ptr %i.auu, align 8, !tbaa !12, !alias.scope !95
  %wide.load1096 = load <4 x double>, ptr %i.auv, align 8, !tbaa !12, !alias.scope !95
  %i.auw = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat1090, %wide.load1093
  %i.aux = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat1090, %wide.load1094
  %i.auy = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat1090, %wide.load1095
  %i.auz = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat1090, %wide.load1096
  %i.ava = fmul reassoc nsz arcp contract afn <4 x double> %i.auw, %i.aun
  %i.avb = fmul reassoc nsz arcp contract afn <4 x double> %i.aux, %i.auo
  %i.avc = fmul reassoc nsz arcp contract afn <4 x double> %i.auy, %i.aup
  %i.avd = fmul reassoc nsz arcp contract afn <4 x double> %i.auz, %i.auq
  %i.ave = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.aur ; 5 uses
  %i.avf = getelementptr i8, ptr %i.ave, i64 32   ; 2 uses
  %i.avg = getelementptr i8, ptr %i.ave, i64 64   ; 2 uses
  %i.avh = getelementptr i8, ptr %i.ave, i64 96   ; 2 uses
  %wide.load1097 = load <4 x double>, ptr %i.ave, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %wide.load1098 = load <4 x double>, ptr %i.avf, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %wide.load1099 = load <4 x double>, ptr %i.avg, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %wide.load1100 = load <4 x double>, ptr %i.avh, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %i.avi = fadd reassoc nsz arcp contract afn <4 x double> %i.ava, %wide.load1097
  %i.avj = fadd reassoc nsz arcp contract afn <4 x double> %i.avb, %wide.load1098
  %i.avk = fadd reassoc nsz arcp contract afn <4 x double> %i.avc, %wide.load1099
  %i.avl = fadd reassoc nsz arcp contract afn <4 x double> %i.avd, %wide.load1100
  store <4 x double> %i.avi, ptr %i.ave, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  store <4 x double> %i.avj, ptr %i.avf, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  store <4 x double> %i.avk, ptr %i.avg, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  store <4 x double> %i.avl, ptr %i.avh, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %index.next1101 = add nuw i64 %index1092, 16    ; 2 uses
  %i.avm = icmp eq i64 %index.next1101, %n.vec1086
  br i1 %i.avm, label %middle.block1102, label %vector.body1091, !llvm.loop !100

middle.block1102:                                 ; preds = %vector.body1091
  br i1 %cmp.n1103, label %._crit_edge852.i.loopexit.i, label %vec.epilog.iter.check1108

vec.epilog.iter.check1108:                        ; preds = %middle.block1102
  br i1 %min.epilog.iters.check1109, label %vec.epilog.scalar.ph1107.preheader, label %vec.epilog.ph1110, !prof !22

vec.epilog.ph1110:                                ; preds = %vector.main.loop.iter.check1083, %vec.epilog.iter.check1108
  %vec.epilog.resume.val1104 = phi i64 [ %n.vec1086, %vec.epilog.iter.check1108 ], [ 0, %vector.main.loop.iter.check1083 ]
  %broadcast.splatinsert1112 = insertelement <4 x double> poison, double %i.aul, i64 0
  %broadcast.splat1113 = shufflevector <4 x double> %broadcast.splatinsert1112, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1114 = insertelement <4 x double> poison, double %i.aum, i64 0
  %broadcast.splat1115 = shufflevector <4 x double> %broadcast.splatinsert1114, <4 x double> poison, <4 x i32> zeroinitializer
  %i.avn = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1113
  br label %vec.epilog.vector.body1116

vec.epilog.vector.body1116:                       ; preds = %vec.epilog.vector.body1116, %vec.epilog.ph1110
  %index1117 = phi i64 [ %vec.epilog.resume.val1104, %vec.epilog.ph1110 ], [ %index.next1120, %vec.epilog.vector.body1116 ] ; 2 uses
  %i.avo = add nuw i64 %indvars.iv1029.i.i, %index1117 ; 2 uses
  %i.avp = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.avo
  %wide.load1118 = load <4 x double>, ptr %i.avp, align 8, !tbaa !12, !alias.scope !95
  %i.avq = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat1115, %wide.load1118
  %i.avr = fmul reassoc nsz arcp contract afn <4 x double> %i.avq, %i.avn
  %i.avs = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.avo ; 2 uses
  %wide.load1119 = load <4 x double>, ptr %i.avs, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %i.avt = fadd reassoc nsz arcp contract afn <4 x double> %i.avr, %wide.load1119
  store <4 x double> %i.avt, ptr %i.avs, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %index.next1120 = add nuw i64 %index1117, 4     ; 2 uses
  %i.avu = icmp eq i64 %index.next1120, %n.vec1111
  br i1 %i.avu, label %vec.epilog.middle.block1121, label %vec.epilog.vector.body1116, !llvm.loop !101

vec.epilog.middle.block1121:                      ; preds = %vec.epilog.vector.body1116
  br i1 %cmp.n1122, label %._crit_edge852.i.loopexit.i, label %vec.epilog.scalar.ph1107.preheader

vec.epilog.scalar.ph1107.preheader:               ; preds = %iter.check1106, %vec.epilog.iter.check1108, %vec.epilog.middle.block1121
  %indvars.iv1040.i.i.ph = phi i64 [ %indvars.iv1029.i.i, %iter.check1106 ], [ %i.ata, %vec.epilog.middle.block1121 ], [ %i.asz, %vec.epilog.iter.check1108 ] ; 4 uses
  %i.avv = sub i64 %i.b, %indvars.iv1040.i.i.ph
  %xtraiter2105 = and i64 %i.avv, 3               ; 2 uses
  %lcmp.mod2106.not = icmp eq i64 %xtraiter2105, 0
  br i1 %lcmp.mod2106.not, label %vec.epilog.scalar.ph1107.prol.loopexit, label %vec.epilog.scalar.ph1107.prol.preheader

vec.epilog.scalar.ph1107.prol.preheader:          ; preds = %vec.epilog.scalar.ph1107.preheader
  %i.avw = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aul
  br label %vec.epilog.scalar.ph1107.prol

vec.epilog.scalar.ph1107.prol:                    ; preds = %vec.epilog.scalar.ph1107.prol, %vec.epilog.scalar.ph1107.prol.preheader
  %indvars.iv1040.i.i.prol = phi i64 [ %indvars.iv.next1041.i.i.prol, %vec.epilog.scalar.ph1107.prol ], [ %indvars.iv1040.i.i.ph, %vec.epilog.scalar.ph1107.prol.preheader ] ; 2 uses
  %prol.iter2107 = phi i64 [ %prol.iter2107.next, %vec.epilog.scalar.ph1107.prol ], [ 0, %vec.epilog.scalar.ph1107.prol.preheader ]
  %i.avx = mul nsw i64 %indvars.iv1040.i.i.prol, %i.ih ; 2 uses
  %gep1215.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.avx
  %i.avy = load double, ptr %gep1215.i.i.prol, align 8, !tbaa !12
  %i.avz = fmul reassoc nsz arcp contract afn double %i.aum, %i.avy
  %i.awa = fmul reassoc nsz arcp contract afn double %i.avz, %i.avw
  %gep1217.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.avx ; 2 uses
  %i.awb = load double, ptr %gep1217.i.i.prol, align 8, !tbaa !12
  %i.awc = fadd reassoc nsz arcp contract afn double %i.awa, %i.awb
  store double %i.awc, ptr %gep1217.i.i.prol, align 8, !tbaa !12
  %indvars.iv.next1041.i.i.prol = add nuw nsw i64 %indvars.iv1040.i.i.prol, 1 ; 2 uses
  %prol.iter2107.next = add i64 %prol.iter2107, 1 ; 2 uses
  %prol.iter2107.cmp.not = icmp eq i64 %prol.iter2107.next, %xtraiter2105
  br i1 %prol.iter2107.cmp.not, label %vec.epilog.scalar.ph1107.prol.loopexit, label %vec.epilog.scalar.ph1107.prol, !llvm.loop !102

vec.epilog.scalar.ph1107.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1107.prol, %vec.epilog.scalar.ph1107.preheader
  %indvars.iv1040.i.i.unr = phi i64 [ %indvars.iv1040.i.i.ph, %vec.epilog.scalar.ph1107.preheader ], [ %indvars.iv.next1041.i.i.prol, %vec.epilog.scalar.ph1107.prol ]
  %i.awd = sub i64 %indvars.iv1040.i.i.ph, %i.b
  %i.awe = icmp ugt i64 %i.awd, -4
  br i1 %i.awe, label %._crit_edge852.i.loopexit.i, label %vec.epilog.scalar.ph1107.preheader.new

vec.epilog.scalar.ph1107.preheader.new:           ; preds = %vec.epilog.scalar.ph1107.prol.loopexit
  %i.awf = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aul
  %i.awg = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aul
  %i.awh = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aul
  %i.awi = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aul
  br label %vec.epilog.scalar.ph1107

.lr.ph846.i.i:                                    ; preds = %.lr.ph846.i.i.prol.loopexit, %.lr.ph846.i.i
  %indvars.iv1036.i.i = phi i64 [ %indvars.iv.next1037.i.i.7, %.lr.ph846.i.i ], [ %indvars.iv1036.i.i.unr, %.lr.ph846.i.i.prol.loopexit ] ; 9 uses
  %.5844.i.i = phi double [ %i.axw, %.lr.ph846.i.i ], [ %.5844.i.i.unr, %.lr.ph846.i.i.prol.loopexit ]
  %i.awj = mul nsw i64 %indvars.iv1036.i.i, %i.ih ; 2 uses
  %gep1211.i.i = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.awj
  %i.awk = load double, ptr %gep1211.i.i, align 8, !tbaa !12
  %gep1213.i.i = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.awj
  %i.awl = load double, ptr %gep1213.i.i, align 8, !tbaa !12
  %i.awm = fmul reassoc nsz arcp contract afn double %i.awl, %i.awk
  %i.awn = fadd reassoc nsz arcp contract afn double %i.awm, %.5844.i.i
  %indvars.iv.next1037.i.i = add nsw i64 %indvars.iv1036.i.i, 1
  %i.awo = mul nsw i64 %indvars.iv.next1037.i.i, %i.ih ; 2 uses
  %gep1211.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.awo
  %i.awp = load double, ptr %gep1211.i.i.1, align 8, !tbaa !12
  %gep1213.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.awo
  %i.awq = load double, ptr %gep1213.i.i.1, align 8, !tbaa !12
  %i.awr = fmul reassoc nsz arcp contract afn double %i.awq, %i.awp
  %i.aws = fadd reassoc nsz arcp contract afn double %i.awr, %i.awn
  %indvars.iv.next1037.i.i.1 = add nsw i64 %indvars.iv1036.i.i, 2
  %i.awt = mul nsw i64 %indvars.iv.next1037.i.i.1, %i.ih ; 2 uses
  %gep1211.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.awt
  %i.awu = load double, ptr %gep1211.i.i.2, align 8, !tbaa !12
  %gep1213.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.awt
  %i.awv = load double, ptr %gep1213.i.i.2, align 8, !tbaa !12
  %i.aww = fmul reassoc nsz arcp contract afn double %i.awv, %i.awu
  %i.awx = fadd reassoc nsz arcp contract afn double %i.aww, %i.aws
  %indvars.iv.next1037.i.i.2 = add nsw i64 %indvars.iv1036.i.i, 3
  %i.awy = mul nsw i64 %indvars.iv.next1037.i.i.2, %i.ih ; 2 uses
  %gep1211.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.awy
  %i.awz = load double, ptr %gep1211.i.i.3, align 8, !tbaa !12
  %gep1213.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.awy
  %i.axa = load double, ptr %gep1213.i.i.3, align 8, !tbaa !12
  %i.axb = fmul reassoc nsz arcp contract afn double %i.axa, %i.awz
  %i.axc = fadd reassoc nsz arcp contract afn double %i.axb, %i.awx
  %indvars.iv.next1037.i.i.3 = add nsw i64 %indvars.iv1036.i.i, 4
  %i.axd = mul nsw i64 %indvars.iv.next1037.i.i.3, %i.ih ; 2 uses
  %gep1211.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.axd
  %i.axe = load double, ptr %gep1211.i.i.4, align 8, !tbaa !12
  %gep1213.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.axd
  %i.axf = load double, ptr %gep1213.i.i.4, align 8, !tbaa !12
  %i.axg = fmul reassoc nsz arcp contract afn double %i.axf, %i.axe
  %i.axh = fadd reassoc nsz arcp contract afn double %i.axg, %i.axc
  %indvars.iv.next1037.i.i.4 = add nsw i64 %indvars.iv1036.i.i, 5
  %i.axi = mul nsw i64 %indvars.iv.next1037.i.i.4, %i.ih ; 2 uses
  %gep1211.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.axi
  %i.axj = load double, ptr %gep1211.i.i.5, align 8, !tbaa !12
  %gep1213.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.axi
  %i.axk = load double, ptr %gep1213.i.i.5, align 8, !tbaa !12
  %i.axl = fmul reassoc nsz arcp contract afn double %i.axk, %i.axj
  %i.axm = fadd reassoc nsz arcp contract afn double %i.axl, %i.axh
  %indvars.iv.next1037.i.i.5 = add nsw i64 %indvars.iv1036.i.i, 6
  %i.axn = mul nsw i64 %indvars.iv.next1037.i.i.5, %i.ih ; 2 uses
  %gep1211.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.axn
  %i.axo = load double, ptr %gep1211.i.i.6, align 8, !tbaa !12
  %gep1213.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.axn
  %i.axp = load double, ptr %gep1213.i.i.6, align 8, !tbaa !12
  %i.axq = fmul reassoc nsz arcp contract afn double %i.axp, %i.axo
  %i.axr = fadd reassoc nsz arcp contract afn double %i.axq, %i.axm
  %indvars.iv.next1037.i.i.6 = add nsw i64 %indvars.iv1036.i.i, 7
  %i.axs = mul nsw i64 %indvars.iv.next1037.i.i.6, %i.ih ; 2 uses
  %gep1211.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.axs
  %i.axt = load double, ptr %gep1211.i.i.7, align 8, !tbaa !12
  %gep1213.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.axs
  %i.axu = load double, ptr %gep1213.i.i.7, align 8, !tbaa !12
  %i.axv = fmul reassoc nsz arcp contract afn double %i.axu, %i.axt
  %i.axw = fadd reassoc nsz arcp contract afn double %i.axv, %i.axr ; 2 uses
  %indvars.iv.next1037.i.i.7 = add nsw i64 %indvars.iv1036.i.i, 8 ; 2 uses
  %lftr.wideiv.i.i.7 = trunc i64 %indvars.iv.next1037.i.i.7 to i32
  %exitcond1039.not.i.i.7 = icmp eq i32 %i.a, %lftr.wideiv.i.i.7
  br i1 %exitcond1039.not.i.i.7, label %iter.check1106, label %.lr.ph846.i.i, !llvm.loop !103

._crit_edge852.i.loopexit.i:                      ; preds = %vec.epilog.scalar.ph1107.prol.loopexit, %vec.epilog.scalar.ph1107, %vec.epilog.middle.block1121, %middle.block1102
  %indvars.iv.next1046.i.i = add nuw nsw i64 %indvars.iv1045.i.i, 1 ; 2 uses
  %lftr.wideiv1048.i.i = trunc i64 %indvars.iv.next1046.i.i to i32
  %exitcond1049.not.i.i = icmp eq i32 %i.ox, %lftr.wideiv1048.i.i
  br i1 %exitcond1049.not.i.i, label %.loopexit737.i.i, label %iter.check1155

vec.epilog.scalar.ph1107:                         ; preds = %vec.epilog.scalar.ph1107, %vec.epilog.scalar.ph1107.preheader.new
  %indvars.iv1040.i.i = phi i64 [ %indvars.iv1040.i.i.unr, %vec.epilog.scalar.ph1107.preheader.new ], [ %indvars.iv.next1041.i.i.3, %vec.epilog.scalar.ph1107 ] ; 5 uses
  %i.axx = mul nsw i64 %indvars.iv1040.i.i, %i.ih ; 2 uses
  %gep1215.i.i = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.axx
  %i.axy = load double, ptr %gep1215.i.i, align 8, !tbaa !12
  %i.axz = fmul reassoc nsz arcp contract afn double %i.aum, %i.axy
  %i.aya = fmul reassoc nsz arcp contract afn double %i.axz, %i.awf
  %gep1217.i.i = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.axx ; 2 uses
  %i.ayb = load double, ptr %gep1217.i.i, align 8, !tbaa !12
  %i.ayc = fadd reassoc nsz arcp contract afn double %i.aya, %i.ayb
  store double %i.ayc, ptr %gep1217.i.i, align 8, !tbaa !12
  %indvars.iv.next1041.i.i = add nuw nsw i64 %indvars.iv1040.i.i, 1
  %i.ayd = mul nsw i64 %indvars.iv.next1041.i.i, %i.ih ; 2 uses
  %gep1215.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.ayd
  %i.aye = load double, ptr %gep1215.i.i.1, align 8, !tbaa !12
  %i.ayf = fmul reassoc nsz arcp contract afn double %i.aum, %i.aye
  %i.ayg = fmul reassoc nsz arcp contract afn double %i.ayf, %i.awg
  %gep1217.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.ayd ; 2 uses
  %i.ayh = load double, ptr %gep1217.i.i.1, align 8, !tbaa !12
  %i.ayi = fadd reassoc nsz arcp contract afn double %i.ayg, %i.ayh
  store double %i.ayi, ptr %gep1217.i.i.1, align 8, !tbaa !12
  %indvars.iv.next1041.i.i.1 = add nuw nsw i64 %indvars.iv1040.i.i, 2
  %i.ayj = mul nsw i64 %indvars.iv.next1041.i.i.1, %i.ih ; 2 uses
  %gep1215.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.ayj
  %i.ayk = load double, ptr %gep1215.i.i.2, align 8, !tbaa !12
  %i.ayl = fmul reassoc nsz arcp contract afn double %i.aum, %i.ayk
  %i.aym = fmul reassoc nsz arcp contract afn double %i.ayl, %i.awh
  %gep1217.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.ayj ; 2 uses
  %i.ayn = load double, ptr %gep1217.i.i.2, align 8, !tbaa !12
  %i.ayo = fadd reassoc nsz arcp contract afn double %i.aym, %i.ayn
  store double %i.ayo, ptr %gep1217.i.i.2, align 8, !tbaa !12
  %indvars.iv.next1041.i.i.2 = add nuw nsw i64 %indvars.iv1040.i.i, 3
  %i.ayp = mul nsw i64 %indvars.iv.next1041.i.i.2, %i.ih ; 2 uses
  %gep1215.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1210.i.i, i64 %i.ayp
  %i.ayq = load double, ptr %gep1215.i.i.3, align 8, !tbaa !12
  %i.ayr = fmul reassoc nsz arcp contract afn double %i.aum, %i.ayq
  %i.ays = fmul reassoc nsz arcp contract afn double %i.ayr, %i.awi
  %gep1217.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1212.i.i, i64 %i.ayp ; 2 uses
  %i.ayt = load double, ptr %gep1217.i.i.3, align 8, !tbaa !12
  %i.ayu = fadd reassoc nsz arcp contract afn double %i.ays, %i.ayt
  store double %i.ayu, ptr %gep1217.i.i.3, align 8, !tbaa !12
  %indvars.iv.next1041.i.i.3 = add nuw nsw i64 %indvars.iv1040.i.i, 4 ; 2 uses
  %exitcond1044.not.i.i.3 = icmp eq i64 %indvars.iv.next1041.i.i.3, %i.b
  br i1 %exitcond1044.not.i.i.3, label %._crit_edge852.i.loopexit.i, label %vec.epilog.scalar.ph1107, !llvm.loop !104

.loopexit737.i.i:                                 ; preds = %._crit_edge852.i.loopexit.i, %bb.s
  %.not1127.i.i = icmp sgt i64 %indvars.iv1029.in.i.i, %i.b
  br i1 %.not1127.i.i, label %.loopexit735.i.i, label %iter.check1051

iter.check1051:                                   ; preds = %.loopexit737.i.i
  %invariant.gep1218.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1029.i.i ; 11 uses
  %min.iters.check1033 = icmp ugt i64 %i.arm, 3
  %or.cond1940 = and i1 %min.iters.check1033, %ident.check1031.not
  br i1 %or.cond1940, label %vector.main.loop.iter.check1034, label %.lr.ph858.i.i.preheader

vector.main.loop.iter.check1034:                  ; preds = %iter.check1051
  %min.iters.check1035 = icmp ult i64 %i.arm, 16
  br i1 %min.iters.check1035, label %vec.epilog.ph1055, label %vector.ph1036

vector.ph1036:                                    ; preds = %vector.main.loop.iter.check1034
  %i.ayv = and i64 %i.arm, 12
  %n.vec1037 = and i64 %i.arm, -16                ; 4 uses
  %i.ayw = add i64 %indvars.iv1029.i.i, %n.vec1037
  %broadcast.splatinsert1038 = insertelement <4 x double> poison, double %i.asq, i64 0
  %broadcast.splat1039 = shufflevector <4 x double> %broadcast.splatinsert1038, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ayx = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %indvars.iv1029.i.i
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.body1040, %vector.ph1036
  %index1041 = phi i64 [ 0, %vector.ph1036 ], [ %index.next1046, %vector.body1040 ] ; 2 uses
  %i.ayy = getelementptr [8 x i8], ptr %i.ayx, i64 %index1041 ; 5 uses
  %i.ayz = getelementptr i8, ptr %i.ayy, i64 32   ; 2 uses
  %i.aza = getelementptr i8, ptr %i.ayy, i64 64   ; 2 uses
  %i.azb = getelementptr i8, ptr %i.ayy, i64 96   ; 2 uses
  %wide.load1042 = load <4 x double>, ptr %i.ayy, align 8, !tbaa !12
  %wide.load1043 = load <4 x double>, ptr %i.ayz, align 8, !tbaa !12
  %wide.load1044 = load <4 x double>, ptr %i.aza, align 8, !tbaa !12
  %wide.load1045 = load <4 x double>, ptr %i.azb, align 8, !tbaa !12
  %i.azc = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1042, %broadcast.splat1039
  %i.azd = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1043, %broadcast.splat1039
  %i.aze = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1044, %broadcast.splat1039
  %i.azf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1045, %broadcast.splat1039
  store <4 x double> %i.azc, ptr %i.ayy, align 8, !tbaa !12
  store <4 x double> %i.azd, ptr %i.ayz, align 8, !tbaa !12
  store <4 x double> %i.aze, ptr %i.aza, align 8, !tbaa !12
  store <4 x double> %i.azf, ptr %i.azb, align 8, !tbaa !12
  %index.next1046 = add nuw i64 %index1041, 16    ; 2 uses
  %i.azg = icmp eq i64 %index.next1046, %n.vec1037
  br i1 %i.azg, label %middle.block1047, label %vector.body1040, !llvm.loop !105

middle.block1047:                                 ; preds = %vector.body1040
  %cmp.n1048 = icmp eq i64 %i.arm, %n.vec1037
  br i1 %cmp.n1048, label %.loopexit735.i.i, label %vec.epilog.iter.check1053

vec.epilog.iter.check1053:                        ; preds = %middle.block1047
  %min.epilog.iters.check1054 = icmp eq i64 %i.ayv, 0
  br i1 %min.epilog.iters.check1054, label %.lr.ph858.i.i.preheader, label %vec.epilog.ph1055, !prof !22

vec.epilog.ph1055:                                ; preds = %vector.main.loop.iter.check1034, %vec.epilog.iter.check1053
  %vec.epilog.resume.val1049 = phi i64 [ %n.vec1037, %vec.epilog.iter.check1053 ], [ 0, %vector.main.loop.iter.check1034 ]
  %n.vec1056 = and i64 %i.arm, -4                 ; 3 uses
  %i.azh = add i64 %indvars.iv1029.i.i, %n.vec1056
  %broadcast.splatinsert1057 = insertelement <4 x double> poison, double %i.asq, i64 0
  %broadcast.splat1058 = shufflevector <4 x double> %broadcast.splatinsert1057, <4 x double> poison, <4 x i32> zeroinitializer
  %i.azi = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %indvars.iv1029.i.i
  br label %vec.epilog.vector.body1059

vec.epilog.vector.body1059:                       ; preds = %vec.epilog.vector.body1059, %vec.epilog.ph1055
  %index1060 = phi i64 [ %vec.epilog.resume.val1049, %vec.epilog.ph1055 ], [ %index.next1062, %vec.epilog.vector.body1059 ] ; 2 uses
  %i.azj = getelementptr [8 x i8], ptr %i.azi, i64 %index1060 ; 2 uses
  %wide.load1061 = load <4 x double>, ptr %i.azj, align 8, !tbaa !12
  %i.azk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1061, %broadcast.splat1058
  store <4 x double> %i.azk, ptr %i.azj, align 8, !tbaa !12
  %index.next1062 = add nuw i64 %index1060, 4     ; 2 uses
  %i.azl = icmp eq i64 %index.next1062, %n.vec1056
  br i1 %i.azl, label %vec.epilog.middle.block1063, label %vec.epilog.vector.body1059, !llvm.loop !106

vec.epilog.middle.block1063:                      ; preds = %vec.epilog.vector.body1059
  %cmp.n1064 = icmp eq i64 %i.arm, %n.vec1056
  br i1 %cmp.n1064, label %.loopexit735.i.i, label %.lr.ph858.i.i.preheader

.lr.ph858.i.i.preheader:                          ; preds = %iter.check1051, %vec.epilog.iter.check1053, %vec.epilog.middle.block1063
  %indvars.iv1050.i.i.ph = phi i64 [ %indvars.iv1029.i.i, %iter.check1051 ], [ %i.ayw, %vec.epilog.iter.check1053 ], [ %i.azh, %vec.epilog.middle.block1063 ] ; 4 uses
  %i.azm = sub i64 %i.b, %indvars.iv1050.i.i.ph
  %xtraiter2108 = and i64 %i.azm, 7               ; 2 uses
  %lcmp.mod2109.not = icmp eq i64 %xtraiter2108, 0
  br i1 %lcmp.mod2109.not, label %.lr.ph858.i.i.prol.loopexit, label %.lr.ph858.i.i.prol

.lr.ph858.i.i.prol:                               ; preds = %.lr.ph858.i.i.preheader, %.lr.ph858.i.i.prol
  %indvars.iv1050.i.i.prol = phi i64 [ %indvars.iv.next1051.i.i.prol, %.lr.ph858.i.i.prol ], [ %indvars.iv1050.i.i.ph, %.lr.ph858.i.i.preheader ] ; 2 uses
  %prol.iter2110 = phi i64 [ %prol.iter2110.next, %.lr.ph858.i.i.prol ], [ 0, %.lr.ph858.i.i.preheader ]
  %i.azn = mul nsw i64 %indvars.iv1050.i.i.prol, %i.ih
  %gep1219.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.azn ; 2 uses
  %i.azo = load double, ptr %gep1219.i.i.prol, align 8, !tbaa !12
  %i.azp = fmul reassoc nsz arcp contract afn double %i.azo, %i.asq
  store double %i.azp, ptr %gep1219.i.i.prol, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.prol = add nuw nsw i64 %indvars.iv1050.i.i.prol, 1 ; 2 uses
  %prol.iter2110.next = add i64 %prol.iter2110, 1 ; 2 uses
  %prol.iter2110.cmp.not = icmp eq i64 %prol.iter2110.next, %xtraiter2108
  br i1 %prol.iter2110.cmp.not, label %.lr.ph858.i.i.prol.loopexit, label %.lr.ph858.i.i.prol, !llvm.loop !107

.lr.ph858.i.i.prol.loopexit:                      ; preds = %.lr.ph858.i.i.prol, %.lr.ph858.i.i.preheader
  %indvars.iv1050.i.i.unr = phi i64 [ %indvars.iv1050.i.i.ph, %.lr.ph858.i.i.preheader ], [ %indvars.iv.next1051.i.i.prol, %.lr.ph858.i.i.prol ]
  %i.azq = sub i64 %indvars.iv1050.i.i.ph, %i.b
  %i.azr = icmp ugt i64 %i.azq, -8
  br i1 %i.azr, label %.loopexit735.i.i, label %.lr.ph858.i.i

.lr.ph858.i.i:                                    ; preds = %.lr.ph858.i.i.prol.loopexit, %.lr.ph858.i.i
  %indvars.iv1050.i.i = phi i64 [ %indvars.iv.next1051.i.i.7, %.lr.ph858.i.i ], [ %indvars.iv1050.i.i.unr, %.lr.ph858.i.i.prol.loopexit ] ; 9 uses
  %i.azs = mul nsw i64 %indvars.iv1050.i.i, %i.ih
  %gep1219.i.i = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.azs ; 2 uses
  %i.azt = load double, ptr %gep1219.i.i, align 8, !tbaa !12
  %i.azu = fmul reassoc nsz arcp contract afn double %i.azt, %i.asq
  store double %i.azu, ptr %gep1219.i.i, align 8, !tbaa !12
  %indvars.iv.next1051.i.i = add nuw nsw i64 %indvars.iv1050.i.i, 1
  %i.azv = mul nsw i64 %indvars.iv.next1051.i.i, %i.ih
  %gep1219.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.azv ; 2 uses
  %i.azw = load double, ptr %gep1219.i.i.1, align 8, !tbaa !12
  %i.azx = fmul reassoc nsz arcp contract afn double %i.azw, %i.asq
  store double %i.azx, ptr %gep1219.i.i.1, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.1 = add nuw nsw i64 %indvars.iv1050.i.i, 2
  %i.azy = mul nsw i64 %indvars.iv.next1051.i.i.1, %i.ih
  %gep1219.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.azy ; 2 uses
  %i.azz = load double, ptr %gep1219.i.i.2, align 8, !tbaa !12
  %i.baa = fmul reassoc nsz arcp contract afn double %i.azz, %i.asq
  store double %i.baa, ptr %gep1219.i.i.2, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.2 = add nuw nsw i64 %indvars.iv1050.i.i, 3
  %i.bab = mul nsw i64 %indvars.iv.next1051.i.i.2, %i.ih
  %gep1219.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.bab ; 2 uses
  %i.bac = load double, ptr %gep1219.i.i.3, align 8, !tbaa !12
  %i.bad = fmul reassoc nsz arcp contract afn double %i.bac, %i.asq
  store double %i.bad, ptr %gep1219.i.i.3, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.3 = add nuw nsw i64 %indvars.iv1050.i.i, 4
  %i.bae = mul nsw i64 %indvars.iv.next1051.i.i.3, %i.ih
  %gep1219.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.bae ; 2 uses
  %i.baf = load double, ptr %gep1219.i.i.4, align 8, !tbaa !12
  %i.bag = fmul reassoc nsz arcp contract afn double %i.baf, %i.asq
  store double %i.bag, ptr %gep1219.i.i.4, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.4 = add nuw nsw i64 %indvars.iv1050.i.i, 5
  %i.bah = mul nsw i64 %indvars.iv.next1051.i.i.4, %i.ih
  %gep1219.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.bah ; 2 uses
  %i.bai = load double, ptr %gep1219.i.i.5, align 8, !tbaa !12
  %i.baj = fmul reassoc nsz arcp contract afn double %i.bai, %i.asq
  store double %i.baj, ptr %gep1219.i.i.5, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.5 = add nuw nsw i64 %indvars.iv1050.i.i, 6
  %i.bak = mul nsw i64 %indvars.iv.next1051.i.i.5, %i.ih
  %gep1219.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.bak ; 2 uses
  %i.bal = load double, ptr %gep1219.i.i.6, align 8, !tbaa !12
  %i.bam = fmul reassoc nsz arcp contract afn double %i.bal, %i.asq
  store double %i.bam, ptr %gep1219.i.i.6, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.6 = add nuw nsw i64 %indvars.iv1050.i.i, 7
  %i.ban = mul nsw i64 %indvars.iv.next1051.i.i.6, %i.ih
  %gep1219.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1218.i.i, i64 %i.ban ; 2 uses
  %i.bao = load double, ptr %gep1219.i.i.7, align 8, !tbaa !12
  %i.bap = fmul reassoc nsz arcp contract afn double %i.bao, %i.asq
  store double %i.bap, ptr %gep1219.i.i.7, align 8, !tbaa !12
  %indvars.iv.next1051.i.i.7 = add nuw nsw i64 %indvars.iv1050.i.i, 8 ; 2 uses
  %exitcond1054.not.i.i.7 = icmp eq i64 %indvars.iv.next1051.i.i.7, %i.b
  br i1 %exitcond1054.not.i.i.7, label %.loopexit735.i.i, label %.lr.ph858.i.i, !llvm.loop !108

.lr.ph843.i.i:                                    ; preds = %.lr.ph843.i.i.prol.loopexit, %.lr.ph843.i.i
  %indvars.iv1031.i.i = phi i64 [ %indvars.iv.next1032.i.i.7, %.lr.ph843.i.i ], [ %indvars.iv1031.i.i.unr, %.lr.ph843.i.i.prol.loopexit ] ; 9 uses
  %i.baq = mul nsw i64 %indvars.iv1031.i.i, %i.ih
  %gep1209.i.i = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.baq
  store double 0.000000e+00, ptr %gep1209.i.i, align 8, !tbaa !12
  %indvars.iv.next1032.i.i = add nuw nsw i64 %indvars.iv1031.i.i, 1
  %i.bar = mul nsw i64 %indvars.iv.next1032.i.i, %i.ih
  %gep1209.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.bar
  store double 0.000000e+00, ptr %gep1209.i.i.1, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.1 = add nuw nsw i64 %indvars.iv1031.i.i, 2
  %i.bas = mul nsw i64 %indvars.iv.next1032.i.i.1, %i.ih
  %gep1209.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.bas
  store double 0.000000e+00, ptr %gep1209.i.i.2, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.2 = add nuw nsw i64 %indvars.iv1031.i.i, 3
  %i.bat = mul nsw i64 %indvars.iv.next1032.i.i.2, %i.ih
  %gep1209.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.bat
  store double 0.000000e+00, ptr %gep1209.i.i.3, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.3 = add nuw nsw i64 %indvars.iv1031.i.i, 4
  %i.bau = mul nsw i64 %indvars.iv.next1032.i.i.3, %i.ih
  %gep1209.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.bau
  store double 0.000000e+00, ptr %gep1209.i.i.4, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.4 = add nuw nsw i64 %indvars.iv1031.i.i, 5
  %i.bav = mul nsw i64 %indvars.iv.next1032.i.i.4, %i.ih
  %gep1209.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.bav
  store double 0.000000e+00, ptr %gep1209.i.i.5, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.5 = add nuw nsw i64 %indvars.iv1031.i.i, 6
  %i.baw = mul nsw i64 %indvars.iv.next1032.i.i.5, %i.ih
  %gep1209.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.baw
  store double 0.000000e+00, ptr %gep1209.i.i.6, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.6 = add nuw nsw i64 %indvars.iv1031.i.i, 7
  %i.bax = mul nsw i64 %indvars.iv.next1032.i.i.6, %i.ih
  %gep1209.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1208.i.i, i64 %i.bax
  store double 0.000000e+00, ptr %gep1209.i.i.7, align 8, !tbaa !12
  %indvars.iv.next1032.i.i.7 = add nuw nsw i64 %indvars.iv1031.i.i, 8 ; 2 uses
  %exitcond1035.not.i.i.7 = icmp eq i64 %indvars.iv.next1032.i.i.7, %i.b
  br i1 %exitcond1035.not.i.i.7, label %.loopexit735.i.i, label %.lr.ph843.i.i, !llvm.loop !109

.loopexit735.i.i:                                 ; preds = %.lr.ph843.i.i.prol.loopexit, %.lr.ph843.i.i, %.lr.ph858.i.i.prol.loopexit, %.lr.ph858.i.i, %middle.block1182, %vec.epilog.middle.block1195, %middle.block1047, %vec.epilog.middle.block1063, %.loopexit737.i.i, %.preheader738.i.i
  %i.bay = trunc nuw nsw i64 %indvars.iv1029.i.i to i32
  %i.baz = mul i32 %.0661700.i.i, %i.bay
  %i.bba = sext i32 %i.baz to i64
  %i.bbb = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.bba ; 2 uses
  %i.bbc = load double, ptr %i.bbb, align 8, !tbaa !12
  %i.bbd = fadd reassoc nsz arcp contract afn double %i.bbc, 1.000000e+00
  store double %i.bbd, ptr %i.bbb, align 8, !tbaa !12
  %indvars.iv.next1056.i.i = add nuw nsw i64 %indvars.iv1055.i.i, 1 ; 2 uses
  %exitcond1061.not.i.i = icmp eq i64 %indvars.iv.next1056.i.i, %wide.trip.count990.i.i
  br i1 %exitcond1061.not.i.i, label %.preheader731.i.i, label %.preheader742.i.i

.preheader731.i.i:                                ; preds = %.loopexit735.i.i, %.thread721.i.i
  %indvar = phi i32 [ %indvar.next, %.thread721.i.i ], [ 0, %.loopexit735.i.i ] ; 2 uses
  %indvars.iv1098.i.i = phi i64 [ %indvars.iv.next1099.i.i, %.thread721.i.i ], [ %i.pe, %.loopexit735.i.i ] ; 12 uses
  %indvars.iv1074.i.i = phi i32 [ %indvars.iv.next1075.i.i, %.thread721.i.i ], [ %i.ox, %.loopexit735.i.i ] ; 2 uses
  %indvars119.i = trunc i64 %indvars.iv1098.i.i to i32 ; 4 uses
  %i.bbe = tail call i32 @llvm.smax.i32(i32 %indvars119.i, i32 1)
  %i.bbf = add nsw i32 %i.bbe, -1                 ; 3 uses
  %i.bbg = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %indvars.iv1098.i.i ; 2 uses
  %i.bbh = icmp eq i64 %indvars.iv1098.i.i, 0     ; 2 uses
  %i.bbi = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv1098.i.i ; 3 uses
  %indvars.iv.next1099.i.i = add nsw i64 %indvars.iv1098.i.i, -1 ; 3 uses
  %i.bbj = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %indvars.iv.next1099.i.i
  %i.bbk = getelementptr inbounds [8 x i8], ptr %i.qr, i64 %indvars.iv.next1099.i.i
  %.pre.i.i = load double, ptr %i.bbg, align 8, !tbaa !12
  %i.bbl = zext nneg i32 %i.bbf to i64
  %i.bbm = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.bbl
  br label %.preheader730.i.i

.preheader730.i.i:                                ; preds = %._crit_edge897.i.i, %.preheader731.i.i
  %i.bbn = phi double [ %.pre.i.i, %.preheader731.i.i ], [ %.0679.lcssa.i.i, %._crit_edge897.i.i ] ; 6 uses
  %.0631900.i.i = phi i32 [ 0, %.preheader731.i.i ], [ %i.bnw, %._crit_edge897.i.i ] ; 2 uses
  %i.bbo = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bbn)
  %i.bbp = fadd reassoc nsz arcp contract afn double %i.bbo, %.0672..i.i
  %i.bbq = fcmp reassoc nsz arcp contract afn oeq double %i.bbp, %.0672..i.i ; 2 uses
  %or.cond706863.i.i = or i1 %i.bbh, %i.bbq
  br i1 %or.cond706863.i.i, label %._crit_edge866.i.i, label %.lr.ph865.i.preheader.i

.lr.ph865.i.preheader.i:                          ; preds = %.preheader730.i.i
  %i.bbr = load double, ptr %i.bbm, align 8, !tbaa !12
  %i.bbs = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bbr)
  %i.bbt = fadd reassoc nsz arcp contract afn double %i.bbs, %.0672..i.i
  %i.bbu = fcmp reassoc nsz arcp contract afn oeq double %i.bbt, %.0672..i.i
  br i1 %i.bbu, label %._crit_edge866.i.i, label %.lr.ph.i

.lr.ph865.i.i:                                    ; preds = %.lr.ph.i
  %i.bbv = zext nneg i32 %i.bcd to i64
  %i.bbw = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.bbv
  %i.bbx = load double, ptr %i.bbw, align 8, !tbaa !12
  %i.bby = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bbx)
  %i.bbz = fadd reassoc nsz arcp contract afn double %i.bby, %.0672..i.i
  %i.bca = fcmp reassoc nsz arcp contract afn oeq double %i.bbz, %.0672..i.i
  br i1 %i.bca, label %._crit_edge866.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph865.i.preheader.i, %.lr.ph865.i.i
  %indvars.iv1064.i75.i = phi i32 [ %i.bcb, %.lr.ph865.i.i ], [ %indvars119.i, %.lr.ph865.i.preheader.i ]
  %i.bcb = add i32 %indvars.iv1064.i75.i, -1      ; 6 uses
  %i.bcc = tail call i32 @llvm.smax.i32(i32 %i.bcb, i32 1)
  %i.bcd = add nsw i32 %i.bcc, -1                 ; 3 uses
  %i.bce = zext nneg i32 %i.bcb to i64            ; 3 uses
  %i.bcf = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %i.bce
  %i.bcg = load double, ptr %i.bcf, align 8, !tbaa !12
  %i.bch = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bcg)
  %i.bci = fadd reassoc nsz arcp contract afn double %i.bch, %.0672..i.i
  %i.bcj = fcmp reassoc nsz arcp contract afn oeq double %i.bci, %.0672..i.i ; 2 uses
  %i.bck = icmp eq i32 %i.bcb, 0
  %or.cond706.i.i = or i1 %i.bck, %i.bcj
  br i1 %or.cond706.i.i, label %._crit_edge866.i.i, label %.lr.ph865.i.i

._crit_edge866.i.i:                               ; preds = %.lr.ph.i, %.lr.ph865.i.i, %.lr.ph865.i.preheader.i, %.preheader730.i.i
  %.lcssa862.i.i = phi i64 [ %indvars.iv1098.i.i, %.preheader730.i.i ], [ %indvars.iv1098.i.i, %.lr.ph865.i.preheader.i ], [ %i.bce, %.lr.ph865.i.i ], [ %i.bce, %.lr.ph.i ] ; 2 uses
  %.2664.lcssa.i.i = phi i32 [ %indvars119.i, %.preheader730.i.i ], [ %indvars119.i, %.lr.ph865.i.preheader.i ], [ %i.bcb, %.lr.ph865.i.i ], [ %i.bcb, %.lr.ph.i ] ; 3 uses
  %.lcssa765.i.i = phi i32 [ %i.bbf, %.preheader730.i.i ], [ %i.bbf, %.lr.ph865.i.preheader.i ], [ %i.bcd, %.lr.ph865.i.i ], [ %i.bcd, %.lr.ph.i ]
  %.lcssa.i.i = phi i1 [ %i.bbq, %.preheader730.i.i ], [ false, %.lr.ph865.i.preheader.i ], [ %i.bcj, %.lr.ph.i ], [ false, %.lr.ph865.i.i ]
  %i.bcl = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %.lcssa862.i.i
  %i.bcm = sext i32 %.2664.lcssa.i.i to i64       ; 7 uses
  %.not880.i.i = icmp slt i64 %indvars.iv1098.i.i, %i.bcm
  %or.cond907.i.i = or i1 %.lcssa.i.i, %.not880.i.i
  br i1 %or.cond907.i.i, label %.loopexit729.i.i, label %.lr.ph884.preheader.i.i

.lr.ph884.preheader.i.i:                          ; preds = %._crit_edge866.i.i
  %i.bcn = zext i32 %.lcssa765.i.i to i64         ; 2 uses
  %invariant.gep1220.i.i = getelementptr [8 x i8], ptr %i.in, i64 %i.bcn ; 5 uses
  %i.bco = shl nuw nsw i64 %i.bcn, 3
  %scevgep1007 = getelementptr i8, ptr %scevgep1006, i64 %i.bco
  %i.bcp = shl nsw i64 %i.bcm, 3
  %scevgep1008 = getelementptr i8, ptr %i.in, i64 %i.bcp
  %i.bcq = add i32 %indvar, %.2664.lcssa.i.i
  %i.bcr = sub i32 %smin1011, %i.bcq
  %i.bcs = zext i32 %i.bcr to i64
  %i.bct = add nsw i64 %i.bcm, %i.bcs
  %i.bcu = shl nsw i64 %i.bct, 3
  %scevgep1012 = getelementptr i8, ptr %scevgep1009, i64 %i.bcu
  %bound0 = icmp ult ptr %invariant.gep1220.i.i, %scevgep1012
  %bound1 = icmp ult ptr %scevgep1008, %scevgep1007
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph884.i.i

.lr.ph884.i.i:                                    ; preds = %.loopexit728.i.i, %.lr.ph884.preheader.i.i
  %indvars.iv1071.i.i = phi i64 [ %i.bcm, %.lr.ph884.preheader.i.i ], [ %indvars.iv.next1072.i.i, %.loopexit728.i.i ] ; 4 uses
  %.6881.i.i = phi double [ 1.000000e+00, %.lr.ph884.preheader.i.i ], [ %.7.i.i, %.loopexit728.i.i ] ; 2 uses
  %i.bcv = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %indvars.iv1071.i.i
  %i.bcw = load double, ptr %i.bcv, align 8, !tbaa !12
  %i.bcx = fmul reassoc nsz arcp contract afn double %i.bcw, %.6881.i.i ; 2 uses
  %i.bcy = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bcx) ; 5 uses
  %i.bcz = fadd reassoc nsz arcp contract afn double %i.bcy, %.0672..i.i
  %i.bda = fcmp reassoc nsz arcp contract afn une double %i.bcz, %.0672..i.i
  br i1 %i.bda, label %bb.t, label %.loopexit728.i.i

bb.t:                                             ; preds = %.lr.ph884.i.i
  %i.bdb = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv1071.i.i ; 2 uses
  %i.bdc = load double, ptr %i.bdb, align 8, !tbaa !12 ; 3 uses
  %i.bdd = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bdc) ; 4 uses
  %i.bde = fcmp reassoc nsz arcp contract afn ogt double %i.bcy, %i.bdd
  br i1 %i.bde, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bdf = fdiv reassoc nsz arcp contract afn double %i.bdd, %i.bcy ; 2 uses
  %i.bdg = fmul reassoc nsz arcp contract afn double %i.bdf, %i.bdf
  %i.bdh = fadd reassoc nsz arcp contract afn double %i.bdg, 1.000000e+00
  %i.bdi = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bdh)
  %i.bdj = fmul reassoc nsz arcp contract afn double %i.bdi, %i.bcy
  br label %PYTHAG.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.bdk = fcmp reassoc nsz arcp contract afn ueq double %i.bdc, 0.000000e+00
  br i1 %i.bdk, label %PYTHAG.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bdl = fdiv reassoc nsz arcp contract afn double %i.bcy, %i.bdd ; 2 uses
  %i.bdm = fmul reassoc nsz arcp contract afn double %i.bdl, %i.bdl
  %i.bdn = fadd reassoc nsz arcp contract afn double %i.bdm, 1.000000e+00
  %i.bdo = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bdn)
  %i.bdp = fmul reassoc nsz arcp contract afn double %i.bdo, %i.bdd
  br label %PYTHAG.exit.i.i

PYTHAG.exit.i.i:                                  ; preds = %bb.w, %bb.v, %bb.u
  %.0.i.i.i = phi nsz double [ %i.bdj, %bb.u ], [ %i.bdp, %bb.w ], [ 0.000000e+00, %bb.v ] ; 2 uses
  store double %.0.i.i.i, ptr %i.bdb, align 8, !tbaa !12
  %i.bdq = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.0.i.i.i ; 2 uses
  %i.bdr = fmul reassoc nsz arcp contract afn double %i.bdq, %i.bdc ; 7 uses
  %i.bds = fneg reassoc nsz arcp contract afn double %i.bcx
  %i.bdt = fmul reassoc nsz arcp contract afn double %i.bdq, %i.bds ; 10 uses
  %invariant.gep1222.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1071.i.i ; 4 uses
  %or.cond1941.not = xor i1 %or.cond1941, true
  %brmerge2251 = select i1 %or.cond1941.not, i1 true, i1 %found.conflict
  br i1 %brmerge2251, label %.lr.ph879.i.i.preheader, label %vector.ph1014

vector.ph1014:                                    ; preds = %PYTHAG.exit.i.i
  %broadcast.splatinsert1016 = insertelement <4 x double> poison, double %i.bdr, i64 0
  %broadcast.splat1017 = shufflevector <4 x double> %broadcast.splatinsert1016, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1018 = insertelement <4 x double> poison, double %i.bdt, i64 0
  %broadcast.splat1019 = shufflevector <4 x double> %broadcast.splatinsert1018, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %vector.ph1014
  %index1021 = phi i64 [ 0, %vector.ph1014 ], [ %index.next1026, %vector.body1020 ] ; 3 uses
  %i.bdu = getelementptr [8 x i8], ptr %invariant.gep1220.i.i, i64 %index1021 ; 3 uses
  %i.bdv = getelementptr i8, ptr %i.bdu, i64 32   ; 2 uses
  %wide.load1022 = load <4 x double>, ptr %i.bdu, align 8, !tbaa !12, !alias.scope !110, !noalias !113 ; 2 uses
  %wide.load1023 = load <4 x double>, ptr %i.bdv, align 8, !tbaa !12, !alias.scope !110, !noalias !113 ; 2 uses
  %i.bdw = getelementptr [8 x i8], ptr %invariant.gep1222.i.i, i64 %index1021 ; 3 uses
  %i.bdx = getelementptr i8, ptr %i.bdw, i64 32   ; 2 uses
  %wide.load1024 = load <4 x double>, ptr %i.bdw, align 8, !tbaa !12, !alias.scope !113 ; 2 uses
  %wide.load1025 = load <4 x double>, ptr %i.bdx, align 8, !tbaa !12, !alias.scope !113 ; 2 uses
  %i.bdy = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1022, %broadcast.splat1017
  %i.bdz = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1023, %broadcast.splat1017
  %i.bea = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1024, %broadcast.splat1019
  %i.beb = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1025, %broadcast.splat1019
  %i.bec = fadd reassoc nsz arcp contract afn <4 x double> %i.bea, %i.bdy
  %i.bed = fadd reassoc nsz arcp contract afn <4 x double> %i.beb, %i.bdz
  store <4 x double> %i.bec, ptr %i.bdu, align 8, !tbaa !12, !alias.scope !110, !noalias !113
  store <4 x double> %i.bed, ptr %i.bdv, align 8, !tbaa !12, !alias.scope !110, !noalias !113
  %i.bee = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1024, %broadcast.splat1017
  %i.bef = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1025, %broadcast.splat1017
  %i.beg = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1022, %broadcast.splat1019
  %i.beh = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1023, %broadcast.splat1019
  %i.bei = fsub reassoc nsz arcp contract afn <4 x double> %i.bee, %i.beg
  %i.bej = fsub reassoc nsz arcp contract afn <4 x double> %i.bef, %i.beh
  store <4 x double> %i.bei, ptr %i.bdw, align 8, !tbaa !12, !alias.scope !113
  store <4 x double> %i.bej, ptr %i.bdx, align 8, !tbaa !12, !alias.scope !113
  %index.next1026 = add nuw i64 %index1021, 8     ; 2 uses
  %i.bek = icmp eq i64 %index.next1026, %n.vec1015
  br i1 %i.bek, label %middle.block1027, label %vector.body1020, !llvm.loop !115

middle.block1027:                                 ; preds = %vector.body1020
  br i1 %cmp.n1028, label %.loopexit728.i.i, label %.lr.ph879.i.i.preheader

.lr.ph879.i.i.preheader:                          ; preds = %PYTHAG.exit.i.i, %middle.block1027
  %indvars.iv1066.i.i.ph = phi i64 [ %n.vec1015, %middle.block1027 ], [ 0, %PYTHAG.exit.i.i ] ; 4 uses
  br i1 %lcmp.mod2112.not, label %.lr.ph879.i.i.prol.loopexit, label %.lr.ph879.i.i.prol

.lr.ph879.i.i.prol:                               ; preds = %.lr.ph879.i.i.preheader
  %i.bel = mul nsw i64 %indvars.iv1066.i.i.ph, %i.ih ; 2 uses
  %gep1221.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1220.i.i, i64 %i.bel ; 2 uses
  %i.bem = load double, ptr %gep1221.i.i.prol, align 8, !tbaa !12 ; 2 uses
end_hunk_0
