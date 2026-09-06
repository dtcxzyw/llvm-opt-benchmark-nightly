Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixerrgb?download=true
inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@process:bb.a

vec.epilog.ph1327:                                ; preds = %iter.check1323, %vec.epilog.iter.check1325
  %vec.epilog.resume.val1321 = phi i64 [ %n.vec1291, %vec.epilog.iter.check1325 ], [ 0, %iter.check1323 ] ; 2 uses
  %bc.merge.rdx1322 = phi double [ %i.alu, %vec.epilog.iter.check1325 ], [ 0.000000e+00, %iter.check1323 ]
  %n.vec1328 = and i64 %i.py, -4                  ; 3 uses
  %i.alv = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1322, i64 0
  %broadcast.splatinsert1329 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1321, i64 0
  %broadcast.splat1330 = shufflevector <4 x i64> %broadcast.splatinsert1329, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1331 = or disjoint <4 x i64> %broadcast.splat1330, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1332

vec.epilog.vector.body1332:                       ; preds = %vec.epilog.vector.body1332, %vec.epilog.ph1327
  %index1333 = phi i64 [ %vec.epilog.resume.val1321, %vec.epilog.ph1327 ], [ %index.next1339, %vec.epilog.vector.body1332 ] ; 2 uses
  %vec.ind1334 = phi <4 x i64> [ %induction1331, %vec.epilog.ph1327 ], [ %vec.ind.next1340, %vec.epilog.vector.body1332 ] ; 2 uses
  %vec.phi1335 = phi <4 x double> [ %i.alv, %vec.epilog.ph1327 ], [ %i.alz, %vec.epilog.vector.body1332 ]
  %i.alw = mul <4 x i64> %vec.ind1334, splat (i64 72)
  %wide.gep1336 = getelementptr i8, ptr %invariant.gep.7.i.i.i, <4 x i64> %i.alw
  %wide.masked.gather1337 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1336, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !353, !noalias !354
  %i.alx = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %index1333
  %wide.load1338 = load <4 x double>, ptr %i.alx, align 32, !tbaa !105, !alias.scope !355, !noalias !356
  %i.aly = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1338, %wide.masked.gather1337
  %i.alz = fadd reassoc nsz arcp contract afn <4 x double> %i.aly, %vec.phi1335 ; 2 uses
  %index.next1339 = add nuw i64 %index1333, 4     ; 2 uses
  %vec.ind.next1340 = add nuw <4 x i64> %vec.ind1334, splat (i64 4)
  %i.ama = icmp eq i64 %index.next1339, %n.vec1328
  br i1 %i.ama, label %vec.epilog.middle.block1341, label %vec.epilog.vector.body1332, !llvm.loop !310

vec.epilog.middle.block1341:                      ; preds = %vec.epilog.vector.body1332
  %i.amb = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.alz) ; 2 uses
  %cmp.n1342 = icmp eq i64 %i.py, %n.vec1328
  br i1 %cmp.n1342, label %iter.check1381, label %vec.epilog.scalar.ph1324.preheader

vec.epilog.scalar.ph1324.preheader:               ; preds = %vec.epilog.iter.check1325, %vec.epilog.middle.block1341
  %.019.7.i.i.i.ph = phi i64 [ %n.vec1291, %vec.epilog.iter.check1325 ], [ %n.vec1328, %vec.epilog.middle.block1341 ]
  %.01518.7.i.i.i.ph = phi double [ %i.alu, %vec.epilog.iter.check1325 ], [ %i.amb, %vec.epilog.middle.block1341 ]
  br label %vec.epilog.scalar.ph1324

vec.epilog.scalar.ph1324:                         ; preds = %vec.epilog.scalar.ph1324.preheader, %vec.epilog.scalar.ph1324
  %.019.7.i.i.i = phi i64 [ %i.amh, %vec.epilog.scalar.ph1324 ], [ %.019.7.i.i.i.ph, %vec.epilog.scalar.ph1324.preheader ] ; 3 uses
  %.01518.7.i.i.i = phi double [ %i.amg, %vec.epilog.scalar.ph1324 ], [ %.01518.7.i.i.i.ph, %vec.epilog.scalar.ph1324.preheader ]
  %.idx.7.i.i.i = mul i64 %.019.7.i.i.i, 72
  %gep.7.i.i.i = getelementptr i8, ptr %invariant.gep.7.i.i.i, i64 %.idx.7.i.i.i
  %i.amc = load double, ptr %gep.7.i.i.i, align 8, !tbaa !105, !alias.scope !353, !noalias !354
  %i.amd = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %.019.7.i.i.i
  %i.ame = load double, ptr %i.amd, align 8, !tbaa !105, !alias.scope !355, !noalias !356
  %i.amf = fmul reassoc nsz arcp contract afn double %i.ame, %i.amc
  %i.amg = fadd reassoc nsz arcp contract afn double %i.amf, %.01518.7.i.i.i ; 2 uses
  %i.amh = add nuw i64 %.019.7.i.i.i, 1           ; 2 uses
  %exitcond.7.not.i48.i.i = icmp eq i64 %i.amh, %i.py
  br i1 %exitcond.7.not.i48.i.i, label %iter.check1381, label %vec.epilog.scalar.ph1324, !llvm.loop !311

iter.check1381:                                   ; preds = %vec.epilog.scalar.ph1324, %vec.epilog.middle.block1341, %middle.block1316
  %.lcssa289 = phi double [ %i.amb, %vec.epilog.middle.block1341 ], [ %i.alu, %middle.block1316 ], [ %i.amg, %vec.epilog.scalar.ph1324 ]
  %i.ami = getelementptr inbounds nuw i8, ptr %i.qc, i64 56 ; 18 uses
  store double %.lcssa289, ptr %i.ami, align 8, !tbaa !105, !alias.scope !352, !noalias !357
  %invariant.gep.8.i.i.i = getelementptr i8, ptr %i.le, i64 64 ; 6 uses
  %min.iters.check1347 = icmp ult i64 %i.py, 16
  br i1 %min.iters.check1347, label %vec.epilog.ph1385, label %vector.ph1348

vector.ph1348:                                    ; preds = %iter.check1381
  %i.amj = and i64 %i.py, 12
  %n.vec1349 = and i64 %i.py, -16                 ; 4 uses
  br label %vector.body1350

vector.body1350:                                  ; preds = %vector.body1350, %vector.ph1348
  %index1351 = phi i64 [ 0, %vector.ph1348 ], [ %index.next1372, %vector.body1350 ] ; 2 uses
  %vec.ind1352 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1348 ], [ %vec.ind.next1373, %vector.body1350 ] ; 5 uses
  %vec.phi1353 = phi <4 x double> [ zeroinitializer, %vector.ph1348 ], [ %i.amz, %vector.body1350 ]
  %vec.phi1354 = phi <4 x double> [ zeroinitializer, %vector.ph1348 ], [ %i.ana, %vector.body1350 ]
  %vec.phi1355 = phi <4 x double> [ zeroinitializer, %vector.ph1348 ], [ %i.anb, %vector.body1350 ]
  %vec.phi1356 = phi <4 x double> [ zeroinitializer, %vector.ph1348 ], [ %i.anc, %vector.body1350 ]
  %i.amk = mul <4 x i64> %vec.ind1352, splat (i64 72)
  %i.aml = mul <4 x i64> %vec.ind1352, splat (i64 72)
  %i.amm = add <4 x i64> %i.aml, splat (i64 288)
  %i.amn = mul <4 x i64> %vec.ind1352, splat (i64 72)
  %i.amo = add <4 x i64> %i.amn, splat (i64 576)
  %i.amp = mul <4 x i64> %vec.ind1352, splat (i64 72)
  %i.amq = add <4 x i64> %i.amp, splat (i64 864)
  %wide.gep1360 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.amk
  %wide.gep1361 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.amm
  %wide.gep1362 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.amo
  %wide.gep1363 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.amq
  %wide.masked.gather1364 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1360, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !353, !noalias !354
  %wide.masked.gather1365 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1361, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !353, !noalias !354
  %wide.masked.gather1366 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1362, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !353, !noalias !354
  %wide.masked.gather1367 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1363, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !353, !noalias !354
  %i.amr = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %index1351 ; 4 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 32
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amr, i64 64
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amr, i64 96
  %wide.load1368 = load <4 x double>, ptr %i.amr, align 64, !tbaa !105, !alias.scope !355, !noalias !356
  %wide.load1369 = load <4 x double>, ptr %i.ams, align 32, !tbaa !105, !alias.scope !355, !noalias !356
  %wide.load1370 = load <4 x double>, ptr %i.amt, align 64, !tbaa !105, !alias.scope !355, !noalias !356
  %wide.load1371 = load <4 x double>, ptr %i.amu, align 32, !tbaa !105, !alias.scope !355, !noalias !356
  %i.amv = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1368, %wide.masked.gather1364
  %i.amw = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1369, %wide.masked.gather1365
  %i.amx = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1370, %wide.masked.gather1366
  %i.amy = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1371, %wide.masked.gather1367
  %i.amz = fadd reassoc nsz arcp contract afn <4 x double> %i.amv, %vec.phi1353 ; 2 uses
  %i.ana = fadd reassoc nsz arcp contract afn <4 x double> %i.amw, %vec.phi1354 ; 2 uses
  %i.anb = fadd reassoc nsz arcp contract afn <4 x double> %i.amx, %vec.phi1355 ; 2 uses
  %i.anc = fadd reassoc nsz arcp contract afn <4 x double> %i.amy, %vec.phi1356 ; 2 uses
  %index.next1372 = add nuw i64 %index1351, 16    ; 2 uses
  %vec.ind.next1373 = add nuw <4 x i64> %vec.ind1352, splat (i64 16)
  %i.and = icmp eq i64 %index.next1372, %n.vec1349
  br i1 %i.and, label %middle.block1374, label %vector.body1350, !llvm.loop !312

middle.block1374:                                 ; preds = %vector.body1350
  %bin.rdx1375 = fadd reassoc nsz arcp contract afn <4 x double> %i.ana, %i.amz
  %bin.rdx1376 = fadd reassoc nsz arcp contract afn <4 x double> %i.anb, %bin.rdx1375
  %bin.rdx1377 = fadd reassoc nsz arcp contract afn <4 x double> %i.anc, %bin.rdx1376
  %i.ane = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1377) ; 3 uses
  %cmp.n1378 = icmp eq i64 %i.py, %n.vec1349
  br i1 %cmp.n1378, label %transpose_dot_vector.exit.i.i, label %vec.epilog.iter.check1383

vec.epilog.iter.check1383:                        ; preds = %middle.block1374
  %min.epilog.iters.check1384 = icmp eq i64 %i.amj, 0
  br i1 %min.epilog.iters.check1384, label %vec.epilog.scalar.ph1382.preheader, label %vec.epilog.ph1385, !prof !348

vec.epilog.ph1385:                                ; preds = %iter.check1381, %vec.epilog.iter.check1383
  %vec.epilog.resume.val1379 = phi i64 [ %n.vec1349, %vec.epilog.iter.check1383 ], [ 0, %iter.check1381 ] ; 2 uses
  %bc.merge.rdx1380 = phi double [ %i.ane, %vec.epilog.iter.check1383 ], [ 0.000000e+00, %iter.check1381 ]
  %n.vec1386 = and i64 %i.py, -4                  ; 3 uses
  %i.anf = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1380, i64 0
  %broadcast.splatinsert1387 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1379, i64 0
  %broadcast.splat1388 = shufflevector <4 x i64> %broadcast.splatinsert1387, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1389 = or disjoint <4 x i64> %broadcast.splat1388, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1390

vec.epilog.vector.body1390:                       ; preds = %vec.epilog.vector.body1390, %vec.epilog.ph1385
  %index1391 = phi i64 [ %vec.epilog.resume.val1379, %vec.epilog.ph1385 ], [ %index.next1397, %vec.epilog.vector.body1390 ] ; 2 uses
  %vec.ind1392 = phi <4 x i64> [ %induction1389, %vec.epilog.ph1385 ], [ %vec.ind.next1398, %vec.epilog.vector.body1390 ] ; 2 uses
  %vec.phi1393 = phi <4 x double> [ %i.anf, %vec.epilog.ph1385 ], [ %i.anj, %vec.epilog.vector.body1390 ]
  %i.ang = mul <4 x i64> %vec.ind1392, splat (i64 72)
  %wide.gep1394 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.ang
  %wide.masked.gather1395 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1394, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !353, !noalias !354
  %i.anh = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %index1391
  %wide.load1396 = load <4 x double>, ptr %i.anh, align 32, !tbaa !105, !alias.scope !355, !noalias !356
  %i.ani = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1396, %wide.masked.gather1395
  %i.anj = fadd reassoc nsz arcp contract afn <4 x double> %i.ani, %vec.phi1393 ; 2 uses
  %index.next1397 = add nuw i64 %index1391, 4     ; 2 uses
  %vec.ind.next1398 = add nuw <4 x i64> %vec.ind1392, splat (i64 4)
  %i.ank = icmp eq i64 %index.next1397, %n.vec1386
  br i1 %i.ank, label %vec.epilog.middle.block1399, label %vec.epilog.vector.body1390, !llvm.loop !313

vec.epilog.middle.block1399:                      ; preds = %vec.epilog.vector.body1390
  %i.anl = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.anj) ; 2 uses
  %cmp.n1400 = icmp eq i64 %i.py, %n.vec1386
  br i1 %cmp.n1400, label %transpose_dot_vector.exit.i.i, label %vec.epilog.scalar.ph1382.preheader

vec.epilog.scalar.ph1382.preheader:               ; preds = %vec.epilog.iter.check1383, %vec.epilog.middle.block1399
  %.019.8.i.i.i.ph = phi i64 [ %n.vec1349, %vec.epilog.iter.check1383 ], [ %n.vec1386, %vec.epilog.middle.block1399 ]
  %.01518.8.i.i.i.ph = phi double [ %i.ane, %vec.epilog.iter.check1383 ], [ %i.anl, %vec.epilog.middle.block1399 ]
  br label %vec.epilog.scalar.ph1382

vec.epilog.scalar.ph1382:                         ; preds = %vec.epilog.scalar.ph1382.preheader, %vec.epilog.scalar.ph1382
  %.019.8.i.i.i = phi i64 [ %i.anr, %vec.epilog.scalar.ph1382 ], [ %.019.8.i.i.i.ph, %vec.epilog.scalar.ph1382.preheader ] ; 3 uses
  %.01518.8.i.i.i = phi double [ %i.anq, %vec.epilog.scalar.ph1382 ], [ %.01518.8.i.i.i.ph, %vec.epilog.scalar.ph1382.preheader ]
  %.idx.8.i.i.i = mul i64 %.019.8.i.i.i, 72
  %gep.8.i.i.i = getelementptr i8, ptr %invariant.gep.8.i.i.i, i64 %.idx.8.i.i.i
  %i.anm = load double, ptr %gep.8.i.i.i, align 8, !tbaa !105, !alias.scope !353, !noalias !354
  %i.ann = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %.019.8.i.i.i
  %i.ano = load double, ptr %i.ann, align 8, !tbaa !105, !alias.scope !355, !noalias !356
  %i.anp = fmul reassoc nsz arcp contract afn double %i.ano, %i.anm
  %i.anq = fadd reassoc nsz arcp contract afn double %i.anp, %.01518.8.i.i.i ; 2 uses
  %i.anr = add nuw i64 %.019.8.i.i.i, 1           ; 2 uses
  %exitcond.8.not.i50.i.i = icmp eq i64 %i.anr, %i.py
  br i1 %exitcond.8.not.i50.i.i, label %transpose_dot_vector.exit.i.i, label %vec.epilog.scalar.ph1382, !llvm.loop !314

vec.epilog.scalar.ph918:                          ; preds = %vec.epilog.scalar.ph918.preheader, %vec.epilog.scalar.ph918
  %.019.i.i.i = phi i64 [ %i.anx, %vec.epilog.scalar.ph918 ], [ %.019.i.i.i.ph, %vec.epilog.scalar.ph918.preheader ] ; 3 uses
  %.01518.i.i.i = phi double [ %i.anw, %vec.epilog.scalar.ph918 ], [ %.01518.i.i.i.ph, %vec.epilog.scalar.ph918.preheader ]
  %.idx.i33.i.i = mul i64 %.019.i.i.i, 72
  %gep.i.i.i = getelementptr i8, ptr %i.le, i64 %.idx.i33.i.i
  %i.ans = load double, ptr %gep.i.i.i, align 8, !tbaa !105, !alias.scope !353, !noalias !354
  %i.ant = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %.019.i.i.i
  %i.anu = load double, ptr %i.ant, align 8, !tbaa !105, !alias.scope !355, !noalias !356
  %i.anv = fmul reassoc nsz arcp contract afn double %i.anu, %i.ans
  %i.anw = fadd reassoc nsz arcp contract afn double %i.anv, %.01518.i.i.i ; 2 uses
  %i.anx = add nuw i64 %.019.i.i.i, 1             ; 2 uses
  %exitcond.not.i34.i.i = icmp eq i64 %i.anx, %i.py
  br i1 %exitcond.not.i34.i.i, label %iter.check975, label %vec.epilog.scalar.ph918, !llvm.loop !315

transpose_dot_vector.exit.i.i:                    ; preds = %vec.epilog.scalar.ph1382, %vec.epilog.middle.block1399, %middle.block1374
  %.lcssa = phi double [ %i.anl, %vec.epilog.middle.block1399 ], [ %i.ane, %middle.block1374 ], [ %i.anq, %vec.epilog.scalar.ph1382 ]
  %i.any = getelementptr inbounds nuw i8, ptr %i.qc, i64 64 ; 18 uses
  store double %.lcssa, ptr %i.any, align 64, !tbaa !105, !alias.scope !352, !noalias !357
  %i.anz = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #32, !noalias !343 ; 11 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 32
  store i32 8, ptr %i.aoa, align 4, !tbaa !15, !noalias !343
  %scevgep1403 = getelementptr i8, ptr %i.qb, i64 648 ; 2 uses
  %scevgep1427 = getelementptr i8, ptr %i.qb, i64 72
  br label %bb.t

.loopexit.i.i.i.i:                                ; preds = %._crit_edge121.i.i.i.i, %.preheader111.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  %exitcond146.not.i.i.i.i = icmp eq i64 %indvars.iv.next144.i.i.i.i, 9
  br i1 %exitcond146.not.i.i.i.i, label %gauss_make_triangular.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.loopexit.i.i.i.i, %transpose_dot_vector.exit.i.i
  %indvars.iv143.i.i.i.i = phi i64 [ 0, %transpose_dot_vector.exit.i.i ], [ %indvars.iv.next144.i.i.i.i, %.loopexit.i.i.i.i ] ; 20 uses
  %indvars.iv.i.i.i.i = phi i64 [ 1, %transpose_dot_vector.exit.i.i ], [ %indvars.iv.next.i.i.i.i, %.loopexit.i.i.i.i ] ; 14 uses
  %i.aob = sub nsw i64 8, %indvars.iv143.i.i.i.i  ; 3 uses
  %i.aoc = sub nsw i64 8, %indvars.iv143.i.i.i.i  ; 3 uses
  %i.aod = shl nuw nsw i64 %indvars.iv143.i.i.i.i, 3
  %6 = getelementptr i8, ptr %i.qb, i64 %i.aod
  %scevgep1425 = getelementptr i8, ptr %6, i64 8
  %i.aoe = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 80
  %i.aof = getelementptr i8, ptr %i.qb, i64 %i.aoe
  %scevgep1429 = getelementptr i8, ptr %i.aof, i64 8
  %i.aog = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 72
  %7 = getelementptr i8, ptr %i.qb, i64 %i.aog
  %scevgep1430 = getelementptr i8, ptr %7, i64 72
  %i.aoh = sub nsw i64 8, %indvars.iv143.i.i.i.i  ; 3 uses
  %i.aoi = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 80 ; 3 uses
  %i.aoj = getelementptr i8, ptr %i.qb, i64 %i.aoi
  %scevgep = getelementptr i8, ptr %i.aoj, i64 80 ; 2 uses
  %i.aok = getelementptr i8, ptr %i.qb, i64 %i.aoi
  %scevgep1404 = getelementptr i8, ptr %i.aok, i64 72
  %i.aol = shl nuw nsw i64 %indvars.iv143.i.i.i.i, 3
  %i.aom = getelementptr i8, ptr %i.qb, i64 %i.aol
  %scevgep1405 = getelementptr i8, ptr %i.aom, i64 584
  %i.aon = getelementptr i8, ptr %i.qb, i64 %i.aoi
  %scevgep1406 = getelementptr i8, ptr %i.aon, i64 8
  %i.aoo = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 72
  %8 = getelementptr i8, ptr %i.qb, i64 %i.aoo
  %scevgep1407 = getelementptr i8, ptr %8, i64 72
  %indvars.iv.next144.i.i.i.i = add nuw nsw i64 %indvars.iv143.i.i.i.i, 1 ; 2 uses
  %i.aop = icmp samesign ult i64 %indvars.iv143.i.i.i.i, 8 ; 2 uses
  %i.aoq = trunc nuw nsw i64 %indvars.iv143.i.i.i.i to i32 ; 3 uses
  br i1 %i.aop, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.t
  %i.aor = sub nsw i64 0, %indvars.iv143.i.i.i.i
  %invariant.gep.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %indvars.iv143.i.i.i.i ; 10 uses
  %xtraiter = and i64 %i.aor, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i.i.prol
  %indvars.iv124.i.i.i.i.prol = phi i64 [ %indvars.iv.next125.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ], [ %indvars.iv.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.0100112.i.i.i.i.prol = phi i32 [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ], [ %i.aoq, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %.idx.i.i.i.i.prol = mul nuw nsw i64 %indvars.iv124.i.i.i.i.prol, 72
  %gep.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.prol
  %i.aos = load double, ptr %gep.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %i.aot = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aos)
  %i.aou = mul nuw nsw i32 %.0100112.i.i.i.i.prol, 9
  %i.aov = zext nneg i32 %i.aou to i64
  %i.aow = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.aov
  %i.aox = load double, ptr %i.aow, align 8, !tbaa !105, !noalias !343
  %i.aoy = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aox)
  %i.aoz = fcmp reassoc nsz arcp contract afn ogt double %i.aot, %i.aoy
  %i.apa = trunc nuw nsw i64 %indvars.iv124.i.i.i.i.prol to i32
  %spec.select.i.i.i.i.prol = select i1 %i.aoz, i32 %i.apa, i32 %.0100112.i.i.i.i.prol ; 3 uses
  %indvars.iv.next125.i.i.i.i.prol = add nuw nsw i64 %indvars.iv124.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !316

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %spec.select.i.i.i.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i.i.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %indvars.iv124.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.0100112.i.i.i.i.unr = phi i32 [ %i.aoq, %.lr.ph.preheader.i.i.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %i.apb = icmp ugt i64 %indvars.iv143.i.i.i.i, 4
  br i1 %i.apb, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.t
  %.0100.lcssa.i.i.i.i = phi i32 [ %i.aoq, %bb.t ], [ %spec.select.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %spec.select.i.i.i.i.3, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %indvars.iv143.i.i.i.i
  store i32 %.0100.lcssa.i.i.i.i, ptr %i.apc, align 4, !tbaa !15, !noalias !343
  %i.apd = mul nuw nsw i32 %.0100.lcssa.i.i.i.i, 9
  %i.ape = zext nneg i32 %i.apd to i64            ; 2 uses
  %i.apf = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %indvars.iv143.i.i.i.i ; 4 uses
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %i.apf, i64 %i.ape ; 2 uses
  %i.aph = load double, ptr %i.apg, align 8, !tbaa !105, !noalias !343 ; 4 uses
  %i.api = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 9 ; 2 uses
  %.idx147.i.i.i.i = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 80
  %i.apj = getelementptr inbounds nuw i8, ptr %i.qb, i64 %.idx147.i.i.i.i ; 2 uses
  %i.apk = load double, ptr %i.apj, align 16, !tbaa !105, !noalias !343
  store double %i.apk, ptr %i.apg, align 8, !tbaa !105, !noalias !343
  store double %i.aph, ptr %i.apj, align 16, !tbaa !105, !noalias !343
  %i.apl = fcmp reassoc nsz arcp contract afn une double %i.aph, 0.000000e+00
  br i1 %i.apl, label %.preheader111.i.i.i.i, label %gauss_solve.exit.i.i

.preheader111.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i
  br i1 %i.aop, label %.lr.ph115.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph115.i.i.i.i.preheader:                      ; preds = %.preheader111.i.i.i.i
  %min.iters.check1447 = icmp ult i64 %i.aob, 4
  br i1 %min.iters.check1447, label %.lr.ph115.i.i.i.i.preheader1519, label %vector.ph1448

vector.ph1448:                                    ; preds = %.lr.ph115.i.i.i.i.preheader
  %n.vec1449 = and i64 %i.aob, 12                 ; 3 uses
  %i.apm = add nuw i64 %indvars.iv.i.i.i.i, %n.vec1449
  %broadcast.splatinsert1450 = insertelement <4 x double> poison, double %i.aph, i64 0
  %broadcast.splat1451 = shufflevector <4 x double> %broadcast.splatinsert1450, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1452 = insertelement <4 x i64> poison, i64 %indvars.iv.i.i.i.i, i64 0
  %broadcast.splat1453 = shufflevector <4 x i64> %broadcast.splatinsert1452, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1454 = add nuw nsw <4 x i64> %broadcast.splat1453, <i64 0, i64 1, i64 2, i64 3>
  %i.apn = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1451
  br label %vector.body1455

vector.body1455:                                  ; preds = %vector.body1455, %vector.ph1448
  %index1456 = phi i64 [ 0, %vector.ph1448 ], [ %index.next1460, %vector.body1455 ]
  %vec.ind1457 = phi <4 x i64> [ %induction1454, %vector.ph1448 ], [ %vec.ind.next1461, %vector.body1455 ] ; 2 uses
  %i.apo = mul nuw nsw <4 x i64> %vec.ind1457, splat (i64 72)
  %wide.gep1458 = getelementptr inbounds nuw i8, ptr %i.apf, <4 x i64> %i.apo ; 2 uses
  %wide.masked.gather1459 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1458, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !noalias !343
  %i.app = fneg reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1459
  %i.apq = fmul reassoc nsz arcp contract afn <4 x double> %i.app, %i.apn
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.apq, <4 x ptr> align 8 %wide.gep1458, <4 x i1> splat (i1 true)), !tbaa !105, !noalias !343
  %index.next1460 = add nuw i64 %index1456, 4     ; 2 uses
  %vec.ind.next1461 = add nuw nsw <4 x i64> %vec.ind1457, splat (i64 4)
  %i.apr = icmp eq i64 %index.next1460, %n.vec1449
  br i1 %i.apr, label %middle.block1462, label %vector.body1455, !llvm.loop !317

middle.block1462:                                 ; preds = %vector.body1455
  %cmp.n1463 = icmp eq i64 %i.aob, %n.vec1449
  br i1 %cmp.n1463, label %._crit_edge116.i.i.i.i, label %.lr.ph115.i.i.i.i.preheader1519

.lr.ph115.i.i.i.i.preheader1519:                  ; preds = %.lr.ph115.i.i.i.i.preheader, %middle.block1462
  %indvars.iv127.i.i.i.i.ph = phi i64 [ %indvars.iv.i.i.i.i, %.lr.ph115.i.i.i.i.preheader ], [ %i.apm, %middle.block1462 ]
  %i.aps = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aph
  br label %.lr.ph115.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %indvars.iv124.i.i.i.i = phi i64 [ %indvars.iv.next125.i.i.i.i.3, %.lr.ph.i.i.i.i ], [ %indvars.iv124.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.0100112.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.3, %.lr.ph.i.i.i.i ], [ %.0100112.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %indvars.iv124.i.i.i.i, 72
  %gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i
  %i.apt = load double, ptr %gep.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %i.apu = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.apt)
  %i.apv = mul nuw nsw i32 %.0100112.i.i.i.i, 9
  %i.apw = zext nneg i32 %i.apv to i64
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.apw
  %i.apy = load double, ptr %i.apx, align 8, !tbaa !105, !noalias !343
  %i.apz = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.apy)
  %i.aqa = fcmp reassoc nsz arcp contract afn ogt double %i.apu, %i.apz
  %i.aqb = trunc nuw nsw i64 %indvars.iv124.i.i.i.i to i32
  %spec.select.i.i.i.i = select i1 %i.aqa, i32 %i.aqb, i32 %.0100112.i.i.i.i ; 2 uses
  %indvars.iv.next125.i.i.i.i = add nuw nsw i64 %indvars.iv124.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.1 = mul nuw nsw i64 %indvars.iv.next125.i.i.i.i, 72
  %gep.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.1
  %i.aqc = load double, ptr %gep.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %i.aqd = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aqc)
  %i.aqe = mul nuw nsw i32 %spec.select.i.i.i.i, 9
  %i.aqf = zext nneg i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.aqf
  %i.aqh = load double, ptr %i.aqg, align 8, !tbaa !105, !noalias !343
  %i.aqi = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aqh)
  %i.aqj = fcmp reassoc nsz arcp contract afn ogt double %i.aqd, %i.aqi
  %i.aqk = trunc nuw nsw i64 %indvars.iv.next125.i.i.i.i to i32
  %spec.select.i.i.i.i.1 = select i1 %i.aqj, i32 %i.aqk, i32 %spec.select.i.i.i.i ; 2 uses
  %indvars.iv.next125.i.i.i.i.1 = add nuw nsw i64 %indvars.iv124.i.i.i.i, 2 ; 2 uses
  %.idx.i.i.i.i.2 = mul nuw nsw i64 %indvars.iv.next125.i.i.i.i.1, 72
  %gep.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.2
  %i.aql = load double, ptr %gep.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %i.aqm = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aql)
  %i.aqn = mul nuw nsw i32 %spec.select.i.i.i.i.1, 9
  %i.aqo = zext nneg i32 %i.aqn to i64
  %i.aqp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.aqo
  %i.aqq = load double, ptr %i.aqp, align 8, !tbaa !105, !noalias !343
  %i.aqr = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aqq)
  %i.aqs = fcmp reassoc nsz arcp contract afn ogt double %i.aqm, %i.aqr
  %i.aqt = trunc nuw nsw i64 %indvars.iv.next125.i.i.i.i.1 to i32
  %spec.select.i.i.i.i.2 = select i1 %i.aqs, i32 %i.aqt, i32 %spec.select.i.i.i.i.1 ; 2 uses
  %indvars.iv.next125.i.i.i.i.2 = add nuw nsw i64 %indvars.iv124.i.i.i.i, 3 ; 2 uses
  %.idx.i.i.i.i.3 = mul nuw nsw i64 %indvars.iv.next125.i.i.i.i.2, 72
  %gep.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.3
  %i.aqu = load double, ptr %gep.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %i.aqv = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aqu)
  %i.aqw = mul nuw nsw i32 %spec.select.i.i.i.i.2, 9
  %i.aqx = zext nneg i32 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.aqx
  %i.aqz = load double, ptr %i.aqy, align 8, !tbaa !105, !noalias !343
  %i.ara = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aqz)
  %i.arb = fcmp reassoc nsz arcp contract afn ogt double %i.aqv, %i.ara
  %i.arc = trunc nuw nsw i64 %indvars.iv.next125.i.i.i.i.2 to i32
  %spec.select.i.i.i.i.3 = select i1 %i.arb, i32 %i.arc, i32 %spec.select.i.i.i.i.2 ; 2 uses
  %indvars.iv.next125.i.i.i.i.3 = add nuw nsw i64 %indvars.iv124.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next125.i.i.i.i.3, 9
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge116.i.i.i.i:                           ; preds = %.lr.ph115.i.i.i.i, %middle.block1462
  %i.ard = zext i32 %.0100.lcssa.i.i.i.i to i64   ; 2 uses
  %.not.not.i.i.i.i = icmp eq i64 %indvars.iv143.i.i.i.i, %i.ard
  br i1 %.not.not.i.i.i.i, label %.preheader.preheader.i.i.i.i, label %.lr.ph118.preheader.i.i.i.i

.lr.ph118.preheader.i.i.i.i:                      ; preds = %._crit_edge116.i.i.i.i
  %invariant.gep153.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %i.ape ; 6 uses
  %invariant.gep155.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %i.api ; 6 uses
  %min.iters.check1435 = icmp ult i64 %i.aoc, 4
  br i1 %min.iters.check1435, label %.lr.ph118.i.i.i.i.preheader, label %vector.memcheck1424

vector.memcheck1424:                              ; preds = %.lr.ph118.preheader.i.i.i.i
  %i.are = mul nuw nsw i64 %i.ard, 72             ; 2 uses
  %scevgep1426 = getelementptr i8, ptr %scevgep1425, i64 %i.are
  %scevgep1428 = getelementptr i8, ptr %scevgep1427, i64 %i.are
  %bound01431 = icmp ult ptr %scevgep1426, %scevgep1430
  %bound11432 = icmp ult ptr %scevgep1429, %scevgep1428
  %found.conflict1433 = and i1 %bound01431, %bound11432
  br i1 %found.conflict1433, label %.lr.ph118.i.i.i.i.preheader, label %vector.ph1436

vector.ph1436:                                    ; preds = %vector.memcheck1424
  %n.vec1437 = and i64 %i.aoc, 12                 ; 3 uses
  %i.arf = add nuw i64 %indvars.iv.i.i.i.i, %n.vec1437
  br label %vector.body1438

vector.body1438:                                  ; preds = %vector.body1438, %vector.ph1436
  %index1439 = phi i64 [ 0, %vector.ph1436 ], [ %index.next1442, %vector.body1438 ] ; 2 uses
  %i.arg = add nuw i64 %indvars.iv.i.i.i.i, %index1439 ; 2 uses
  %i.arh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %i.arg ; 2 uses
  %wide.load1440 = load <4 x double>, ptr %i.arh, align 8, !tbaa !105, !alias.scope !359, !noalias !360
  %i.ari = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %i.arg ; 2 uses
  %wide.load1441 = load <4 x double>, ptr %i.ari, align 8, !tbaa !105, !alias.scope !361, !noalias !343
  store <4 x double> %wide.load1441, ptr %i.arh, align 8, !tbaa !105, !alias.scope !359, !noalias !360
  store <4 x double> %wide.load1440, ptr %i.ari, align 8, !tbaa !105, !alias.scope !361, !noalias !343
  %index.next1442 = add nuw i64 %index1439, 4     ; 2 uses
  %i.arj = icmp eq i64 %index.next1442, %n.vec1437
  br i1 %i.arj, label %middle.block1443, label %vector.body1438, !llvm.loop !321

middle.block1443:                                 ; preds = %vector.body1438
  %cmp.n1444 = icmp eq i64 %i.aoc, %n.vec1437
  br i1 %cmp.n1444, label %.preheader.preheader.i.i.i.i, label %.lr.ph118.i.i.i.i.preheader

.lr.ph118.i.i.i.i.preheader:                      ; preds = %vector.memcheck1424, %.lr.ph118.preheader.i.i.i.i, %middle.block1443
  %indvars.iv131.i.i.i.i.ph = phi i64 [ %indvars.iv.i.i.i.i, %vector.memcheck1424 ], [ %indvars.iv.i.i.i.i, %.lr.ph118.preheader.i.i.i.i ], [ %i.arf, %middle.block1443 ] ; 4 uses
  %i.ark = sub i64 1, %indvars.iv131.i.i.i.i.ph
  %xtraiter1628 = and i64 %i.ark, 3               ; 2 uses
  %lcmp.mod1629.not = icmp eq i64 %xtraiter1628, 0
  br i1 %lcmp.mod1629.not, label %.lr.ph118.i.i.i.i.prol.loopexit, label %.lr.ph118.i.i.i.i.prol

.lr.ph118.i.i.i.i.prol:                           ; preds = %.lr.ph118.i.i.i.i.preheader, %.lr.ph118.i.i.i.i.prol
  %indvars.iv131.i.i.i.i.prol = phi i64 [ %indvars.iv.next132.i.i.i.i.prol, %.lr.ph118.i.i.i.i.prol ], [ %indvars.iv131.i.i.i.i.ph, %.lr.ph118.i.i.i.i.preheader ] ; 3 uses
  %prol.iter1630 = phi i64 [ %prol.iter1630.next, %.lr.ph118.i.i.i.i.prol ], [ 0, %.lr.ph118.i.i.i.i.preheader ]
  %gep154.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %indvars.iv131.i.i.i.i.prol ; 2 uses
  %i.arl = load double, ptr %gep154.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %gep156.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %indvars.iv131.i.i.i.i.prol ; 2 uses
  %i.arm = load double, ptr %gep156.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  store double %i.arm, ptr %gep154.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  store double %i.arl, ptr %gep156.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next132.i.i.i.i.prol = add nuw nsw i64 %indvars.iv131.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1630.next = add i64 %prol.iter1630, 1 ; 2 uses
  %prol.iter1630.cmp.not = icmp eq i64 %prol.iter1630.next, %xtraiter1628
  br i1 %prol.iter1630.cmp.not, label %.lr.ph118.i.i.i.i.prol.loopexit, label %.lr.ph118.i.i.i.i.prol, !llvm.loop !322

.lr.ph118.i.i.i.i.prol.loopexit:                  ; preds = %.lr.ph118.i.i.i.i.prol, %.lr.ph118.i.i.i.i.preheader
  %indvars.iv131.i.i.i.i.unr = phi i64 [ %indvars.iv131.i.i.i.i.ph, %.lr.ph118.i.i.i.i.preheader ], [ %indvars.iv.next132.i.i.i.i.prol, %.lr.ph118.i.i.i.i.prol ]
  %i.arn = add i64 %indvars.iv131.i.i.i.i.ph, -6
  %i.aro = icmp ult i64 %i.arn, 3
  br i1 %i.aro, label %.preheader.preheader.i.i.i.i, label %.lr.ph118.i.i.i.i

.lr.ph115.i.i.i.i:                                ; preds = %.lr.ph115.i.i.i.i.preheader1519, %.lr.ph115.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ %indvars.iv.next128.i.i.i.i, %.lr.ph115.i.i.i.i ], [ %indvars.iv127.i.i.i.i.ph, %.lr.ph115.i.i.i.i.preheader1519 ] ; 2 uses
  %.idx148.i.i.i.i = mul nuw nsw i64 %indvars.iv127.i.i.i.i, 72
  %gep152.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.apf, i64 %.idx148.i.i.i.i ; 2 uses
  %i.arp = load double, ptr %gep152.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %i.arq = fneg reassoc nsz arcp contract afn double %i.arp
  %i.arr = fmul reassoc nsz arcp contract afn double %i.arq, %i.aps
  store double %i.arr, ptr %gep152.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next128.i.i.i.i = add nuw nsw i64 %indvars.iv127.i.i.i.i, 1 ; 2 uses
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next128.i.i.i.i, 9
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge116.i.i.i.i, label %.lr.ph115.i.i.i.i, !llvm.loop !323

.lr.ph118.i.i.i.i:                                ; preds = %.lr.ph118.i.i.i.i.prol.loopexit, %.lr.ph118.i.i.i.i
  %indvars.iv131.i.i.i.i = phi i64 [ %indvars.iv.next132.i.i.i.i.3, %.lr.ph118.i.i.i.i ], [ %indvars.iv131.i.i.i.i.unr, %.lr.ph118.i.i.i.i.prol.loopexit ] ; 6 uses
  %gep154.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %indvars.iv131.i.i.i.i ; 2 uses
  %i.ars = load double, ptr %gep154.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep156.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %indvars.iv131.i.i.i.i ; 2 uses
  %i.art = load double, ptr %gep156.i.i.i.i, align 8, !tbaa !105, !noalias !343
  store double %i.art, ptr %gep154.i.i.i.i, align 8, !tbaa !105, !noalias !343
  store double %i.ars, ptr %gep156.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next132.i.i.i.i = add nuw nsw i64 %indvars.iv131.i.i.i.i, 1 ; 2 uses
  %gep154.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i ; 2 uses
  %i.aru = load double, ptr %gep154.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %gep156.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i ; 2 uses
  %i.arv = load double, ptr %gep156.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  store double %i.arv, ptr %gep154.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  store double %i.aru, ptr %gep156.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next132.i.i.i.i.1 = add nuw nsw i64 %indvars.iv131.i.i.i.i, 2 ; 2 uses
  %gep154.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i.1 ; 2 uses
  %i.arw = load double, ptr %gep154.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %gep156.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i.1 ; 2 uses
  %i.arx = load double, ptr %gep156.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  store double %i.arx, ptr %gep154.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  store double %i.arw, ptr %gep156.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next132.i.i.i.i.2 = add nuw nsw i64 %indvars.iv131.i.i.i.i, 3 ; 2 uses
  %gep154.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i.2 ; 2 uses
  %i.ary = load double, ptr %gep154.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %gep156.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i.2 ; 2 uses
  %i.arz = load double, ptr %gep156.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  store double %i.arz, ptr %gep154.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  store double %i.ary, ptr %gep156.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next132.i.i.i.i.3 = add nuw nsw i64 %indvars.iv131.i.i.i.i, 4 ; 2 uses
  %exitcond134.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next132.i.i.i.i.3, 9
  br i1 %exitcond134.not.i.i.i.i.3, label %.preheader.preheader.i.i.i.i, label %.lr.ph118.i.i.i.i, !llvm.loop !324

.preheader.preheader.i.i.i.i:                     ; preds = %.lr.ph118.i.i.i.i.prol.loopexit, %.lr.ph118.i.i.i.i, %middle.block1443, %._crit_edge116.i.i.i.i
  %invariant.gep157.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %i.api ; 6 uses
  %min.iters.check1411 = icmp ult i64 %i.aoh, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep1405
  %bound1 = icmp ult ptr %scevgep1404, %scevgep1403
  %found.conflict = and i1 %bound0, %bound1
  %bound01408 = icmp ult ptr %scevgep, %scevgep1407
  %bound11409 = icmp ult ptr %scevgep1406, %scevgep1403
  %found.conflict1410 = and i1 %bound01408, %bound11409
  %conflict.rdx = or i1 %found.conflict, %found.conflict1410
  %n.vec1413 = and i64 %i.aoh, 12                 ; 3 uses
  %i.asa = add nuw i64 %indvars.iv.i.i.i.i, %n.vec1413
  %cmp.n1422 = icmp eq i64 %i.aoh, %n.vec1413
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %._crit_edge121.i.i.i.i, %.preheader.preheader.i.i.i.i
  %indvars.iv139.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i, %.preheader.preheader.i.i.i.i ], [ %indvars.iv.next140.i.i.i.i, %._crit_edge121.i.i.i.i ] ; 2 uses
  %i.asb = mul nuw nsw i64 %indvars.iv139.i.i.i.i, 9 ; 2 uses
  %gep162.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.apf, i64 %i.asb ; 6 uses
  %invariant.gep159.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %i.asb ; 6 uses
  %brmerge = select i1 %min.iters.check1411, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph1412

vector.ph1412:                                    ; preds = %.preheader.i.i.i.i
  %i.asc = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !alias.scope !362, !noalias !343
  %broadcast.splatinsert1417 = insertelement <4 x double> poison, double %i.asc, i64 0
  %broadcast.splat1418 = shufflevector <4 x double> %broadcast.splatinsert1417, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1414

vector.body1414:                                  ; preds = %vector.body1414, %vector.ph1412
  %index1415 = phi i64 [ 0, %vector.ph1412 ], [ %index.next1420, %vector.body1414 ] ; 2 uses
  %i.asd = add nuw i64 %indvars.iv.i.i.i.i, %index1415 ; 2 uses
  %i.ase = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %i.asd
  %wide.load1416 = load <4 x double>, ptr %i.ase, align 8, !tbaa !105, !alias.scope !363, !noalias !343
  %i.asf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1416, %broadcast.splat1418
  %i.asg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %i.asd ; 2 uses
  %wide.load1419 = load <4 x double>, ptr %i.asg, align 8, !tbaa !105, !alias.scope !364, !noalias !365
  %i.ash = fadd reassoc nsz arcp contract afn <4 x double> %wide.load1419, %i.asf
  store <4 x double> %i.ash, ptr %i.asg, align 8, !tbaa !105, !alias.scope !364, !noalias !365
  %index.next1420 = add nuw i64 %index1415, 4     ; 2 uses
  %i.asi = icmp eq i64 %index.next1420, %n.vec1413
  br i1 %i.asi, label %middle.block1421, label %vector.body1414, !llvm.loop !329

middle.block1421:                                 ; preds = %vector.body1414
  br i1 %cmp.n1422, label %._crit_edge121.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i, %middle.block1421
  %indvars.iv135.i.i.i.i.ph = phi i64 [ %i.asa, %middle.block1421 ], [ %indvars.iv.i.i.i.i, %.preheader.i.i.i.i ] ; 4 uses
  %i.asj = sub i64 1, %indvars.iv135.i.i.i.i.ph
  %xtraiter1631 = and i64 %i.asj, 3               ; 2 uses
  %lcmp.mod1632.not = icmp eq i64 %xtraiter1631, 0
  br i1 %lcmp.mod1632.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv135.i.i.i.i.prol = phi i64 [ %indvars.iv.next136.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv135.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter1633 = phi i64 [ %prol.iter1633.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ask = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep158.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %indvars.iv135.i.i.i.i.prol
  %i.asl = load double, ptr %gep158.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %i.asm = fmul reassoc nsz arcp contract afn double %i.asl, %i.ask
  %gep160.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %indvars.iv135.i.i.i.i.prol ; 2 uses
  %i.asn = load double, ptr %gep160.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %i.aso = fadd reassoc nsz arcp contract afn double %i.asn, %i.asm
  store double %i.aso, ptr %gep160.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next136.i.i.i.i.prol = add nuw nsw i64 %indvars.iv135.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1633.next = add i64 %prol.iter1633, 1 ; 2 uses
  %prol.iter1633.cmp.not = icmp eq i64 %prol.iter1633.next, %xtraiter1631
  br i1 %prol.iter1633.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !330

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv135.i.i.i.i.unr = phi i64 [ %indvars.iv135.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next136.i.i.i.i.prol, %scalar.ph.prol ]
  %i.asp = add i64 %indvars.iv135.i.i.i.i.ph, -6
  %i.asq = icmp ult i64 %i.asp, 3
  br i1 %i.asq, label %._crit_edge121.i.i.i.i, label %scalar.ph

._crit_edge121.i.i.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block1421
  %indvars.iv.next140.i.i.i.i = add nuw nsw i64 %indvars.iv139.i.i.i.i, 1 ; 2 uses
  %exitcond142.not.i.i.i.i = icmp eq i64 %indvars.iv.next140.i.i.i.i, 9
  br i1 %exitcond142.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.preheader.i.i.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv135.i.i.i.i = phi i64 [ %indvars.iv.next136.i.i.i.i.3, %scalar.ph ], [ %indvars.iv135.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.asr = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep158.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %indvars.iv135.i.i.i.i
  %i.ass = load double, ptr %gep158.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %i.ast = fmul reassoc nsz arcp contract afn double %i.ass, %i.asr
  %gep160.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %indvars.iv135.i.i.i.i ; 2 uses
  %i.asu = load double, ptr %gep160.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %i.asv = fadd reassoc nsz arcp contract afn double %i.asu, %i.ast
  store double %i.asv, ptr %gep160.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next136.i.i.i.i = add nuw nsw i64 %indvars.iv135.i.i.i.i, 1 ; 2 uses
  %i.asw = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep158.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i
  %i.asx = load double, ptr %gep158.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %i.asy = fmul reassoc nsz arcp contract afn double %i.asx, %i.asw
  %gep160.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i ; 2 uses
  %i.asz = load double, ptr %gep160.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %i.ata = fadd reassoc nsz arcp contract afn double %i.asz, %i.asy
  store double %i.ata, ptr %gep160.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next136.i.i.i.i.1 = add nuw nsw i64 %indvars.iv135.i.i.i.i, 2 ; 2 uses
  %i.atb = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep158.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i.1
  %i.atc = load double, ptr %gep158.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %i.atd = fmul reassoc nsz arcp contract afn double %i.atc, %i.atb
  %gep160.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i.1 ; 2 uses
  %i.ate = load double, ptr %gep160.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %i.atf = fadd reassoc nsz arcp contract afn double %i.ate, %i.atd
  store double %i.atf, ptr %gep160.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next136.i.i.i.i.2 = add nuw nsw i64 %indvars.iv135.i.i.i.i, 3 ; 2 uses
  %i.atg = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep158.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i.2
  %i.ath = load double, ptr %gep158.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %i.ati = fmul reassoc nsz arcp contract afn double %i.ath, %i.atg
  %gep160.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i.2 ; 2 uses
  %i.atj = load double, ptr %gep160.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %i.atk = fadd reassoc nsz arcp contract afn double %i.atj, %i.ati
  store double %i.atk, ptr %gep160.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next136.i.i.i.i.3 = add nuw nsw i64 %indvars.iv135.i.i.i.i, 4 ; 2 uses
  %exitcond138.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next136.i.i.i.i.3, 9
  br i1 %exitcond138.not.i.i.i.i.3, label %._crit_edge121.i.i.i.i, label %scalar.ph, !llvm.loop !331

gauss_make_triangular.exit.i.i.i:                 ; preds = %.loopexit.i.i.i.i
  %i.atl = load i32, ptr %i.anz, align 4, !tbaa !15, !noalias !343
  %i.atm = sext i32 %i.atl to i64
  %i.atn = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %i.atm ; 2 uses
  %i.ato = load double, ptr %i.atn, align 8, !tbaa !105, !noalias !343 ; 9 uses
  %i.atp = load double, ptr %i.qc, align 64, !tbaa !105, !noalias !343
  store double %i.atp, ptr %i.atn, align 8, !tbaa !105, !noalias !343
  store double %i.ato, ptr %i.qc, align 64, !tbaa !105, !noalias !343
  %i.atq = getelementptr inbounds nuw i8, ptr %i.qb, i64 72
  %i.atr = load double, ptr %i.atq, align 8, !tbaa !105, !noalias !343
  %i.ats = fmul reassoc nsz arcp contract afn double %i.atr, %i.ato
  %i.att = load double, ptr %i.aea, align 8, !tbaa !105, !noalias !343
  %i.atu = fadd reassoc nsz arcp contract afn double %i.att, %i.ats ; 2 uses
  store double %i.atu, ptr %i.aea, align 8, !tbaa !105, !noalias !343
  %i.atv = getelementptr inbounds nuw i8, ptr %i.qb, i64 144
  %i.atw = load double, ptr %i.atv, align 16, !tbaa !105, !noalias !343
  %i.atx = fmul reassoc nsz arcp contract afn double %i.atw, %i.ato
  %i.aty = load double, ptr %i.afk, align 16, !tbaa !105, !noalias !343
  %i.atz = fadd reassoc nsz arcp contract afn double %i.aty, %i.atx
  store double %i.atz, ptr %i.afk, align 16, !tbaa !105, !noalias !343
  %i.aua = getelementptr inbounds nuw i8, ptr %i.qb, i64 216
  %i.aub = load double, ptr %i.aua, align 8, !tbaa !105, !noalias !343
  %i.auc = fmul reassoc nsz arcp contract afn double %i.aub, %i.ato
  %i.aud = load double, ptr %i.agu, align 8, !tbaa !105, !noalias !343
  %i.aue = fadd reassoc nsz arcp contract afn double %i.aud, %i.auc
  store double %i.aue, ptr %i.agu, align 8, !tbaa !105, !noalias !343
  %i.auf = getelementptr inbounds nuw i8, ptr %i.qb, i64 288
  %i.aug = load double, ptr %i.auf, align 32, !tbaa !105, !noalias !343
  %i.auh = fmul reassoc nsz arcp contract afn double %i.aug, %i.ato
  %i.aui = load double, ptr %i.aie, align 32, !tbaa !105, !noalias !343
  %i.auj = fadd reassoc nsz arcp contract afn double %i.aui, %i.auh
  store double %i.auj, ptr %i.aie, align 32, !tbaa !105, !noalias !343
  %i.auk = getelementptr inbounds nuw i8, ptr %i.qb, i64 360
  %i.aul = load double, ptr %i.auk, align 8, !tbaa !105, !noalias !343
  %i.aum = fmul reassoc nsz arcp contract afn double %i.aul, %i.ato
  %i.aun = load double, ptr %i.ajo, align 8, !tbaa !105, !noalias !343
  %i.auo = fadd reassoc nsz arcp contract afn double %i.aun, %i.aum
  store double %i.auo, ptr %i.ajo, align 8, !tbaa !105, !noalias !343
  %i.aup = getelementptr inbounds nuw i8, ptr %i.qb, i64 432
  %i.auq = load double, ptr %i.aup, align 16, !tbaa !105, !noalias !343
  %i.aur = fmul reassoc nsz arcp contract afn double %i.auq, %i.ato
  %i.aus = load double, ptr %i.aky, align 16, !tbaa !105, !noalias !343
  %i.aut = fadd reassoc nsz arcp contract afn double %i.aus, %i.aur
  store double %i.aut, ptr %i.aky, align 16, !tbaa !105, !noalias !343
  %i.auu = getelementptr inbounds nuw i8, ptr %i.qb, i64 504
  %i.auv = load double, ptr %i.auu, align 8, !tbaa !105, !noalias !343
  %i.auw = fmul reassoc nsz arcp contract afn double %i.auv, %i.ato
  %i.aux = load double, ptr %i.ami, align 8, !tbaa !105, !noalias !343
  %i.auy = fadd reassoc nsz arcp contract afn double %i.aux, %i.auw
  store double %i.auy, ptr %i.ami, align 8, !tbaa !105, !noalias !343
  %i.auz = getelementptr inbounds nuw i8, ptr %i.qb, i64 576
  %i.ava = load double, ptr %i.auz, align 64, !tbaa !105, !noalias !343
  %i.avb = fmul reassoc nsz arcp contract afn double %i.ava, %i.ato
  %i.avc = load double, ptr %i.any, align 64, !tbaa !105, !noalias !343
  %i.avd = fadd reassoc nsz arcp contract afn double %i.avc, %i.avb
  store double %i.avd, ptr %i.any, align 64, !tbaa !105, !noalias !343
  %i.ave = getelementptr inbounds nuw i8, ptr %i.anz, i64 4
  %i.avf = load i32, ptr %i.ave, align 4, !tbaa !15, !noalias !343
  %i.avg = sext i32 %i.avf to i64
  %i.avh = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %i.avg ; 2 uses
  %i.avi = load double, ptr %i.avh, align 8, !tbaa !105, !noalias !343 ; 8 uses
  store double %i.atu, ptr %i.avh, align 8, !tbaa !105, !noalias !343
  store double %i.avi, ptr %i.aea, align 8, !tbaa !105, !noalias !343
  %i.avj = getelementptr inbounds nuw i8, ptr %i.qb, i64 152
  %i.avk = load double, ptr %i.avj, align 8, !tbaa !105, !noalias !343
  %i.avl = fmul reassoc nsz arcp contract afn double %i.avk, %i.avi
  %i.avm = load double, ptr %i.afk, align 16, !tbaa !105, !noalias !343
  %i.avn = fadd reassoc nsz arcp contract afn double %i.avm, %i.avl ; 2 uses
  store double %i.avn, ptr %i.afk, align 16, !tbaa !105, !noalias !343
  %i.avo = getelementptr inbounds nuw i8, ptr %i.qb, i64 224
  %i.avp = load double, ptr %i.avo, align 32, !tbaa !105, !noalias !343
  %i.avq = fmul reassoc nsz arcp contract afn double %i.avp, %i.avi
  %i.avr = load double, ptr %i.agu, align 8, !tbaa !105, !noalias !343
  %i.avs = fadd reassoc nsz arcp contract afn double %i.avr, %i.avq
  store double %i.avs, ptr %i.agu, align 8, !tbaa !105, !noalias !343
  %i.avt = getelementptr inbounds nuw i8, ptr %i.qb, i64 296
  %i.avu = load double, ptr %i.avt, align 8, !tbaa !105, !noalias !343
  %i.avv = fmul reassoc nsz arcp contract afn double %i.avu, %i.avi
  %i.avw = load double, ptr %i.aie, align 32, !tbaa !105, !noalias !343
  %i.avx = fadd reassoc nsz arcp contract afn double %i.avw, %i.avv
  store double %i.avx, ptr %i.aie, align 32, !tbaa !105, !noalias !343
  %i.avy = getelementptr inbounds nuw i8, ptr %i.qb, i64 368
  %i.avz = load double, ptr %i.avy, align 16, !tbaa !105, !noalias !343
  %i.awa = fmul reassoc nsz arcp contract afn double %i.avz, %i.avi
  %i.awb = load double, ptr %i.ajo, align 8, !tbaa !105, !noalias !343
  %i.awc = fadd reassoc nsz arcp contract afn double %i.awb, %i.awa
end_hunk_0
