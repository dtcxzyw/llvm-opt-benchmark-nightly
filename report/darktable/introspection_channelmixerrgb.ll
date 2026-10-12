Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixerrgb?download=true
inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@process:bb.a

vec.epilog.ph1327:                                ; preds = %iter.check1323, %vec.epilog.iter.check1325
  %vec.epilog.resume.val1321 = phi i64 [ %n.vec1291, %vec.epilog.iter.check1325 ], [ 0, %iter.check1323 ] ; 2 uses
  %bc.merge.rdx1322 = phi double [ %i.alj, %vec.epilog.iter.check1325 ], [ 0.000000e+00, %iter.check1323 ]
  %n.vec1328 = and i64 %i.pn, -4                  ; 3 uses
  %i.alk = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1322, i64 0
  %broadcast.splatinsert1329 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1321, i64 0
  %broadcast.splat1330 = shufflevector <4 x i64> %broadcast.splatinsert1329, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1331 = or disjoint <4 x i64> %broadcast.splat1330, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1332

vec.epilog.vector.body1332:                       ; preds = %vec.epilog.vector.body1332, %vec.epilog.ph1327
  %index1333 = phi i64 [ %vec.epilog.resume.val1321, %vec.epilog.ph1327 ], [ %index.next1339, %vec.epilog.vector.body1332 ] ; 2 uses
  %vec.ind1334 = phi <4 x i64> [ %induction1331, %vec.epilog.ph1327 ], [ %vec.ind.next1340, %vec.epilog.vector.body1332 ] ; 2 uses
  %vec.phi1335 = phi <4 x double> [ %i.alk, %vec.epilog.ph1327 ], [ %i.alo, %vec.epilog.vector.body1332 ]
  %i.all = mul <4 x i64> %vec.ind1334, splat (i64 72)
  %wide.gep1336 = getelementptr i8, ptr %invariant.gep.7.i.i.i, <4 x i64> %i.all
  %wide.masked.gather1337 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1336, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !353, !noalias !354
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %index1333
  %wide.load1338 = load <4 x double>, ptr %i.alm, align 32, !tbaa !105, !alias.scope !355, !noalias !356
  %i.aln = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1338, %wide.masked.gather1337
  %i.alo = fadd reassoc nsz arcp contract afn <4 x double> %i.aln, %vec.phi1335 ; 2 uses
  %index.next1339 = add nuw i64 %index1333, 4     ; 2 uses
  %vec.ind.next1340 = add nuw <4 x i64> %vec.ind1334, splat (i64 4)
  %i.alp = icmp eq i64 %index.next1339, %n.vec1328
  br i1 %i.alp, label %vec.epilog.middle.block1341, label %vec.epilog.vector.body1332, !llvm.loop !310

vec.epilog.middle.block1341:                      ; preds = %vec.epilog.vector.body1332
  %i.alq = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.alo) ; 2 uses
  %cmp.n1342 = icmp eq i64 %i.pn, %n.vec1328
  br i1 %cmp.n1342, label %iter.check1381, label %vec.epilog.scalar.ph1324.preheader

vec.epilog.scalar.ph1324.preheader:               ; preds = %vec.epilog.iter.check1325, %vec.epilog.middle.block1341
  %.019.7.i.i.i.ph = phi i64 [ %n.vec1291, %vec.epilog.iter.check1325 ], [ %n.vec1328, %vec.epilog.middle.block1341 ]
  %.01518.7.i.i.i.ph = phi double [ %i.alj, %vec.epilog.iter.check1325 ], [ %i.alq, %vec.epilog.middle.block1341 ]
  br label %vec.epilog.scalar.ph1324

vec.epilog.scalar.ph1324:                         ; preds = %vec.epilog.scalar.ph1324.preheader, %vec.epilog.scalar.ph1324
  %.019.7.i.i.i = phi i64 [ %i.alw, %vec.epilog.scalar.ph1324 ], [ %.019.7.i.i.i.ph, %vec.epilog.scalar.ph1324.preheader ] ; 3 uses
  %.01518.7.i.i.i = phi double [ %i.alv, %vec.epilog.scalar.ph1324 ], [ %.01518.7.i.i.i.ph, %vec.epilog.scalar.ph1324.preheader ]
  %.idx.7.i.i.i = mul i64 %.019.7.i.i.i, 72
  %gep.7.i.i.i = getelementptr i8, ptr %invariant.gep.7.i.i.i, i64 %.idx.7.i.i.i
  %i.alr = load double, ptr %gep.7.i.i.i, align 8, !tbaa !105, !alias.scope !353, !noalias !354
  %i.als = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %.019.7.i.i.i
  %i.alt = load double, ptr %i.als, align 8, !tbaa !105, !alias.scope !355, !noalias !356
  %i.alu = fmul reassoc nsz arcp contract afn double %i.alt, %i.alr
  %i.alv = fadd reassoc nsz arcp contract afn double %i.alu, %.01518.7.i.i.i ; 2 uses
  %i.alw = add nuw i64 %.019.7.i.i.i, 1           ; 2 uses
  %exitcond.7.not.i48.i.i = icmp eq i64 %i.alw, %i.pn
  br i1 %exitcond.7.not.i48.i.i, label %iter.check1381, label %vec.epilog.scalar.ph1324, !llvm.loop !311

iter.check1381:                                   ; preds = %vec.epilog.scalar.ph1324, %vec.epilog.middle.block1341, %middle.block1316
  %.lcssa289 = phi double [ %i.alq, %vec.epilog.middle.block1341 ], [ %i.alj, %middle.block1316 ], [ %i.alv, %vec.epilog.scalar.ph1324 ]
  %i.alx = getelementptr inbounds nuw i8, ptr %i.pr, i64 56 ; 18 uses
  store double %.lcssa289, ptr %i.alx, align 8, !tbaa !105, !alias.scope !352, !noalias !357
  %invariant.gep.8.i.i.i = getelementptr i8, ptr %i.kt, i64 64 ; 6 uses
  %min.iters.check1347 = icmp ult i64 %i.pn, 16
  br i1 %min.iters.check1347, label %vec.epilog.ph1385, label %vector.ph1348

vector.ph1348:                                    ; preds = %iter.check1381
  %i.aly = and i64 %i.pn, 12
  %n.vec1349 = and i64 %i.pn, -16                 ; 4 uses
  br label %vector.body1350

vector.body1350:                                  ; preds = %vector.ph1348, %vector.body1350
  %index1351 = phi i64 [ 0, %vector.ph1348 ], [ %index.next1372, %vector.body1350 ] ; 2 uses
  %vec.ind1352 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1348 ], [ %vec.ind.next1373, %vector.body1350 ] ; 5 uses
  %vec.phi1353 = phi <4 x double> [ zeroinitializer, %vector.ph1348 ], [ %i.amo, %vector.body1350 ]
  %vec.phi1354 = phi <4 x double> [ zeroinitializer, %vector.ph1348 ], [ %i.amp, %vector.body1350 ]
  %vec.phi1355 = phi <4 x double> [ zeroinitializer, %vector.ph1348 ], [ %i.amq, %vector.body1350 ]
  %vec.phi1356 = phi <4 x double> [ zeroinitializer, %vector.ph1348 ], [ %i.amr, %vector.body1350 ]
  %i.alz = mul <4 x i64> %vec.ind1352, splat (i64 72)
  %i.ama = mul <4 x i64> %vec.ind1352, splat (i64 72)
  %i.amb = add <4 x i64> %i.ama, splat (i64 288)
  %i.amc = mul <4 x i64> %vec.ind1352, splat (i64 72)
  %i.amd = add <4 x i64> %i.amc, splat (i64 576)
  %i.ame = mul <4 x i64> %vec.ind1352, splat (i64 72)
  %i.amf = add <4 x i64> %i.ame, splat (i64 864)
  %wide.gep1360 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.alz
  %wide.gep1361 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.amb
  %wide.gep1362 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.amd
  %wide.gep1363 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.amf
  %wide.masked.gather1364 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1360, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !353, !noalias !354
  %wide.masked.gather1365 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1361, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !353, !noalias !354
  %wide.masked.gather1366 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1362, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !353, !noalias !354
  %wide.masked.gather1367 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1363, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !353, !noalias !354
  %i.amg = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %index1351 ; 4 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 32
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amg, i64 64
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amg, i64 96
  %wide.load1368 = load <4 x double>, ptr %i.amg, align 64, !tbaa !105, !alias.scope !355, !noalias !356
  %wide.load1369 = load <4 x double>, ptr %i.amh, align 32, !tbaa !105, !alias.scope !355, !noalias !356
  %wide.load1370 = load <4 x double>, ptr %i.ami, align 64, !tbaa !105, !alias.scope !355, !noalias !356
  %wide.load1371 = load <4 x double>, ptr %i.amj, align 32, !tbaa !105, !alias.scope !355, !noalias !356
  %i.amk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1368, %wide.masked.gather1364
  %i.aml = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1369, %wide.masked.gather1365
  %i.amm = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1370, %wide.masked.gather1366
  %i.amn = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1371, %wide.masked.gather1367
  %i.amo = fadd reassoc nsz arcp contract afn <4 x double> %i.amk, %vec.phi1353 ; 2 uses
  %i.amp = fadd reassoc nsz arcp contract afn <4 x double> %i.aml, %vec.phi1354 ; 2 uses
  %i.amq = fadd reassoc nsz arcp contract afn <4 x double> %i.amm, %vec.phi1355 ; 2 uses
  %i.amr = fadd reassoc nsz arcp contract afn <4 x double> %i.amn, %vec.phi1356 ; 2 uses
  %index.next1372 = add nuw i64 %index1351, 16    ; 2 uses
  %vec.ind.next1373 = add nuw <4 x i64> %vec.ind1352, splat (i64 16)
  %i.ams = icmp eq i64 %index.next1372, %n.vec1349
  br i1 %i.ams, label %middle.block1374, label %vector.body1350, !llvm.loop !312

middle.block1374:                                 ; preds = %vector.body1350
  %bin.rdx1375 = fadd reassoc nsz arcp contract afn <4 x double> %i.amp, %i.amo
  %bin.rdx1376 = fadd reassoc nsz arcp contract afn <4 x double> %i.amq, %bin.rdx1375
  %bin.rdx1377 = fadd reassoc nsz arcp contract afn <4 x double> %i.amr, %bin.rdx1376
  %i.amt = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1377) ; 3 uses
  %cmp.n1378 = icmp eq i64 %i.pn, %n.vec1349
  br i1 %cmp.n1378, label %transpose_dot_vector.exit.i.i, label %vec.epilog.iter.check1383

vec.epilog.iter.check1383:                        ; preds = %middle.block1374
  %min.epilog.iters.check1384 = icmp eq i64 %i.aly, 0
  br i1 %min.epilog.iters.check1384, label %vec.epilog.scalar.ph1382.preheader, label %vec.epilog.ph1385, !prof !348

vec.epilog.ph1385:                                ; preds = %iter.check1381, %vec.epilog.iter.check1383
  %vec.epilog.resume.val1379 = phi i64 [ %n.vec1349, %vec.epilog.iter.check1383 ], [ 0, %iter.check1381 ] ; 2 uses
  %bc.merge.rdx1380 = phi double [ %i.amt, %vec.epilog.iter.check1383 ], [ 0.000000e+00, %iter.check1381 ]
  %n.vec1386 = and i64 %i.pn, -4                  ; 3 uses
  %i.amu = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1380, i64 0
  %broadcast.splatinsert1387 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1379, i64 0
  %broadcast.splat1388 = shufflevector <4 x i64> %broadcast.splatinsert1387, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1389 = or disjoint <4 x i64> %broadcast.splat1388, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1390

vec.epilog.vector.body1390:                       ; preds = %vec.epilog.vector.body1390, %vec.epilog.ph1385
  %index1391 = phi i64 [ %vec.epilog.resume.val1379, %vec.epilog.ph1385 ], [ %index.next1397, %vec.epilog.vector.body1390 ] ; 2 uses
  %vec.ind1392 = phi <4 x i64> [ %induction1389, %vec.epilog.ph1385 ], [ %vec.ind.next1398, %vec.epilog.vector.body1390 ] ; 2 uses
  %vec.phi1393 = phi <4 x double> [ %i.amu, %vec.epilog.ph1385 ], [ %i.amy, %vec.epilog.vector.body1390 ]
  %i.amv = mul <4 x i64> %vec.ind1392, splat (i64 72)
  %wide.gep1394 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.amv
  %wide.masked.gather1395 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1394, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !alias.scope !353, !noalias !354
  %i.amw = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %index1391
  %wide.load1396 = load <4 x double>, ptr %i.amw, align 32, !tbaa !105, !alias.scope !355, !noalias !356
  %i.amx = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1396, %wide.masked.gather1395
  %i.amy = fadd reassoc nsz arcp contract afn <4 x double> %i.amx, %vec.phi1393 ; 2 uses
  %index.next1397 = add nuw i64 %index1391, 4     ; 2 uses
  %vec.ind.next1398 = add nuw <4 x i64> %vec.ind1392, splat (i64 4)
  %i.amz = icmp eq i64 %index.next1397, %n.vec1386
  br i1 %i.amz, label %vec.epilog.middle.block1399, label %vec.epilog.vector.body1390, !llvm.loop !313

vec.epilog.middle.block1399:                      ; preds = %vec.epilog.vector.body1390
  %i.ana = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.amy) ; 2 uses
  %cmp.n1400 = icmp eq i64 %i.pn, %n.vec1386
  br i1 %cmp.n1400, label %transpose_dot_vector.exit.i.i, label %vec.epilog.scalar.ph1382.preheader

vec.epilog.scalar.ph1382.preheader:               ; preds = %vec.epilog.iter.check1383, %vec.epilog.middle.block1399
  %.019.8.i.i.i.ph = phi i64 [ %n.vec1349, %vec.epilog.iter.check1383 ], [ %n.vec1386, %vec.epilog.middle.block1399 ]
  %.01518.8.i.i.i.ph = phi double [ %i.amt, %vec.epilog.iter.check1383 ], [ %i.ana, %vec.epilog.middle.block1399 ]
  br label %vec.epilog.scalar.ph1382

vec.epilog.scalar.ph1382:                         ; preds = %vec.epilog.scalar.ph1382.preheader, %vec.epilog.scalar.ph1382
  %.019.8.i.i.i = phi i64 [ %i.ang, %vec.epilog.scalar.ph1382 ], [ %.019.8.i.i.i.ph, %vec.epilog.scalar.ph1382.preheader ] ; 3 uses
  %.01518.8.i.i.i = phi double [ %i.anf, %vec.epilog.scalar.ph1382 ], [ %.01518.8.i.i.i.ph, %vec.epilog.scalar.ph1382.preheader ]
  %.idx.8.i.i.i = mul i64 %.019.8.i.i.i, 72
  %gep.8.i.i.i = getelementptr i8, ptr %invariant.gep.8.i.i.i, i64 %.idx.8.i.i.i
  %i.anb = load double, ptr %gep.8.i.i.i, align 8, !tbaa !105, !alias.scope !353, !noalias !354
  %i.anc = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %.019.8.i.i.i
  %i.and = load double, ptr %i.anc, align 8, !tbaa !105, !alias.scope !355, !noalias !356
  %i.ane = fmul reassoc nsz arcp contract afn double %i.and, %i.anb
  %i.anf = fadd reassoc nsz arcp contract afn double %i.ane, %.01518.8.i.i.i ; 2 uses
  %i.ang = add nuw i64 %.019.8.i.i.i, 1           ; 2 uses
  %exitcond.8.not.i50.i.i = icmp eq i64 %i.ang, %i.pn
  br i1 %exitcond.8.not.i50.i.i, label %transpose_dot_vector.exit.i.i, label %vec.epilog.scalar.ph1382, !llvm.loop !314

vec.epilog.scalar.ph918:                          ; preds = %vec.epilog.scalar.ph918.preheader, %vec.epilog.scalar.ph918
  %.019.i.i.i = phi i64 [ %i.anm, %vec.epilog.scalar.ph918 ], [ %.019.i.i.i.ph, %vec.epilog.scalar.ph918.preheader ] ; 3 uses
  %.01518.i.i.i = phi double [ %i.anl, %vec.epilog.scalar.ph918 ], [ %.01518.i.i.i.ph, %vec.epilog.scalar.ph918.preheader ]
  %.idx.i33.i.i = mul i64 %.019.i.i.i, 72
  %gep.i.i.i = getelementptr i8, ptr %i.kt, i64 %.idx.i33.i.i
  %i.anh = load double, ptr %gep.i.i.i, align 8, !tbaa !105, !alias.scope !353, !noalias !354
  %i.ani = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %.019.i.i.i
  %i.anj = load double, ptr %i.ani, align 8, !tbaa !105, !alias.scope !355, !noalias !356
  %i.ank = fmul reassoc nsz arcp contract afn double %i.anj, %i.anh
  %i.anl = fadd reassoc nsz arcp contract afn double %i.ank, %.01518.i.i.i ; 2 uses
  %i.anm = add nuw i64 %.019.i.i.i, 1             ; 2 uses
  %exitcond.not.i34.i.i = icmp eq i64 %i.anm, %i.pn
  br i1 %exitcond.not.i34.i.i, label %iter.check975, label %vec.epilog.scalar.ph918, !llvm.loop !315

transpose_dot_vector.exit.i.i:                    ; preds = %vec.epilog.scalar.ph1382, %vec.epilog.middle.block1399, %middle.block1374
  %.lcssa = phi double [ %i.ana, %vec.epilog.middle.block1399 ], [ %i.amt, %middle.block1374 ], [ %i.anf, %vec.epilog.scalar.ph1382 ]
  %i.ann = getelementptr inbounds nuw i8, ptr %i.pr, i64 64 ; 18 uses
  store double %.lcssa, ptr %i.ann, align 64, !tbaa !105, !alias.scope !352, !noalias !357
  %i.ano = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #32, !noalias !343 ; 11 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 32
  store i32 8, ptr %i.anp, align 4, !tbaa !15, !noalias !343
  %scevgep1403 = getelementptr i8, ptr %i.pq, i64 648 ; 2 uses
  %scevgep1427 = getelementptr i8, ptr %i.pq, i64 72
  br label %bb.t

.loopexit.i.i.i.i:                                ; preds = %._crit_edge121.i.i.i.i, %.preheader111.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  %exitcond146.not.i.i.i.i = icmp eq i64 %indvars.iv.next144.i.i.i.i, 9
  br i1 %exitcond146.not.i.i.i.i, label %gauss_make_triangular.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.loopexit.i.i.i.i, %transpose_dot_vector.exit.i.i
  %indvars.iv143.i.i.i.i = phi i64 [ 0, %transpose_dot_vector.exit.i.i ], [ %indvars.iv.next144.i.i.i.i, %.loopexit.i.i.i.i ] ; 20 uses
  %indvars.iv.i.i.i.i = phi i64 [ 1, %transpose_dot_vector.exit.i.i ], [ %indvars.iv.next.i.i.i.i, %.loopexit.i.i.i.i ] ; 14 uses
  %6 = sub nsw i64 8, %indvars.iv143.i.i.i.i      ; 3 uses
  %7 = sub nsw i64 8, %indvars.iv143.i.i.i.i      ; 3 uses
  %i.anq = shl nuw nsw i64 %indvars.iv143.i.i.i.i, 3
  %i.anr = getelementptr i8, ptr %i.pq, i64 %i.anq
  %scevgep1425 = getelementptr i8, ptr %i.anr, i64 8
  %i.ans = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 80
  %i.ant = getelementptr i8, ptr %i.pq, i64 %i.ans
  %scevgep1429 = getelementptr i8, ptr %i.ant, i64 8
  %i.anu = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 72
  %i.anv = getelementptr i8, ptr %i.pq, i64 %i.anu
  %scevgep1430 = getelementptr i8, ptr %i.anv, i64 72
  %8 = sub nsw i64 8, %indvars.iv143.i.i.i.i      ; 3 uses
  %i.anw = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 80 ; 3 uses
  %i.anx = getelementptr i8, ptr %i.pq, i64 %i.anw
  %scevgep = getelementptr i8, ptr %i.anx, i64 80 ; 2 uses
  %i.any = getelementptr i8, ptr %i.pq, i64 %i.anw
  %scevgep1404 = getelementptr i8, ptr %i.any, i64 72
  %i.anz = shl nuw nsw i64 %indvars.iv143.i.i.i.i, 3
  %i.aoa = getelementptr i8, ptr %i.pq, i64 %i.anz
  %scevgep1405 = getelementptr i8, ptr %i.aoa, i64 584
  %i.aob = getelementptr i8, ptr %i.pq, i64 %i.anw
  %scevgep1406 = getelementptr i8, ptr %i.aob, i64 8
  %i.aoc = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 72
  %i.aod = getelementptr i8, ptr %i.pq, i64 %i.aoc
  %scevgep1407 = getelementptr i8, ptr %i.aod, i64 72
  %indvars.iv.next144.i.i.i.i = add nuw nsw i64 %indvars.iv143.i.i.i.i, 1 ; 2 uses
  %i.aoe = icmp samesign ult i64 %indvars.iv143.i.i.i.i, 8 ; 2 uses
  %i.aof = trunc nuw nsw i64 %indvars.iv143.i.i.i.i to i32 ; 3 uses
  br i1 %i.aoe, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.t
  %i.aog = sub nsw i64 0, %indvars.iv143.i.i.i.i
  %invariant.gep.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv143.i.i.i.i ; 10 uses
  %xtraiter = and i64 %i.aog, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i.i.prol
  %indvars.iv124.i.i.i.i.prol = phi i64 [ %indvars.iv.next125.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ], [ %indvars.iv.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.0100112.i.i.i.i.prol = phi i32 [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ], [ %i.aof, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %.idx.i.i.i.i.prol = mul nuw nsw i64 %indvars.iv124.i.i.i.i.prol, 72
  %gep.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.prol
  %i.aoh = load double, ptr %gep.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %i.aoi = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aoh)
  %i.aoj = mul nuw nsw i32 %.0100112.i.i.i.i.prol, 9
  %i.aok = zext nneg i32 %i.aoj to i64
  %i.aol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.aok
  %i.aom = load double, ptr %i.aol, align 8, !tbaa !105, !noalias !343
  %i.aon = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aom)
  %i.aoo = fcmp reassoc nsz arcp contract afn ogt double %i.aoi, %i.aon
  %i.aop = trunc nuw nsw i64 %indvars.iv124.i.i.i.i.prol to i32
  %spec.select.i.i.i.i.prol = select i1 %i.aoo, i32 %i.aop, i32 %.0100112.i.i.i.i.prol ; 3 uses
  %indvars.iv.next125.i.i.i.i.prol = add nuw nsw i64 %indvars.iv124.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !316

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %spec.select.i.i.i.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i.i.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %indvars.iv124.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.0100112.i.i.i.i.unr = phi i32 [ %i.aof, %.lr.ph.preheader.i.i.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %i.aoq = icmp ugt i64 %indvars.iv143.i.i.i.i, 4
  br i1 %i.aoq, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.t
  %.0100.lcssa.i.i.i.i = phi i32 [ %i.aof, %bb.t ], [ %spec.select.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %spec.select.i.i.i.i.3, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %i.ano, i64 %indvars.iv143.i.i.i.i
  store i32 %.0100.lcssa.i.i.i.i, ptr %i.aor, align 4, !tbaa !15, !noalias !343
  %i.aos = mul nuw nsw i32 %.0100.lcssa.i.i.i.i, 9
  %i.aot = zext nneg i32 %i.aos to i64            ; 2 uses
  %i.aou = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv143.i.i.i.i ; 4 uses
  %i.aov = getelementptr inbounds nuw [8 x i8], ptr %i.aou, i64 %i.aot ; 2 uses
  %i.aow = load double, ptr %i.aov, align 8, !tbaa !105, !noalias !343 ; 4 uses
  %i.aox = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 9 ; 2 uses
  %.idx147.i.i.i.i = mul nuw nsw i64 %indvars.iv143.i.i.i.i, 80
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.pq, i64 %.idx147.i.i.i.i ; 2 uses
  %i.aoz = load double, ptr %i.aoy, align 16, !tbaa !105, !noalias !343
  store double %i.aoz, ptr %i.aov, align 8, !tbaa !105, !noalias !343
  store double %i.aow, ptr %i.aoy, align 16, !tbaa !105, !noalias !343
  %i.apa = fcmp reassoc nsz arcp contract afn une double %i.aow, 0.000000e+00
  br i1 %i.apa, label %.preheader111.i.i.i.i, label %gauss_solve.exit.i.i

.preheader111.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i
  br i1 %i.aoe, label %.lr.ph115.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph115.i.i.i.i.preheader:                      ; preds = %.preheader111.i.i.i.i
  %min.iters.check1447 = icmp ult i64 %6, 4
  br i1 %min.iters.check1447, label %.lr.ph115.i.i.i.i.preheader1519, label %vector.ph1448

vector.ph1448:                                    ; preds = %.lr.ph115.i.i.i.i.preheader
  %n.vec1449 = and i64 %6, 12                     ; 3 uses
  %i.apb = add nuw i64 %indvars.iv.i.i.i.i, %n.vec1449
  %broadcast.splatinsert1450 = insertelement <4 x double> poison, double %i.aow, i64 0
  %broadcast.splat1451 = shufflevector <4 x double> %broadcast.splatinsert1450, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1452 = insertelement <4 x i64> poison, i64 %indvars.iv.i.i.i.i, i64 0
  %broadcast.splat1453 = shufflevector <4 x i64> %broadcast.splatinsert1452, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1454 = add nuw nsw <4 x i64> %broadcast.splat1453, <i64 0, i64 1, i64 2, i64 3>
  %i.apc = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1451
  br label %vector.body1455

vector.body1455:                                  ; preds = %vector.body1455, %vector.ph1448
  %index1456 = phi i64 [ 0, %vector.ph1448 ], [ %index.next1460, %vector.body1455 ]
  %vec.ind1457 = phi <4 x i64> [ %induction1454, %vector.ph1448 ], [ %vec.ind.next1461, %vector.body1455 ] ; 2 uses
  %i.apd = mul nuw nsw <4 x i64> %vec.ind1457, splat (i64 72)
  %wide.gep1458 = getelementptr inbounds nuw i8, ptr %i.aou, <4 x i64> %i.apd ; 2 uses
  %wide.masked.gather1459 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1458, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !105, !noalias !343
  %i.ape = fneg reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1459
  %i.apf = fmul reassoc nsz arcp contract afn <4 x double> %i.ape, %i.apc
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.apf, <4 x ptr> align 8 %wide.gep1458, <4 x i1> splat (i1 true)), !tbaa !105, !noalias !343
  %index.next1460 = add nuw i64 %index1456, 4     ; 2 uses
  %vec.ind.next1461 = add nuw nsw <4 x i64> %vec.ind1457, splat (i64 4)
  %i.apg = icmp eq i64 %index.next1460, %n.vec1449
  br i1 %i.apg, label %middle.block1462, label %vector.body1455, !llvm.loop !317

middle.block1462:                                 ; preds = %vector.body1455
  %cmp.n1463 = icmp eq i64 %6, %n.vec1449
  br i1 %cmp.n1463, label %._crit_edge116.i.i.i.i, label %.lr.ph115.i.i.i.i.preheader1519

.lr.ph115.i.i.i.i.preheader1519:                  ; preds = %.lr.ph115.i.i.i.i.preheader, %middle.block1462
  %indvars.iv127.i.i.i.i.ph = phi i64 [ %indvars.iv.i.i.i.i, %.lr.ph115.i.i.i.i.preheader ], [ %i.apb, %middle.block1462 ]
  %i.aph = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aow
  br label %.lr.ph115.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %indvars.iv124.i.i.i.i = phi i64 [ %indvars.iv.next125.i.i.i.i.3, %.lr.ph.i.i.i.i ], [ %indvars.iv124.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.0100112.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.3, %.lr.ph.i.i.i.i ], [ %.0100112.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %indvars.iv124.i.i.i.i, 72
  %gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i
  %i.api = load double, ptr %gep.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %i.apj = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.api)
  %i.apk = mul nuw nsw i32 %.0100112.i.i.i.i, 9
  %i.apl = zext nneg i32 %i.apk to i64
  %i.apm = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.apl
  %i.apn = load double, ptr %i.apm, align 8, !tbaa !105, !noalias !343
  %i.apo = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.apn)
  %i.app = fcmp reassoc nsz arcp contract afn ogt double %i.apj, %i.apo
  %i.apq = trunc nuw nsw i64 %indvars.iv124.i.i.i.i to i32
  %spec.select.i.i.i.i = select i1 %i.app, i32 %i.apq, i32 %.0100112.i.i.i.i ; 2 uses
  %indvars.iv.next125.i.i.i.i = add nuw nsw i64 %indvars.iv124.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.1 = mul nuw nsw i64 %indvars.iv.next125.i.i.i.i, 72
  %gep.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.1
  %i.apr = load double, ptr %gep.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %i.aps = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.apr)
  %i.apt = mul nuw nsw i32 %spec.select.i.i.i.i, 9
  %i.apu = zext nneg i32 %i.apt to i64
  %i.apv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.apu
  %i.apw = load double, ptr %i.apv, align 8, !tbaa !105, !noalias !343
  %i.apx = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.apw)
  %i.apy = fcmp reassoc nsz arcp contract afn ogt double %i.aps, %i.apx
  %i.apz = trunc nuw nsw i64 %indvars.iv.next125.i.i.i.i to i32
  %spec.select.i.i.i.i.1 = select i1 %i.apy, i32 %i.apz, i32 %spec.select.i.i.i.i ; 2 uses
  %indvars.iv.next125.i.i.i.i.1 = add nuw nsw i64 %indvars.iv124.i.i.i.i, 2 ; 2 uses
  %.idx.i.i.i.i.2 = mul nuw nsw i64 %indvars.iv.next125.i.i.i.i.1, 72
  %gep.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.2
  %i.aqa = load double, ptr %gep.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %i.aqb = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aqa)
  %i.aqc = mul nuw nsw i32 %spec.select.i.i.i.i.1, 9
  %i.aqd = zext nneg i32 %i.aqc to i64
  %i.aqe = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.aqd
  %i.aqf = load double, ptr %i.aqe, align 8, !tbaa !105, !noalias !343
  %i.aqg = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aqf)
  %i.aqh = fcmp reassoc nsz arcp contract afn ogt double %i.aqb, %i.aqg
  %i.aqi = trunc nuw nsw i64 %indvars.iv.next125.i.i.i.i.1 to i32
  %spec.select.i.i.i.i.2 = select i1 %i.aqh, i32 %i.aqi, i32 %spec.select.i.i.i.i.1 ; 2 uses
  %indvars.iv.next125.i.i.i.i.2 = add nuw nsw i64 %indvars.iv124.i.i.i.i, 3 ; 2 uses
  %.idx.i.i.i.i.3 = mul nuw nsw i64 %indvars.iv.next125.i.i.i.i.2, 72
  %gep.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.3
  %i.aqj = load double, ptr %gep.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %i.aqk = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aqj)
  %i.aql = mul nuw nsw i32 %spec.select.i.i.i.i.2, 9
  %i.aqm = zext nneg i32 %i.aql to i64
  %i.aqn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.aqm
  %i.aqo = load double, ptr %i.aqn, align 8, !tbaa !105, !noalias !343
  %i.aqp = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aqo)
  %i.aqq = fcmp reassoc nsz arcp contract afn ogt double %i.aqk, %i.aqp
  %i.aqr = trunc nuw nsw i64 %indvars.iv.next125.i.i.i.i.2 to i32
  %spec.select.i.i.i.i.3 = select i1 %i.aqq, i32 %i.aqr, i32 %spec.select.i.i.i.i.2 ; 2 uses
  %indvars.iv.next125.i.i.i.i.3 = add nuw nsw i64 %indvars.iv124.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next125.i.i.i.i.3, 9
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge116.i.i.i.i:                           ; preds = %.lr.ph115.i.i.i.i, %middle.block1462
  %i.aqs = zext i32 %.0100.lcssa.i.i.i.i to i64   ; 2 uses
  %.not.not.i.i.i.i = icmp eq i64 %indvars.iv143.i.i.i.i, %i.aqs
  br i1 %.not.not.i.i.i.i, label %.preheader.preheader.i.i.i.i, label %.lr.ph118.preheader.i.i.i.i

.lr.ph118.preheader.i.i.i.i:                      ; preds = %._crit_edge116.i.i.i.i
  %invariant.gep153.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.aot ; 6 uses
  %invariant.gep155.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.aox ; 6 uses
  %min.iters.check1435 = icmp ult i64 %7, 4
  br i1 %min.iters.check1435, label %.lr.ph118.i.i.i.i.preheader, label %vector.memcheck1424

vector.memcheck1424:                              ; preds = %.lr.ph118.preheader.i.i.i.i
  %i.aqt = mul nuw nsw i64 %i.aqs, 72             ; 2 uses
  %scevgep1426 = getelementptr i8, ptr %scevgep1425, i64 %i.aqt
  %scevgep1428 = getelementptr i8, ptr %scevgep1427, i64 %i.aqt
  %bound01431 = icmp ult ptr %scevgep1426, %scevgep1430
  %bound11432 = icmp ult ptr %scevgep1429, %scevgep1428
  %found.conflict1433 = and i1 %bound01431, %bound11432
  br i1 %found.conflict1433, label %.lr.ph118.i.i.i.i.preheader, label %vector.ph1436

vector.ph1436:                                    ; preds = %vector.memcheck1424
  %n.vec1437 = and i64 %7, 12                     ; 3 uses
  %i.aqu = add nuw i64 %indvars.iv.i.i.i.i, %n.vec1437
  br label %vector.body1438

vector.body1438:                                  ; preds = %vector.body1438, %vector.ph1436
  %index1439 = phi i64 [ 0, %vector.ph1436 ], [ %index.next1442, %vector.body1438 ] ; 2 uses
  %i.aqv = add nuw i64 %indvars.iv.i.i.i.i, %index1439 ; 2 uses
  %i.aqw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %i.aqv ; 2 uses
  %wide.load1440 = load <4 x double>, ptr %i.aqw, align 8, !tbaa !105, !alias.scope !359, !noalias !360
  %i.aqx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %i.aqv ; 2 uses
  %wide.load1441 = load <4 x double>, ptr %i.aqx, align 8, !tbaa !105, !alias.scope !361, !noalias !343
  store <4 x double> %wide.load1441, ptr %i.aqw, align 8, !tbaa !105, !alias.scope !359, !noalias !360
  store <4 x double> %wide.load1440, ptr %i.aqx, align 8, !tbaa !105, !alias.scope !361, !noalias !343
  %index.next1442 = add nuw i64 %index1439, 4     ; 2 uses
  %i.aqy = icmp eq i64 %index.next1442, %n.vec1437
  br i1 %i.aqy, label %middle.block1443, label %vector.body1438, !llvm.loop !321

middle.block1443:                                 ; preds = %vector.body1438
  %cmp.n1444 = icmp eq i64 %7, %n.vec1437
  br i1 %cmp.n1444, label %.preheader.preheader.i.i.i.i, label %.lr.ph118.i.i.i.i.preheader

.lr.ph118.i.i.i.i.preheader:                      ; preds = %vector.memcheck1424, %.lr.ph118.preheader.i.i.i.i, %middle.block1443
  %indvars.iv131.i.i.i.i.ph = phi i64 [ %indvars.iv.i.i.i.i, %vector.memcheck1424 ], [ %indvars.iv.i.i.i.i, %.lr.ph118.preheader.i.i.i.i ], [ %i.aqu, %middle.block1443 ] ; 4 uses
  %i.aqz = sub i64 1, %indvars.iv131.i.i.i.i.ph
  %xtraiter1628 = and i64 %i.aqz, 3               ; 2 uses
  %lcmp.mod1629.not = icmp eq i64 %xtraiter1628, 0
  br i1 %lcmp.mod1629.not, label %.lr.ph118.i.i.i.i.prol.loopexit, label %.lr.ph118.i.i.i.i.prol

.lr.ph118.i.i.i.i.prol:                           ; preds = %.lr.ph118.i.i.i.i.preheader, %.lr.ph118.i.i.i.i.prol
  %indvars.iv131.i.i.i.i.prol = phi i64 [ %indvars.iv.next132.i.i.i.i.prol, %.lr.ph118.i.i.i.i.prol ], [ %indvars.iv131.i.i.i.i.ph, %.lr.ph118.i.i.i.i.preheader ] ; 3 uses
  %prol.iter1630 = phi i64 [ %prol.iter1630.next, %.lr.ph118.i.i.i.i.prol ], [ 0, %.lr.ph118.i.i.i.i.preheader ]
  %gep154.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %indvars.iv131.i.i.i.i.prol ; 2 uses
  %i.ara = load double, ptr %gep154.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %gep156.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %indvars.iv131.i.i.i.i.prol ; 2 uses
  %i.arb = load double, ptr %gep156.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  store double %i.arb, ptr %gep154.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  store double %i.ara, ptr %gep156.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next132.i.i.i.i.prol = add nuw nsw i64 %indvars.iv131.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1630.next = add i64 %prol.iter1630, 1 ; 2 uses
  %prol.iter1630.cmp.not = icmp eq i64 %prol.iter1630.next, %xtraiter1628
  br i1 %prol.iter1630.cmp.not, label %.lr.ph118.i.i.i.i.prol.loopexit, label %.lr.ph118.i.i.i.i.prol, !llvm.loop !322

.lr.ph118.i.i.i.i.prol.loopexit:                  ; preds = %.lr.ph118.i.i.i.i.prol, %.lr.ph118.i.i.i.i.preheader
  %indvars.iv131.i.i.i.i.unr = phi i64 [ %indvars.iv131.i.i.i.i.ph, %.lr.ph118.i.i.i.i.preheader ], [ %indvars.iv.next132.i.i.i.i.prol, %.lr.ph118.i.i.i.i.prol ]
  %i.arc = add i64 %indvars.iv131.i.i.i.i.ph, -6
  %i.ard = icmp ult i64 %i.arc, 3
  br i1 %i.ard, label %.preheader.preheader.i.i.i.i, label %.lr.ph118.i.i.i.i

.lr.ph115.i.i.i.i:                                ; preds = %.lr.ph115.i.i.i.i.preheader1519, %.lr.ph115.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ %indvars.iv.next128.i.i.i.i, %.lr.ph115.i.i.i.i ], [ %indvars.iv127.i.i.i.i.ph, %.lr.ph115.i.i.i.i.preheader1519 ] ; 2 uses
  %.idx148.i.i.i.i = mul nuw nsw i64 %indvars.iv127.i.i.i.i, 72
  %gep152.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aou, i64 %.idx148.i.i.i.i ; 2 uses
  %i.are = load double, ptr %gep152.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %i.arf = fneg reassoc nsz arcp contract afn double %i.are
  %i.arg = fmul reassoc nsz arcp contract afn double %i.arf, %i.aph
  store double %i.arg, ptr %gep152.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next128.i.i.i.i = add nuw nsw i64 %indvars.iv127.i.i.i.i, 1 ; 2 uses
  %exitcond130.not.i.i.i.i = icmp eq i64 %indvars.iv.next128.i.i.i.i, 9
  br i1 %exitcond130.not.i.i.i.i, label %._crit_edge116.i.i.i.i, label %.lr.ph115.i.i.i.i, !llvm.loop !323

.lr.ph118.i.i.i.i:                                ; preds = %.lr.ph118.i.i.i.i.prol.loopexit, %.lr.ph118.i.i.i.i
  %indvars.iv131.i.i.i.i = phi i64 [ %indvars.iv.next132.i.i.i.i.3, %.lr.ph118.i.i.i.i ], [ %indvars.iv131.i.i.i.i.unr, %.lr.ph118.i.i.i.i.prol.loopexit ] ; 6 uses
  %gep154.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %indvars.iv131.i.i.i.i ; 2 uses
  %i.arh = load double, ptr %gep154.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep156.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %indvars.iv131.i.i.i.i ; 2 uses
  %i.ari = load double, ptr %gep156.i.i.i.i, align 8, !tbaa !105, !noalias !343
  store double %i.ari, ptr %gep154.i.i.i.i, align 8, !tbaa !105, !noalias !343
  store double %i.arh, ptr %gep156.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next132.i.i.i.i = add nuw nsw i64 %indvars.iv131.i.i.i.i, 1 ; 2 uses
  %gep154.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i ; 2 uses
  %i.arj = load double, ptr %gep154.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %gep156.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i ; 2 uses
  %i.ark = load double, ptr %gep156.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  store double %i.ark, ptr %gep154.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  store double %i.arj, ptr %gep156.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next132.i.i.i.i.1 = add nuw nsw i64 %indvars.iv131.i.i.i.i, 2 ; 2 uses
  %gep154.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i.1 ; 2 uses
  %i.arl = load double, ptr %gep154.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %gep156.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i.1 ; 2 uses
  %i.arm = load double, ptr %gep156.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  store double %i.arm, ptr %gep154.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  store double %i.arl, ptr %gep156.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next132.i.i.i.i.2 = add nuw nsw i64 %indvars.iv131.i.i.i.i, 3 ; 2 uses
  %gep154.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i.2 ; 2 uses
  %i.arn = load double, ptr %gep154.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %gep156.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i.i.i, i64 %indvars.iv.next132.i.i.i.i.2 ; 2 uses
  %i.aro = load double, ptr %gep156.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  store double %i.aro, ptr %gep154.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  store double %i.arn, ptr %gep156.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next132.i.i.i.i.3 = add nuw nsw i64 %indvars.iv131.i.i.i.i, 4 ; 2 uses
  %exitcond134.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next132.i.i.i.i.3, 9
  br i1 %exitcond134.not.i.i.i.i.3, label %.preheader.preheader.i.i.i.i, label %.lr.ph118.i.i.i.i, !llvm.loop !324

.preheader.preheader.i.i.i.i:                     ; preds = %.lr.ph118.i.i.i.i.prol.loopexit, %.lr.ph118.i.i.i.i, %middle.block1443, %._crit_edge116.i.i.i.i
  %invariant.gep157.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.aox ; 6 uses
  %min.iters.check1411 = icmp ult i64 %8, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep1405
  %bound1 = icmp ult ptr %scevgep1404, %scevgep1403
  %found.conflict = and i1 %bound0, %bound1
  %bound01408 = icmp ult ptr %scevgep, %scevgep1407
  %bound11409 = icmp ult ptr %scevgep1406, %scevgep1403
  %found.conflict1410 = and i1 %bound01408, %bound11409
  %conflict.rdx = or i1 %found.conflict, %found.conflict1410
  %n.vec1413 = and i64 %8, 12                     ; 3 uses
  %i.arp = add nuw i64 %indvars.iv.i.i.i.i, %n.vec1413
  %cmp.n1422 = icmp eq i64 %8, %n.vec1413
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %._crit_edge121.i.i.i.i, %.preheader.preheader.i.i.i.i
  %indvars.iv139.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i, %.preheader.preheader.i.i.i.i ], [ %indvars.iv.next140.i.i.i.i, %._crit_edge121.i.i.i.i ] ; 2 uses
  %i.arq = mul nuw nsw i64 %indvars.iv139.i.i.i.i, 9 ; 2 uses
  %gep162.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.aou, i64 %i.arq ; 6 uses
  %invariant.gep159.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.arq ; 6 uses
  %brmerge = select i1 %min.iters.check1411, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph1412

vector.ph1412:                                    ; preds = %.preheader.i.i.i.i
  %i.arr = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !alias.scope !362, !noalias !343
  %broadcast.splatinsert1417 = insertelement <4 x double> poison, double %i.arr, i64 0
  %broadcast.splat1418 = shufflevector <4 x double> %broadcast.splatinsert1417, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1414

vector.body1414:                                  ; preds = %vector.body1414, %vector.ph1412
  %index1415 = phi i64 [ 0, %vector.ph1412 ], [ %index.next1420, %vector.body1414 ] ; 2 uses
  %i.ars = add nuw i64 %indvars.iv.i.i.i.i, %index1415 ; 2 uses
  %i.art = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %i.ars
  %wide.load1416 = load <4 x double>, ptr %i.art, align 8, !tbaa !105, !alias.scope !363, !noalias !343
  %i.aru = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1416, %broadcast.splat1418
  %i.arv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %i.ars ; 2 uses
  %wide.load1419 = load <4 x double>, ptr %i.arv, align 8, !tbaa !105, !alias.scope !364, !noalias !365
  %i.arw = fadd reassoc nsz arcp contract afn <4 x double> %wide.load1419, %i.aru
  store <4 x double> %i.arw, ptr %i.arv, align 8, !tbaa !105, !alias.scope !364, !noalias !365
  %index.next1420 = add nuw i64 %index1415, 4     ; 2 uses
  %i.arx = icmp eq i64 %index.next1420, %n.vec1413
  br i1 %i.arx, label %middle.block1421, label %vector.body1414, !llvm.loop !329

middle.block1421:                                 ; preds = %vector.body1414
  br i1 %cmp.n1422, label %._crit_edge121.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i, %middle.block1421
  %indvars.iv135.i.i.i.i.ph = phi i64 [ %i.arp, %middle.block1421 ], [ %indvars.iv.i.i.i.i, %.preheader.i.i.i.i ] ; 4 uses
  %i.ary = sub i64 1, %indvars.iv135.i.i.i.i.ph
  %xtraiter1631 = and i64 %i.ary, 3               ; 2 uses
  %lcmp.mod1632.not = icmp eq i64 %xtraiter1631, 0
  br i1 %lcmp.mod1632.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv135.i.i.i.i.prol = phi i64 [ %indvars.iv.next136.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv135.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter1633 = phi i64 [ %prol.iter1633.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.arz = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep158.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %indvars.iv135.i.i.i.i.prol
  %i.asa = load double, ptr %gep158.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %i.asb = fmul reassoc nsz arcp contract afn double %i.asa, %i.arz
  %gep160.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %indvars.iv135.i.i.i.i.prol ; 2 uses
  %i.asc = load double, ptr %gep160.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %i.asd = fadd reassoc nsz arcp contract afn double %i.asc, %i.asb
  store double %i.asd, ptr %gep160.i.i.i.i.prol, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next136.i.i.i.i.prol = add nuw nsw i64 %indvars.iv135.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1633.next = add i64 %prol.iter1633, 1 ; 2 uses
  %prol.iter1633.cmp.not = icmp eq i64 %prol.iter1633.next, %xtraiter1631
  br i1 %prol.iter1633.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !330

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv135.i.i.i.i.unr = phi i64 [ %indvars.iv135.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next136.i.i.i.i.prol, %scalar.ph.prol ]
  %i.ase = add i64 %indvars.iv135.i.i.i.i.ph, -6
  %i.asf = icmp ult i64 %i.ase, 3
  br i1 %i.asf, label %._crit_edge121.i.i.i.i, label %scalar.ph

._crit_edge121.i.i.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block1421
  %indvars.iv.next140.i.i.i.i = add nuw nsw i64 %indvars.iv139.i.i.i.i, 1 ; 2 uses
  %exitcond142.not.i.i.i.i = icmp eq i64 %indvars.iv.next140.i.i.i.i, 9
  br i1 %exitcond142.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.preheader.i.i.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv135.i.i.i.i = phi i64 [ %indvars.iv.next136.i.i.i.i.3, %scalar.ph ], [ %indvars.iv135.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.asg = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep158.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %indvars.iv135.i.i.i.i
  %i.ash = load double, ptr %gep158.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %i.asi = fmul reassoc nsz arcp contract afn double %i.ash, %i.asg
  %gep160.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %indvars.iv135.i.i.i.i ; 2 uses
  %i.asj = load double, ptr %gep160.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %i.ask = fadd reassoc nsz arcp contract afn double %i.asj, %i.asi
  store double %i.ask, ptr %gep160.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next136.i.i.i.i = add nuw nsw i64 %indvars.iv135.i.i.i.i, 1 ; 2 uses
  %i.asl = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep158.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i
  %i.asm = load double, ptr %gep158.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %i.asn = fmul reassoc nsz arcp contract afn double %i.asm, %i.asl
  %gep160.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i ; 2 uses
  %i.aso = load double, ptr %gep160.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %i.asp = fadd reassoc nsz arcp contract afn double %i.aso, %i.asn
  store double %i.asp, ptr %gep160.i.i.i.i.1, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next136.i.i.i.i.1 = add nuw nsw i64 %indvars.iv135.i.i.i.i, 2 ; 2 uses
  %i.asq = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep158.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i.1
  %i.asr = load double, ptr %gep158.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %i.ass = fmul reassoc nsz arcp contract afn double %i.asr, %i.asq
  %gep160.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i.1 ; 2 uses
  %i.ast = load double, ptr %gep160.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %i.asu = fadd reassoc nsz arcp contract afn double %i.ast, %i.ass
  store double %i.asu, ptr %gep160.i.i.i.i.2, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next136.i.i.i.i.2 = add nuw nsw i64 %indvars.iv135.i.i.i.i, 3 ; 2 uses
  %i.asv = load double, ptr %gep162.i.i.i.i, align 8, !tbaa !105, !noalias !343
  %gep158.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i.2
  %i.asw = load double, ptr %gep158.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %i.asx = fmul reassoc nsz arcp contract afn double %i.asw, %i.asv
  %gep160.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i.i.i, i64 %indvars.iv.next136.i.i.i.i.2 ; 2 uses
  %i.asy = load double, ptr %gep160.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %i.asz = fadd reassoc nsz arcp contract afn double %i.asy, %i.asx
  store double %i.asz, ptr %gep160.i.i.i.i.3, align 8, !tbaa !105, !noalias !343
  %indvars.iv.next136.i.i.i.i.3 = add nuw nsw i64 %indvars.iv135.i.i.i.i, 4 ; 2 uses
  %exitcond138.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next136.i.i.i.i.3, 9
  br i1 %exitcond138.not.i.i.i.i.3, label %._crit_edge121.i.i.i.i, label %scalar.ph, !llvm.loop !331

gauss_make_triangular.exit.i.i.i:                 ; preds = %.loopexit.i.i.i.i
  %i.ata = load i32, ptr %i.ano, align 4, !tbaa !15, !noalias !343
  %i.atb = sext i32 %i.ata to i64
  %i.atc = getelementptr inbounds [8 x i8], ptr %i.pr, i64 %i.atb ; 2 uses
  %i.atd = load double, ptr %i.atc, align 8, !tbaa !105, !noalias !343 ; 9 uses
  %i.ate = load double, ptr %i.pr, align 64, !tbaa !105, !noalias !343
  store double %i.ate, ptr %i.atc, align 8, !tbaa !105, !noalias !343
  store double %i.atd, ptr %i.pr, align 64, !tbaa !105, !noalias !343
  %i.atf = getelementptr inbounds nuw i8, ptr %i.pq, i64 72
  %i.atg = load double, ptr %i.atf, align 8, !tbaa !105, !noalias !343
  %i.ath = fmul reassoc nsz arcp contract afn double %i.atg, %i.atd
  %i.ati = load double, ptr %i.adp, align 8, !tbaa !105, !noalias !343
  %i.atj = fadd reassoc nsz arcp contract afn double %i.ati, %i.ath ; 2 uses
  store double %i.atj, ptr %i.adp, align 8, !tbaa !105, !noalias !343
  %i.atk = getelementptr inbounds nuw i8, ptr %i.pq, i64 144
  %i.atl = load double, ptr %i.atk, align 16, !tbaa !105, !noalias !343
  %i.atm = fmul reassoc nsz arcp contract afn double %i.atl, %i.atd
  %i.atn = load double, ptr %i.aez, align 16, !tbaa !105, !noalias !343
  %i.ato = fadd reassoc nsz arcp contract afn double %i.atn, %i.atm
  store double %i.ato, ptr %i.aez, align 16, !tbaa !105, !noalias !343
  %i.atp = getelementptr inbounds nuw i8, ptr %i.pq, i64 216
  %i.atq = load double, ptr %i.atp, align 8, !tbaa !105, !noalias !343
  %i.atr = fmul reassoc nsz arcp contract afn double %i.atq, %i.atd
  %i.ats = load double, ptr %i.agj, align 8, !tbaa !105, !noalias !343
  %i.att = fadd reassoc nsz arcp contract afn double %i.ats, %i.atr
  store double %i.att, ptr %i.agj, align 8, !tbaa !105, !noalias !343
  %i.atu = getelementptr inbounds nuw i8, ptr %i.pq, i64 288
  %i.atv = load double, ptr %i.atu, align 32, !tbaa !105, !noalias !343
  %i.atw = fmul reassoc nsz arcp contract afn double %i.atv, %i.atd
  %i.atx = load double, ptr %i.aht, align 32, !tbaa !105, !noalias !343
  %i.aty = fadd reassoc nsz arcp contract afn double %i.atx, %i.atw
  store double %i.aty, ptr %i.aht, align 32, !tbaa !105, !noalias !343
  %i.atz = getelementptr inbounds nuw i8, ptr %i.pq, i64 360
  %i.aua = load double, ptr %i.atz, align 8, !tbaa !105, !noalias !343
  %i.aub = fmul reassoc nsz arcp contract afn double %i.aua, %i.atd
  %i.auc = load double, ptr %i.ajd, align 8, !tbaa !105, !noalias !343
  %i.aud = fadd reassoc nsz arcp contract afn double %i.auc, %i.aub
  store double %i.aud, ptr %i.ajd, align 8, !tbaa !105, !noalias !343
  %i.aue = getelementptr inbounds nuw i8, ptr %i.pq, i64 432
  %i.auf = load double, ptr %i.aue, align 16, !tbaa !105, !noalias !343
  %i.aug = fmul reassoc nsz arcp contract afn double %i.auf, %i.atd
  %i.auh = load double, ptr %i.akn, align 16, !tbaa !105, !noalias !343
  %i.aui = fadd reassoc nsz arcp contract afn double %i.auh, %i.aug
  store double %i.aui, ptr %i.akn, align 16, !tbaa !105, !noalias !343
  %i.auj = getelementptr inbounds nuw i8, ptr %i.pq, i64 504
  %i.auk = load double, ptr %i.auj, align 8, !tbaa !105, !noalias !343
  %i.aul = fmul reassoc nsz arcp contract afn double %i.auk, %i.atd
  %i.aum = load double, ptr %i.alx, align 8, !tbaa !105, !noalias !343
  %i.aun = fadd reassoc nsz arcp contract afn double %i.aum, %i.aul
  store double %i.aun, ptr %i.alx, align 8, !tbaa !105, !noalias !343
  %i.auo = getelementptr inbounds nuw i8, ptr %i.pq, i64 576
  %i.aup = load double, ptr %i.auo, align 64, !tbaa !105, !noalias !343
  %i.auq = fmul reassoc nsz arcp contract afn double %i.aup, %i.atd
  %i.aur = load double, ptr %i.ann, align 64, !tbaa !105, !noalias !343
  %i.aus = fadd reassoc nsz arcp contract afn double %i.aur, %i.auq
  store double %i.aus, ptr %i.ann, align 64, !tbaa !105, !noalias !343
  %i.aut = getelementptr inbounds nuw i8, ptr %i.ano, i64 4
  %i.auu = load i32, ptr %i.aut, align 4, !tbaa !15, !noalias !343
  %i.auv = sext i32 %i.auu to i64
  %i.auw = getelementptr inbounds [8 x i8], ptr %i.pr, i64 %i.auv ; 2 uses
  %i.aux = load double, ptr %i.auw, align 8, !tbaa !105, !noalias !343 ; 8 uses
  store double %i.atj, ptr %i.auw, align 8, !tbaa !105, !noalias !343
  store double %i.aux, ptr %i.adp, align 8, !tbaa !105, !noalias !343
  %i.auy = getelementptr inbounds nuw i8, ptr %i.pq, i64 152
  %i.auz = load double, ptr %i.auy, align 8, !tbaa !105, !noalias !343
  %i.ava = fmul reassoc nsz arcp contract afn double %i.auz, %i.aux
  %i.avb = load double, ptr %i.aez, align 16, !tbaa !105, !noalias !343
  %i.avc = fadd reassoc nsz arcp contract afn double %i.avb, %i.ava ; 2 uses
  store double %i.avc, ptr %i.aez, align 16, !tbaa !105, !noalias !343
  %i.avd = getelementptr inbounds nuw i8, ptr %i.pq, i64 224
  %i.ave = load double, ptr %i.avd, align 32, !tbaa !105, !noalias !343
  %i.avf = fmul reassoc nsz arcp contract afn double %i.ave, %i.aux
  %i.avg = load double, ptr %i.agj, align 8, !tbaa !105, !noalias !343
  %i.avh = fadd reassoc nsz arcp contract afn double %i.avg, %i.avf
  store double %i.avh, ptr %i.agj, align 8, !tbaa !105, !noalias !343
  %i.avi = getelementptr inbounds nuw i8, ptr %i.pq, i64 296
  %i.avj = load double, ptr %i.avi, align 8, !tbaa !105, !noalias !343
  %i.avk = fmul reassoc nsz arcp contract afn double %i.avj, %i.aux
  %i.avl = load double, ptr %i.aht, align 32, !tbaa !105, !noalias !343
  %i.avm = fadd reassoc nsz arcp contract afn double %i.avl, %i.avk
  store double %i.avm, ptr %i.aht, align 32, !tbaa !105, !noalias !343
  %i.avn = getelementptr inbounds nuw i8, ptr %i.pq, i64 368
end_hunk_0
