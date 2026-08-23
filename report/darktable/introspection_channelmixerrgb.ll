Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixerrgb?download=true
inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@process:bb.a

vec.epilog.ph1327:                                ; preds = %iter.check1323, %vec.epilog.iter.check1325
  %vec.epilog.resume.val1321 = phi i64 [ %n.vec1291, %vec.epilog.iter.check1325 ], [ 0, %iter.check1323 ] ; 2 uses
  %bc.merge.rdx1322 = phi double [ %i.all, %vec.epilog.iter.check1325 ], [ 0.000000e+00, %iter.check1323 ]
  %n.vec1328 = and i64 %i.pp, -4                  ; 3 uses
  %i.alm = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1322, i64 0
  %broadcast.splatinsert1329 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1321, i64 0
  %broadcast.splat1330 = shufflevector <4 x i64> %broadcast.splatinsert1329, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1331 = or disjoint <4 x i64> %broadcast.splat1330, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1332

vec.epilog.vector.body1332:                       ; preds = %vec.epilog.vector.body1332, %vec.epilog.ph1327
  %index1333 = phi i64 [ %vec.epilog.resume.val1321, %vec.epilog.ph1327 ], [ %index.next1339, %vec.epilog.vector.body1332 ] ; 2 uses
  %vec.ind1334 = phi <4 x i64> [ %induction1331, %vec.epilog.ph1327 ], [ %vec.ind.next1340, %vec.epilog.vector.body1332 ] ; 2 uses
  %vec.phi1335 = phi <4 x double> [ %i.alm, %vec.epilog.ph1327 ], [ %i.alq, %vec.epilog.vector.body1332 ]
  %i.aln = mul <4 x i64> %vec.ind1334, splat (i64 72)
  %wide.gep1336 = getelementptr i8, ptr %invariant.gep.7.i.i.i, <4 x i64> %i.aln
  %wide.masked.gather1337 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1336, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !134, !alias.scope !175, !noalias !176
  %i.alo = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %index1333
  %wide.load1338 = load <4 x double>, ptr %i.alo, align 32, !tbaa !134, !alias.scope !177, !noalias !178
  %i.alp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1338, %wide.masked.gather1337
  %i.alq = fadd reassoc nsz arcp contract afn <4 x double> %i.alp, %vec.phi1335 ; 2 uses
  %index.next1339 = add nuw i64 %index1333, 4     ; 2 uses
  %vec.ind.next1340 = add nuw <4 x i64> %vec.ind1334, splat (i64 4)
  %i.alr = icmp eq i64 %index.next1339, %n.vec1328
  br i1 %i.alr, label %vec.epilog.middle.block1341, label %vec.epilog.vector.body1332, !llvm.loop !201

vec.epilog.middle.block1341:                      ; preds = %vec.epilog.vector.body1332
  %i.als = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.alq) ; 2 uses
  %cmp.n1342 = icmp eq i64 %i.pp, %n.vec1328
  br i1 %cmp.n1342, label %iter.check1381, label %vec.epilog.scalar.ph1324.preheader

vec.epilog.scalar.ph1324.preheader:               ; preds = %vec.epilog.iter.check1325, %vec.epilog.middle.block1341
  %.019.7.i.i.i.ph = phi i64 [ %n.vec1291, %vec.epilog.iter.check1325 ], [ %n.vec1328, %vec.epilog.middle.block1341 ]
  %.01518.7.i.i.i.ph = phi double [ %i.all, %vec.epilog.iter.check1325 ], [ %i.als, %vec.epilog.middle.block1341 ]
  br label %vec.epilog.scalar.ph1324

vec.epilog.scalar.ph1324:                         ; preds = %vec.epilog.scalar.ph1324.preheader, %vec.epilog.scalar.ph1324
  %.019.7.i.i.i = phi i64 [ %i.aly, %vec.epilog.scalar.ph1324 ], [ %.019.7.i.i.i.ph, %vec.epilog.scalar.ph1324.preheader ] ; 3 uses
  %.01518.7.i.i.i = phi double [ %i.alx, %vec.epilog.scalar.ph1324 ], [ %.01518.7.i.i.i.ph, %vec.epilog.scalar.ph1324.preheader ]
  %.idx.7.i.i.i = mul i64 %.019.7.i.i.i, 72
  %gep.7.i.i.i = getelementptr i8, ptr %invariant.gep.7.i.i.i, i64 %.idx.7.i.i.i
  %i.alt = load double, ptr %gep.7.i.i.i, align 8, !tbaa !134, !alias.scope !175, !noalias !176
  %i.alu = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %.019.7.i.i.i
  %i.alv = load double, ptr %i.alu, align 8, !tbaa !134, !alias.scope !177, !noalias !178
  %i.alw = fmul reassoc nsz arcp contract afn double %i.alv, %i.alt
  %i.alx = fadd reassoc nsz arcp contract afn double %i.alw, %.01518.7.i.i.i ; 2 uses
  %i.aly = add nuw i64 %.019.7.i.i.i, 1           ; 2 uses
  %exitcond.7.not.i48.i.i = icmp eq i64 %i.aly, %i.pp
  br i1 %exitcond.7.not.i48.i.i, label %iter.check1381, label %vec.epilog.scalar.ph1324, !llvm.loop !202

iter.check1381:                                   ; preds = %vec.epilog.scalar.ph1324, %vec.epilog.middle.block1341, %middle.block1316
  %.lcssa289 = phi double [ %i.als, %vec.epilog.middle.block1341 ], [ %i.all, %middle.block1316 ], [ %i.alx, %vec.epilog.scalar.ph1324 ]
  %i.alz = getelementptr inbounds nuw i8, ptr %i.pt, i64 56 ; 18 uses
  store double %.lcssa289, ptr %i.alz, align 8, !tbaa !134, !alias.scope !173, !noalias !181
  %invariant.gep.8.i.i.i = getelementptr i8, ptr %i.kv, i64 64 ; 6 uses
  %min.iters.check1347 = icmp ult i64 %i.pp, 16
  br i1 %min.iters.check1347, label %vec.epilog.ph1385, label %vector.ph1348

vector.ph1348:                                    ; preds = %iter.check1381
  %i.ama = and i64 %i.pp, 12
  %n.vec1349 = and i64 %i.pp, -16                 ; 4 uses
  br label %vector.body1350

vector.body1350:                                  ; preds = %vector.body1350, %vector.ph1348
  %index1351 = phi i64 [ 0, %vector.ph1348 ], [ %index.next1372, %vector.body1350 ] ; 2 uses
  %vec.ind1352 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1348 ], [ %vec.ind.next1373, %vector.body1350 ] ; 5 uses
  %vec.phi1353 = phi <4 x double> [ zeroinitializer, %vector.ph1348 ], [ %i.amq, %vector.body1350 ]
  %vec.phi1354 = phi <4 x double> [ zeroinitializer, %vector.ph1348 ], [ %i.amr, %vector.body1350 ]
  %vec.phi1355 = phi <4 x double> [ zeroinitializer, %vector.ph1348 ], [ %i.ams, %vector.body1350 ]
  %vec.phi1356 = phi <4 x double> [ zeroinitializer, %vector.ph1348 ], [ %i.amt, %vector.body1350 ]
  %i.amb = mul <4 x i64> %vec.ind1352, splat (i64 72)
  %i.amc = mul <4 x i64> %vec.ind1352, splat (i64 72)
  %i.amd = add <4 x i64> %i.amc, splat (i64 288)
  %i.ame = mul <4 x i64> %vec.ind1352, splat (i64 72)
  %i.amf = add <4 x i64> %i.ame, splat (i64 576)
  %i.amg = mul <4 x i64> %vec.ind1352, splat (i64 72)
  %i.amh = add <4 x i64> %i.amg, splat (i64 864)
  %wide.gep1360 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.amb
  %wide.gep1361 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.amd
  %wide.gep1362 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.amf
  %wide.gep1363 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.amh
  %wide.masked.gather1364 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1360, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !134, !alias.scope !175, !noalias !176
  %wide.masked.gather1365 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1361, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !134, !alias.scope !175, !noalias !176
  %wide.masked.gather1366 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1362, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !134, !alias.scope !175, !noalias !176
  %wide.masked.gather1367 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1363, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !134, !alias.scope !175, !noalias !176
  %i.ami = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %index1351 ; 4 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 32
  %i.amk = getelementptr inbounds nuw i8, ptr %i.ami, i64 64
  %i.aml = getelementptr inbounds nuw i8, ptr %i.ami, i64 96
  %wide.load1368 = load <4 x double>, ptr %i.ami, align 64, !tbaa !134, !alias.scope !177, !noalias !178
  %wide.load1369 = load <4 x double>, ptr %i.amj, align 32, !tbaa !134, !alias.scope !177, !noalias !178
  %wide.load1370 = load <4 x double>, ptr %i.amk, align 64, !tbaa !134, !alias.scope !177, !noalias !178
  %wide.load1371 = load <4 x double>, ptr %i.aml, align 32, !tbaa !134, !alias.scope !177, !noalias !178
  %i.amm = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1368, %wide.masked.gather1364
  %i.amn = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1369, %wide.masked.gather1365
  %i.amo = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1370, %wide.masked.gather1366
  %i.amp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1371, %wide.masked.gather1367
  %i.amq = fadd reassoc nsz arcp contract afn <4 x double> %i.amm, %vec.phi1353 ; 2 uses
  %i.amr = fadd reassoc nsz arcp contract afn <4 x double> %i.amn, %vec.phi1354 ; 2 uses
  %i.ams = fadd reassoc nsz arcp contract afn <4 x double> %i.amo, %vec.phi1355 ; 2 uses
  %i.amt = fadd reassoc nsz arcp contract afn <4 x double> %i.amp, %vec.phi1356 ; 2 uses
  %index.next1372 = add nuw i64 %index1351, 16    ; 2 uses
  %vec.ind.next1373 = add nuw <4 x i64> %vec.ind1352, splat (i64 16)
  %i.amu = icmp eq i64 %index.next1372, %n.vec1349
  br i1 %i.amu, label %middle.block1374, label %vector.body1350, !llvm.loop !203

middle.block1374:                                 ; preds = %vector.body1350
  %bin.rdx1375 = fadd reassoc nsz arcp contract afn <4 x double> %i.amr, %i.amq
  %bin.rdx1376 = fadd reassoc nsz arcp contract afn <4 x double> %i.ams, %bin.rdx1375
  %bin.rdx1377 = fadd reassoc nsz arcp contract afn <4 x double> %i.amt, %bin.rdx1376
  %i.amv = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1377) ; 3 uses
  %cmp.n1378 = icmp eq i64 %i.pp, %n.vec1349
  br i1 %cmp.n1378, label %transpose_dot_vector.exit.i.i, label %vec.epilog.iter.check1383

vec.epilog.iter.check1383:                        ; preds = %middle.block1374
  %min.epilog.iters.check1384 = icmp eq i64 %i.ama, 0
  br i1 %min.epilog.iters.check1384, label %vec.epilog.scalar.ph1382.preheader, label %vec.epilog.ph1385, !prof !140

vec.epilog.ph1385:                                ; preds = %iter.check1381, %vec.epilog.iter.check1383
  %vec.epilog.resume.val1379 = phi i64 [ %n.vec1349, %vec.epilog.iter.check1383 ], [ 0, %iter.check1381 ] ; 2 uses
  %bc.merge.rdx1380 = phi double [ %i.amv, %vec.epilog.iter.check1383 ], [ 0.000000e+00, %iter.check1381 ]
  %n.vec1386 = and i64 %i.pp, -4                  ; 3 uses
  %i.amw = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1380, i64 0
  %broadcast.splatinsert1387 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1379, i64 0
  %broadcast.splat1388 = shufflevector <4 x i64> %broadcast.splatinsert1387, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1389 = or disjoint <4 x i64> %broadcast.splat1388, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1390

vec.epilog.vector.body1390:                       ; preds = %vec.epilog.vector.body1390, %vec.epilog.ph1385
  %index1391 = phi i64 [ %vec.epilog.resume.val1379, %vec.epilog.ph1385 ], [ %index.next1397, %vec.epilog.vector.body1390 ] ; 2 uses
  %vec.ind1392 = phi <4 x i64> [ %induction1389, %vec.epilog.ph1385 ], [ %vec.ind.next1398, %vec.epilog.vector.body1390 ] ; 2 uses
  %vec.phi1393 = phi <4 x double> [ %i.amw, %vec.epilog.ph1385 ], [ %i.ana, %vec.epilog.vector.body1390 ]
  %i.amx = mul <4 x i64> %vec.ind1392, splat (i64 72)
  %wide.gep1394 = getelementptr i8, ptr %invariant.gep.8.i.i.i, <4 x i64> %i.amx
  %wide.masked.gather1395 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1394, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !134, !alias.scope !175, !noalias !176
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %index1391
  %wide.load1396 = load <4 x double>, ptr %i.amy, align 32, !tbaa !134, !alias.scope !177, !noalias !178
  %i.amz = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1396, %wide.masked.gather1395
  %i.ana = fadd reassoc nsz arcp contract afn <4 x double> %i.amz, %vec.phi1393 ; 2 uses
  %index.next1397 = add nuw i64 %index1391, 4     ; 2 uses
  %vec.ind.next1398 = add nuw <4 x i64> %vec.ind1392, splat (i64 4)
  %i.anb = icmp eq i64 %index.next1397, %n.vec1386
  br i1 %i.anb, label %vec.epilog.middle.block1399, label %vec.epilog.vector.body1390, !llvm.loop !204

vec.epilog.middle.block1399:                      ; preds = %vec.epilog.vector.body1390
  %i.anc = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ana) ; 2 uses
  %cmp.n1400 = icmp eq i64 %i.pp, %n.vec1386
  br i1 %cmp.n1400, label %transpose_dot_vector.exit.i.i, label %vec.epilog.scalar.ph1382.preheader

vec.epilog.scalar.ph1382.preheader:               ; preds = %vec.epilog.iter.check1383, %vec.epilog.middle.block1399
  %.019.8.i.i.i.ph = phi i64 [ %n.vec1349, %vec.epilog.iter.check1383 ], [ %n.vec1386, %vec.epilog.middle.block1399 ]
  %.01518.8.i.i.i.ph = phi double [ %i.amv, %vec.epilog.iter.check1383 ], [ %i.anc, %vec.epilog.middle.block1399 ]
  br label %vec.epilog.scalar.ph1382

vec.epilog.scalar.ph1382:                         ; preds = %vec.epilog.scalar.ph1382.preheader, %vec.epilog.scalar.ph1382
  %.019.8.i.i.i = phi i64 [ %i.ani, %vec.epilog.scalar.ph1382 ], [ %.019.8.i.i.i.ph, %vec.epilog.scalar.ph1382.preheader ] ; 3 uses
  %.01518.8.i.i.i = phi double [ %i.anh, %vec.epilog.scalar.ph1382 ], [ %.01518.8.i.i.i.ph, %vec.epilog.scalar.ph1382.preheader ]
  %.idx.8.i.i.i = mul i64 %.019.8.i.i.i, 72
  %gep.8.i.i.i = getelementptr i8, ptr %invariant.gep.8.i.i.i, i64 %.idx.8.i.i.i
  %i.and = load double, ptr %gep.8.i.i.i, align 8, !tbaa !134, !alias.scope !175, !noalias !176
  %i.ane = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %.019.8.i.i.i
  %i.anf = load double, ptr %i.ane, align 8, !tbaa !134, !alias.scope !177, !noalias !178
  %i.ang = fmul reassoc nsz arcp contract afn double %i.anf, %i.and
  %i.anh = fadd reassoc nsz arcp contract afn double %i.ang, %.01518.8.i.i.i ; 2 uses
  %i.ani = add nuw i64 %.019.8.i.i.i, 1           ; 2 uses
  %exitcond.8.not.i50.i.i = icmp eq i64 %i.ani, %i.pp
  br i1 %exitcond.8.not.i50.i.i, label %transpose_dot_vector.exit.i.i, label %vec.epilog.scalar.ph1382, !llvm.loop !205

vec.epilog.scalar.ph918:                          ; preds = %vec.epilog.scalar.ph918.preheader, %vec.epilog.scalar.ph918
  %.019.i.i.i = phi i64 [ %i.ano, %vec.epilog.scalar.ph918 ], [ %.019.i.i.i.ph, %vec.epilog.scalar.ph918.preheader ] ; 3 uses
  %.01518.i.i.i = phi double [ %i.ann, %vec.epilog.scalar.ph918 ], [ %.01518.i.i.i.ph, %vec.epilog.scalar.ph918.preheader ]
  %.idx.i33.i.i = mul i64 %.019.i.i.i, 72
  %gep.i.i.i = getelementptr i8, ptr %i.kv, i64 %.idx.i33.i.i
  %i.anj = load double, ptr %gep.i.i.i, align 8, !tbaa !134, !alias.scope !175, !noalias !176
  %i.ank = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %.019.i.i.i
  %i.anl = load double, ptr %i.ank, align 8, !tbaa !134, !alias.scope !177, !noalias !178
  %i.anm = fmul reassoc nsz arcp contract afn double %i.anl, %i.anj
  %i.ann = fadd reassoc nsz arcp contract afn double %i.anm, %.01518.i.i.i ; 2 uses
  %i.ano = add nuw i64 %.019.i.i.i, 1             ; 2 uses
  %exitcond.not.i34.i.i = icmp eq i64 %i.ano, %i.pp
  br i1 %exitcond.not.i34.i.i, label %iter.check975, label %vec.epilog.scalar.ph918, !llvm.loop !206

transpose_dot_vector.exit.i.i:                    ; preds = %vec.epilog.scalar.ph1382, %vec.epilog.middle.block1399, %middle.block1374
  %.lcssa = phi double [ %i.anc, %vec.epilog.middle.block1399 ], [ %i.amv, %middle.block1374 ], [ %i.anh, %vec.epilog.scalar.ph1382 ]
  %i.anp = getelementptr inbounds nuw i8, ptr %i.pt, i64 64 ; 18 uses
  store double %.lcssa, ptr %i.anp, align 64, !tbaa !134, !alias.scope !173, !noalias !181
  %i.anq = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #32, !noalias !128 ; 11 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 32
  store i32 8, ptr %i.anr, align 4, !tbaa !18, !noalias !128
  %scevgep1403 = getelementptr i8, ptr %i.ps, i64 648 ; 2 uses
  %scevgep1427 = getelementptr i8, ptr %i.ps, i64 72
  br label %bb.t

.loopexit.i.i.i.i:                                ; preds = %._crit_edge120.i.i.i.i, %.preheader110.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  %exitcond145.not.i.i.i.i = icmp eq i64 %indvars.iv.next143.i.i.i.i, 9
  br i1 %exitcond145.not.i.i.i.i, label %gauss_make_triangular.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.loopexit.i.i.i.i, %transpose_dot_vector.exit.i.i
  %indvars.iv142.i.i.i.i = phi i64 [ 0, %transpose_dot_vector.exit.i.i ], [ %indvars.iv.next143.i.i.i.i, %.loopexit.i.i.i.i ] ; 17 uses
  %indvars.iv.i.i.i.i = phi i64 [ 1, %transpose_dot_vector.exit.i.i ], [ %indvars.iv.next.i.i.i.i, %.loopexit.i.i.i.i ] ; 18 uses
  %i.ans = sub nsw i64 8, %indvars.iv142.i.i.i.i  ; 3 uses
  %i.ant = sub nsw i64 8, %indvars.iv142.i.i.i.i  ; 3 uses
  %i.anu = shl nuw nsw i64 %indvars.iv.i.i.i.i, 3
  %scevgep1425 = getelementptr i8, ptr %i.ps, i64 %i.anu
  %i.anv = mul nuw nsw i64 %indvars.iv142.i.i.i.i, 80
  %i.anw = getelementptr i8, ptr %i.ps, i64 %i.anv
  %scevgep1429 = getelementptr i8, ptr %i.anw, i64 8
  %i.anx = mul nuw nsw i64 %indvars.iv.i.i.i.i, 72
  %scevgep1430 = getelementptr i8, ptr %i.ps, i64 %i.anx
  %i.any = sub nsw i64 8, %indvars.iv142.i.i.i.i  ; 3 uses
  %i.anz = mul nuw nsw i64 %indvars.iv.i.i.i.i, 80
  %i.aoa = getelementptr i8, ptr %i.ps, i64 %i.anz ; 2 uses
  %6 = mul nuw nsw i64 %indvars.iv142.i.i.i.i, 80 ; 2 uses
  %i.aob = getelementptr i8, ptr %i.ps, i64 %6
  %scevgep1404 = getelementptr i8, ptr %i.aob, i64 72
  %i.aoc = shl nuw nsw i64 %indvars.iv142.i.i.i.i, 3
  %i.aod = getelementptr i8, ptr %i.ps, i64 %i.aoc
  %scevgep1405 = getelementptr i8, ptr %i.aod, i64 584
  %i.aoe = getelementptr i8, ptr %i.ps, i64 %6
  %scevgep1406 = getelementptr i8, ptr %i.aoe, i64 8
  %i.aof = mul nuw nsw i64 %indvars.iv.i.i.i.i, 72
  %scevgep1407 = getelementptr i8, ptr %i.ps, i64 %i.aof
  %indvars.iv.next143.i.i.i.i = add nuw nsw i64 %indvars.iv142.i.i.i.i, 1 ; 2 uses
  %i.aog = icmp samesign ult i64 %indvars.iv142.i.i.i.i, 8 ; 2 uses
  %i.aoh = trunc nuw nsw i64 %indvars.iv142.i.i.i.i to i32 ; 3 uses
  br i1 %i.aog, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.t
  %i.aoi = sub nsw i64 0, %indvars.iv142.i.i.i.i
  %invariant.gep.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv142.i.i.i.i ; 10 uses
  %xtraiter = and i64 %i.aoi, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i.i.prol
  %indvars.iv123.i.i.i.i.prol = phi i64 [ %indvars.iv.next124.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ], [ %indvars.iv.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.0100111.i.i.i.i.prol = phi i32 [ %.1101.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ], [ %i.aoh, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %.idx.i.i.i.i.prol = mul nuw nsw i64 %indvars.iv123.i.i.i.i.prol, 72
  %gep.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.prol
  %i.aoj = load double, ptr %gep.i.i.i.i.prol, align 8, !tbaa !134, !noalias !128
  %i.aok = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aoj)
  %i.aol = mul nuw nsw i32 %.0100111.i.i.i.i.prol, 9
  %i.aom = zext nneg i32 %i.aol to i64
  %i.aon = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.aom
  %i.aoo = load double, ptr %i.aon, align 8, !tbaa !134, !noalias !128
  %i.aop = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aoo)
  %i.aoq = fcmp reassoc nsz arcp contract afn ogt double %i.aok, %i.aop
  %i.aor = trunc nuw nsw i64 %indvars.iv123.i.i.i.i.prol to i32
  %.1101.i.i.i.i.prol = select i1 %i.aoq, i32 %i.aor, i32 %.0100111.i.i.i.i.prol ; 3 uses
  %indvars.iv.next124.i.i.i.i.prol = add nuw nsw i64 %indvars.iv123.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !207

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %.1101.i.i.i.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i.i.i.i ], [ %.1101.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %indvars.iv123.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next124.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.0100111.i.i.i.i.unr = phi i32 [ %i.aoh, %.lr.ph.preheader.i.i.i.i ], [ %.1101.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %i.aos = icmp ugt i64 %indvars.iv142.i.i.i.i, 4
  br i1 %i.aos, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.t
  %.0100.lcssa.i.i.i.i = phi i32 [ %i.aoh, %bb.t ], [ %.1101.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %.1101.i.i.i.i.3, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %indvars.iv142.i.i.i.i
  store i32 %.0100.lcssa.i.i.i.i, ptr %i.aot, align 4, !tbaa !18, !noalias !128
  %i.aou = mul nuw nsw i32 %.0100.lcssa.i.i.i.i, 9
  %i.aov = zext nneg i32 %i.aou to i64            ; 2 uses
  %i.aow = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv142.i.i.i.i ; 4 uses
  %i.aox = getelementptr inbounds nuw [8 x i8], ptr %i.aow, i64 %i.aov ; 2 uses
  %i.aoy = load double, ptr %i.aox, align 8, !tbaa !134, !noalias !128 ; 4 uses
  %i.aoz = mul nuw nsw i64 %indvars.iv142.i.i.i.i, 9 ; 2 uses
  %.idx146.i.i.i.i = mul nuw nsw i64 %indvars.iv142.i.i.i.i, 80
  %i.apa = getelementptr inbounds nuw i8, ptr %i.ps, i64 %.idx146.i.i.i.i ; 2 uses
  %i.apb = load double, ptr %i.apa, align 16, !tbaa !134, !noalias !128
  store double %i.apb, ptr %i.aox, align 8, !tbaa !134, !noalias !128
  store double %i.aoy, ptr %i.apa, align 16, !tbaa !134, !noalias !128
  %i.apc = fcmp reassoc nsz arcp contract afn une double %i.aoy, 0.000000e+00
  br i1 %i.apc, label %.preheader110.i.i.i.i, label %gauss_solve.exit.i.i

.preheader110.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i
  br i1 %i.aog, label %.lr.ph114.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph114.i.i.i.i.preheader:                      ; preds = %.preheader110.i.i.i.i
  %min.iters.check1447 = icmp ult i64 %i.ans, 4
  br i1 %min.iters.check1447, label %.lr.ph114.i.i.i.i.preheader1519, label %vector.ph1448

vector.ph1448:                                    ; preds = %.lr.ph114.i.i.i.i.preheader
  %n.vec1449 = and i64 %i.ans, 12                 ; 3 uses
  %i.apd = add nuw i64 %indvars.iv.i.i.i.i, %n.vec1449
  %broadcast.splatinsert1450 = insertelement <4 x double> poison, double %i.aoy, i64 0
  %broadcast.splat1451 = shufflevector <4 x double> %broadcast.splatinsert1450, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1452 = insertelement <4 x i64> poison, i64 %indvars.iv.i.i.i.i, i64 0
  %broadcast.splat1453 = shufflevector <4 x i64> %broadcast.splatinsert1452, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1454 = add nuw nsw <4 x i64> %broadcast.splat1453, <i64 0, i64 1, i64 2, i64 3>
  %i.ape = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1451
  br label %vector.body1455

vector.body1455:                                  ; preds = %vector.body1455, %vector.ph1448
  %index1456 = phi i64 [ 0, %vector.ph1448 ], [ %index.next1460, %vector.body1455 ]
  %vec.ind1457 = phi <4 x i64> [ %induction1454, %vector.ph1448 ], [ %vec.ind.next1461, %vector.body1455 ] ; 2 uses
  %i.apf = mul nuw nsw <4 x i64> %vec.ind1457, splat (i64 72)
  %wide.gep1458 = getelementptr inbounds nuw i8, ptr %i.aow, <4 x i64> %i.apf ; 2 uses
  %wide.masked.gather1459 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1458, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !134, !noalias !128
  %i.apg = fneg reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1459
  %i.aph = fmul reassoc nsz arcp contract afn <4 x double> %i.apg, %i.ape
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.aph, <4 x ptr> align 8 %wide.gep1458, <4 x i1> splat (i1 true)), !tbaa !134, !noalias !128
  %index.next1460 = add nuw i64 %index1456, 4     ; 2 uses
  %vec.ind.next1461 = add nuw nsw <4 x i64> %vec.ind1457, splat (i64 4)
  %i.api = icmp eq i64 %index.next1460, %n.vec1449
  br i1 %i.api, label %middle.block1462, label %vector.body1455, !llvm.loop !209

middle.block1462:                                 ; preds = %vector.body1455
  %cmp.n1463 = icmp eq i64 %i.ans, %n.vec1449
  br i1 %cmp.n1463, label %._crit_edge115.i.i.i.i, label %.lr.ph114.i.i.i.i.preheader1519

.lr.ph114.i.i.i.i.preheader1519:                  ; preds = %.lr.ph114.i.i.i.i.preheader, %middle.block1462
  %indvars.iv126.i.i.i.i.ph = phi i64 [ %indvars.iv.i.i.i.i, %.lr.ph114.i.i.i.i.preheader ], [ %i.apd, %middle.block1462 ]
  %i.apj = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aoy
  br label %.lr.ph114.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %indvars.iv123.i.i.i.i = phi i64 [ %indvars.iv.next124.i.i.i.i.3, %.lr.ph.i.i.i.i ], [ %indvars.iv123.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.0100111.i.i.i.i = phi i32 [ %.1101.i.i.i.i.3, %.lr.ph.i.i.i.i ], [ %.0100111.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %indvars.iv123.i.i.i.i, 72
  %gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i
  %i.apk = load double, ptr %gep.i.i.i.i, align 8, !tbaa !134, !noalias !128
  %i.apl = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.apk)
  %i.apm = mul nuw nsw i32 %.0100111.i.i.i.i, 9
  %i.apn = zext nneg i32 %i.apm to i64
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.apn
  %i.app = load double, ptr %i.apo, align 8, !tbaa !134, !noalias !128
  %i.apq = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.app)
  %i.apr = fcmp reassoc nsz arcp contract afn ogt double %i.apl, %i.apq
  %i.aps = trunc nuw nsw i64 %indvars.iv123.i.i.i.i to i32
  %.1101.i.i.i.i = select i1 %i.apr, i32 %i.aps, i32 %.0100111.i.i.i.i ; 2 uses
  %indvars.iv.next124.i.i.i.i = add nuw nsw i64 %indvars.iv123.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.1 = mul nuw nsw i64 %indvars.iv.next124.i.i.i.i, 72
  %gep.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.1
  %i.apt = load double, ptr %gep.i.i.i.i.1, align 8, !tbaa !134, !noalias !128
  %i.apu = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.apt)
  %i.apv = mul nuw nsw i32 %.1101.i.i.i.i, 9
  %i.apw = zext nneg i32 %i.apv to i64
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.apw
  %i.apy = load double, ptr %i.apx, align 8, !tbaa !134, !noalias !128
  %i.apz = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.apy)
  %i.aqa = fcmp reassoc nsz arcp contract afn ogt double %i.apu, %i.apz
  %i.aqb = trunc nuw nsw i64 %indvars.iv.next124.i.i.i.i to i32
  %.1101.i.i.i.i.1 = select i1 %i.aqa, i32 %i.aqb, i32 %.1101.i.i.i.i ; 2 uses
  %indvars.iv.next124.i.i.i.i.1 = add nuw nsw i64 %indvars.iv123.i.i.i.i, 2 ; 2 uses
  %.idx.i.i.i.i.2 = mul nuw nsw i64 %indvars.iv.next124.i.i.i.i.1, 72
  %gep.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.2
  %i.aqc = load double, ptr %gep.i.i.i.i.2, align 8, !tbaa !134, !noalias !128
  %i.aqd = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aqc)
  %i.aqe = mul nuw nsw i32 %.1101.i.i.i.i.1, 9
  %i.aqf = zext nneg i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.aqf
  %i.aqh = load double, ptr %i.aqg, align 8, !tbaa !134, !noalias !128
  %i.aqi = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aqh)
  %i.aqj = fcmp reassoc nsz arcp contract afn ogt double %i.aqd, %i.aqi
  %i.aqk = trunc nuw nsw i64 %indvars.iv.next124.i.i.i.i.1 to i32
  %.1101.i.i.i.i.2 = select i1 %i.aqj, i32 %i.aqk, i32 %.1101.i.i.i.i.1 ; 2 uses
  %indvars.iv.next124.i.i.i.i.2 = add nuw nsw i64 %indvars.iv123.i.i.i.i, 3 ; 2 uses
  %.idx.i.i.i.i.3 = mul nuw nsw i64 %indvars.iv.next124.i.i.i.i.2, 72
  %gep.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i.i, i64 %.idx.i.i.i.i.3
  %i.aql = load double, ptr %gep.i.i.i.i.3, align 8, !tbaa !134, !noalias !128
  %i.aqm = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aql)
  %i.aqn = mul nuw nsw i32 %.1101.i.i.i.i.2, 9
  %i.aqo = zext nneg i32 %i.aqn to i64
  %i.aqp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.aqo
  %i.aqq = load double, ptr %i.aqp, align 8, !tbaa !134, !noalias !128
  %i.aqr = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aqq)
  %i.aqs = fcmp reassoc nsz arcp contract afn ogt double %i.aqm, %i.aqr
  %i.aqt = trunc nuw nsw i64 %indvars.iv.next124.i.i.i.i.2 to i32
  %.1101.i.i.i.i.3 = select i1 %i.aqs, i32 %i.aqt, i32 %.1101.i.i.i.i.2 ; 2 uses
  %indvars.iv.next124.i.i.i.i.3 = add nuw nsw i64 %indvars.iv123.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next124.i.i.i.i.3, 9
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge115.i.i.i.i:                           ; preds = %.lr.ph114.i.i.i.i, %middle.block1462
  %i.aqu = zext i32 %.0100.lcssa.i.i.i.i to i64   ; 2 uses
  %.not.not.i.i.i.i = icmp eq i64 %indvars.iv142.i.i.i.i, %i.aqu
  br i1 %.not.not.i.i.i.i, label %.preheader.preheader.i.i.i.i, label %.lr.ph117.preheader.i.i.i.i

.lr.ph117.preheader.i.i.i.i:                      ; preds = %._crit_edge115.i.i.i.i
  %invariant.gep152.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.aov ; 6 uses
  %invariant.gep154.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.aoz ; 6 uses
  %min.iters.check1435 = icmp ult i64 %i.ant, 4
  br i1 %min.iters.check1435, label %.lr.ph117.i.i.i.i.preheader, label %vector.memcheck1424

vector.memcheck1424:                              ; preds = %.lr.ph117.preheader.i.i.i.i
  %i.aqv = mul nuw nsw i64 %i.aqu, 72             ; 2 uses
  %scevgep1426 = getelementptr i8, ptr %scevgep1425, i64 %i.aqv
  %scevgep1428 = getelementptr i8, ptr %scevgep1427, i64 %i.aqv
  %bound01431 = icmp ult ptr %scevgep1426, %scevgep1430
  %bound11432 = icmp ult ptr %scevgep1429, %scevgep1428
  %found.conflict1433 = and i1 %bound01431, %bound11432
  br i1 %found.conflict1433, label %.lr.ph117.i.i.i.i.preheader, label %vector.ph1436

vector.ph1436:                                    ; preds = %vector.memcheck1424
  %n.vec1437 = and i64 %i.ant, 12                 ; 3 uses
  %i.aqw = add nuw i64 %indvars.iv.i.i.i.i, %n.vec1437
  br label %vector.body1438

vector.body1438:                                  ; preds = %vector.body1438, %vector.ph1436
  %index1439 = phi i64 [ 0, %vector.ph1436 ], [ %index.next1442, %vector.body1438 ] ; 2 uses
  %i.aqx = add nuw i64 %indvars.iv.i.i.i.i, %index1439 ; 2 uses
  %i.aqy = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep152.i.i.i.i, i64 %i.aqx ; 2 uses
  %wide.load1440 = load <4 x double>, ptr %i.aqy, align 8, !tbaa !134, !alias.scope !210, !noalias !213
  %i.aqz = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep154.i.i.i.i, i64 %i.aqx ; 2 uses
  %wide.load1441 = load <4 x double>, ptr %i.aqz, align 8, !tbaa !134, !alias.scope !215, !noalias !128
  store <4 x double> %wide.load1441, ptr %i.aqy, align 8, !tbaa !134, !alias.scope !210, !noalias !213
  store <4 x double> %wide.load1440, ptr %i.aqz, align 8, !tbaa !134, !alias.scope !215, !noalias !128
  %index.next1442 = add nuw i64 %index1439, 4     ; 2 uses
  %i.ara = icmp eq i64 %index.next1442, %n.vec1437
  br i1 %i.ara, label %middle.block1443, label %vector.body1438, !llvm.loop !216

middle.block1443:                                 ; preds = %vector.body1438
  %cmp.n1444 = icmp eq i64 %i.ant, %n.vec1437
  br i1 %cmp.n1444, label %.preheader.preheader.i.i.i.i, label %.lr.ph117.i.i.i.i.preheader

.lr.ph117.i.i.i.i.preheader:                      ; preds = %vector.memcheck1424, %.lr.ph117.preheader.i.i.i.i, %middle.block1443
  %indvars.iv130.i.i.i.i.ph = phi i64 [ %indvars.iv.i.i.i.i, %vector.memcheck1424 ], [ %indvars.iv.i.i.i.i, %.lr.ph117.preheader.i.i.i.i ], [ %i.aqw, %middle.block1443 ] ; 4 uses
  %i.arb = sub i64 1, %indvars.iv130.i.i.i.i.ph
  %xtraiter1628 = and i64 %i.arb, 3               ; 2 uses
  %lcmp.mod1629.not = icmp eq i64 %xtraiter1628, 0
  br i1 %lcmp.mod1629.not, label %.lr.ph117.i.i.i.i.prol.loopexit, label %.lr.ph117.i.i.i.i.prol

.lr.ph117.i.i.i.i.prol:                           ; preds = %.lr.ph117.i.i.i.i.preheader, %.lr.ph117.i.i.i.i.prol
  %indvars.iv130.i.i.i.i.prol = phi i64 [ %indvars.iv.next131.i.i.i.i.prol, %.lr.ph117.i.i.i.i.prol ], [ %indvars.iv130.i.i.i.i.ph, %.lr.ph117.i.i.i.i.preheader ] ; 3 uses
  %prol.iter1630 = phi i64 [ %prol.iter1630.next, %.lr.ph117.i.i.i.i.prol ], [ 0, %.lr.ph117.i.i.i.i.preheader ]
  %gep153.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep152.i.i.i.i, i64 %indvars.iv130.i.i.i.i.prol ; 2 uses
  %i.arc = load double, ptr %gep153.i.i.i.i.prol, align 8, !tbaa !134, !noalias !128
  %gep155.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep154.i.i.i.i, i64 %indvars.iv130.i.i.i.i.prol ; 2 uses
  %i.ard = load double, ptr %gep155.i.i.i.i.prol, align 8, !tbaa !134, !noalias !128
  store double %i.ard, ptr %gep153.i.i.i.i.prol, align 8, !tbaa !134, !noalias !128
  store double %i.arc, ptr %gep155.i.i.i.i.prol, align 8, !tbaa !134, !noalias !128
  %indvars.iv.next131.i.i.i.i.prol = add nuw nsw i64 %indvars.iv130.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1630.next = add i64 %prol.iter1630, 1 ; 2 uses
  %prol.iter1630.cmp.not = icmp eq i64 %prol.iter1630.next, %xtraiter1628
  br i1 %prol.iter1630.cmp.not, label %.lr.ph117.i.i.i.i.prol.loopexit, label %.lr.ph117.i.i.i.i.prol, !llvm.loop !217

.lr.ph117.i.i.i.i.prol.loopexit:                  ; preds = %.lr.ph117.i.i.i.i.prol, %.lr.ph117.i.i.i.i.preheader
  %indvars.iv130.i.i.i.i.unr = phi i64 [ %indvars.iv130.i.i.i.i.ph, %.lr.ph117.i.i.i.i.preheader ], [ %indvars.iv.next131.i.i.i.i.prol, %.lr.ph117.i.i.i.i.prol ]
  %i.are = add i64 %indvars.iv130.i.i.i.i.ph, -6
  %i.arf = icmp ult i64 %i.are, 3
  br i1 %i.arf, label %.preheader.preheader.i.i.i.i, label %.lr.ph117.i.i.i.i

.lr.ph114.i.i.i.i:                                ; preds = %.lr.ph114.i.i.i.i.preheader1519, %.lr.ph114.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ %indvars.iv.next127.i.i.i.i, %.lr.ph114.i.i.i.i ], [ %indvars.iv126.i.i.i.i.ph, %.lr.ph114.i.i.i.i.preheader1519 ] ; 2 uses
  %.idx147.i.i.i.i = mul nuw nsw i64 %indvars.iv126.i.i.i.i, 72
  %gep151.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aow, i64 %.idx147.i.i.i.i ; 2 uses
  %i.arg = load double, ptr %gep151.i.i.i.i, align 8, !tbaa !134, !noalias !128
  %i.arh = fneg reassoc nsz arcp contract afn double %i.arg
  %i.ari = fmul reassoc nsz arcp contract afn double %i.arh, %i.apj
  store double %i.ari, ptr %gep151.i.i.i.i, align 8, !tbaa !134, !noalias !128
  %indvars.iv.next127.i.i.i.i = add nuw nsw i64 %indvars.iv126.i.i.i.i, 1 ; 2 uses
  %exitcond129.not.i.i.i.i = icmp eq i64 %indvars.iv.next127.i.i.i.i, 9
  br i1 %exitcond129.not.i.i.i.i, label %._crit_edge115.i.i.i.i, label %.lr.ph114.i.i.i.i, !llvm.loop !218

.lr.ph117.i.i.i.i:                                ; preds = %.lr.ph117.i.i.i.i.prol.loopexit, %.lr.ph117.i.i.i.i
  %indvars.iv130.i.i.i.i = phi i64 [ %indvars.iv.next131.i.i.i.i.3, %.lr.ph117.i.i.i.i ], [ %indvars.iv130.i.i.i.i.unr, %.lr.ph117.i.i.i.i.prol.loopexit ] ; 6 uses
  %gep153.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep152.i.i.i.i, i64 %indvars.iv130.i.i.i.i ; 2 uses
  %i.arj = load double, ptr %gep153.i.i.i.i, align 8, !tbaa !134, !noalias !128
  %gep155.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep154.i.i.i.i, i64 %indvars.iv130.i.i.i.i ; 2 uses
  %i.ark = load double, ptr %gep155.i.i.i.i, align 8, !tbaa !134, !noalias !128
  store double %i.ark, ptr %gep153.i.i.i.i, align 8, !tbaa !134, !noalias !128
  store double %i.arj, ptr %gep155.i.i.i.i, align 8, !tbaa !134, !noalias !128
  %indvars.iv.next131.i.i.i.i = add nuw nsw i64 %indvars.iv130.i.i.i.i, 1 ; 2 uses
  %gep153.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep152.i.i.i.i, i64 %indvars.iv.next131.i.i.i.i ; 2 uses
  %i.arl = load double, ptr %gep153.i.i.i.i.1, align 8, !tbaa !134, !noalias !128
  %gep155.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep154.i.i.i.i, i64 %indvars.iv.next131.i.i.i.i ; 2 uses
  %i.arm = load double, ptr %gep155.i.i.i.i.1, align 8, !tbaa !134, !noalias !128
  store double %i.arm, ptr %gep153.i.i.i.i.1, align 8, !tbaa !134, !noalias !128
  store double %i.arl, ptr %gep155.i.i.i.i.1, align 8, !tbaa !134, !noalias !128
  %indvars.iv.next131.i.i.i.i.1 = add nuw nsw i64 %indvars.iv130.i.i.i.i, 2 ; 2 uses
  %gep153.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep152.i.i.i.i, i64 %indvars.iv.next131.i.i.i.i.1 ; 2 uses
  %i.arn = load double, ptr %gep153.i.i.i.i.2, align 8, !tbaa !134, !noalias !128
  %gep155.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep154.i.i.i.i, i64 %indvars.iv.next131.i.i.i.i.1 ; 2 uses
  %i.aro = load double, ptr %gep155.i.i.i.i.2, align 8, !tbaa !134, !noalias !128
  store double %i.aro, ptr %gep153.i.i.i.i.2, align 8, !tbaa !134, !noalias !128
  store double %i.arn, ptr %gep155.i.i.i.i.2, align 8, !tbaa !134, !noalias !128
  %indvars.iv.next131.i.i.i.i.2 = add nuw nsw i64 %indvars.iv130.i.i.i.i, 3 ; 2 uses
  %gep153.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep152.i.i.i.i, i64 %indvars.iv.next131.i.i.i.i.2 ; 2 uses
  %i.arp = load double, ptr %gep153.i.i.i.i.3, align 8, !tbaa !134, !noalias !128
  %gep155.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep154.i.i.i.i, i64 %indvars.iv.next131.i.i.i.i.2 ; 2 uses
  %i.arq = load double, ptr %gep155.i.i.i.i.3, align 8, !tbaa !134, !noalias !128
  store double %i.arq, ptr %gep153.i.i.i.i.3, align 8, !tbaa !134, !noalias !128
  store double %i.arp, ptr %gep155.i.i.i.i.3, align 8, !tbaa !134, !noalias !128
  %indvars.iv.next131.i.i.i.i.3 = add nuw nsw i64 %indvars.iv130.i.i.i.i, 4 ; 2 uses
  %exitcond133.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next131.i.i.i.i.3, 9
  br i1 %exitcond133.not.i.i.i.i.3, label %.preheader.preheader.i.i.i.i, label %.lr.ph117.i.i.i.i, !llvm.loop !219

.preheader.preheader.i.i.i.i:                     ; preds = %.lr.ph117.i.i.i.i.prol.loopexit, %.lr.ph117.i.i.i.i, %middle.block1443, %._crit_edge115.i.i.i.i
  %invariant.gep156.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.aoz ; 6 uses
  %min.iters.check1411 = icmp ult i64 %i.any, 4
  %bound0 = icmp ult ptr %i.aoa, %scevgep1405
  %bound1 = icmp ult ptr %scevgep1404, %scevgep1403
  %found.conflict = and i1 %bound0, %bound1
  %bound01408 = icmp ult ptr %i.aoa, %scevgep1407
  %bound11409 = icmp ult ptr %scevgep1406, %scevgep1403
  %found.conflict1410 = and i1 %bound01408, %bound11409
  %conflict.rdx = or i1 %found.conflict, %found.conflict1410
  %n.vec1413 = and i64 %i.any, 12                 ; 3 uses
  %i.arr = add nuw i64 %indvars.iv.i.i.i.i, %n.vec1413
  %cmp.n1422 = icmp eq i64 %i.any, %n.vec1413
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %._crit_edge120.i.i.i.i, %.preheader.preheader.i.i.i.i
  %indvars.iv138.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i, %.preheader.preheader.i.i.i.i ], [ %indvars.iv.next139.i.i.i.i, %._crit_edge120.i.i.i.i ] ; 2 uses
  %i.ars = mul nuw nsw i64 %indvars.iv138.i.i.i.i, 9 ; 2 uses
  %gep161.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.aow, i64 %i.ars ; 6 uses
  %invariant.gep158.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.ars ; 6 uses
  %brmerge = select i1 %min.iters.check1411, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph1412

vector.ph1412:                                    ; preds = %.preheader.i.i.i.i
  %i.art = load double, ptr %gep161.i.i.i.i, align 8, !tbaa !134, !alias.scope !220, !noalias !128
  %broadcast.splatinsert1417 = insertelement <4 x double> poison, double %i.art, i64 0
  %broadcast.splat1418 = shufflevector <4 x double> %broadcast.splatinsert1417, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1414

vector.body1414:                                  ; preds = %vector.body1414, %vector.ph1412
  %index1415 = phi i64 [ 0, %vector.ph1412 ], [ %index.next1420, %vector.body1414 ] ; 2 uses
  %i.aru = add nuw i64 %indvars.iv.i.i.i.i, %index1415 ; 2 uses
  %i.arv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep156.i.i.i.i, i64 %i.aru
  %wide.load1416 = load <4 x double>, ptr %i.arv, align 8, !tbaa !134, !alias.scope !223, !noalias !128
  %i.arw = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1416, %broadcast.splat1418
  %i.arx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i.i.i.i, i64 %i.aru ; 2 uses
  %wide.load1419 = load <4 x double>, ptr %i.arx, align 8, !tbaa !134, !alias.scope !225, !noalias !227
  %i.ary = fadd reassoc nsz arcp contract afn <4 x double> %wide.load1419, %i.arw
  store <4 x double> %i.ary, ptr %i.arx, align 8, !tbaa !134, !alias.scope !225, !noalias !227
  %index.next1420 = add nuw i64 %index1415, 4     ; 2 uses
  %i.arz = icmp eq i64 %index.next1420, %n.vec1413
  br i1 %i.arz, label %middle.block1421, label %vector.body1414, !llvm.loop !228

middle.block1421:                                 ; preds = %vector.body1414
  br i1 %cmp.n1422, label %._crit_edge120.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i, %middle.block1421
  %indvars.iv134.i.i.i.i.ph = phi i64 [ %i.arr, %middle.block1421 ], [ %indvars.iv.i.i.i.i, %.preheader.i.i.i.i ] ; 4 uses
  %i.asa = sub i64 1, %indvars.iv134.i.i.i.i.ph
  %xtraiter1631 = and i64 %i.asa, 3               ; 2 uses
  %lcmp.mod1632.not = icmp eq i64 %xtraiter1631, 0
  br i1 %lcmp.mod1632.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv134.i.i.i.i.prol = phi i64 [ %indvars.iv.next135.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv134.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter1633 = phi i64 [ %prol.iter1633.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.asb = load double, ptr %gep161.i.i.i.i, align 8, !tbaa !134, !noalias !128
  %gep157.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep156.i.i.i.i, i64 %indvars.iv134.i.i.i.i.prol
  %i.asc = load double, ptr %gep157.i.i.i.i.prol, align 8, !tbaa !134, !noalias !128
  %i.asd = fmul reassoc nsz arcp contract afn double %i.asc, %i.asb
  %gep159.i.i.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i.i.i.i, i64 %indvars.iv134.i.i.i.i.prol ; 2 uses
  %i.ase = load double, ptr %gep159.i.i.i.i.prol, align 8, !tbaa !134, !noalias !128
  %i.asf = fadd reassoc nsz arcp contract afn double %i.ase, %i.asd
  store double %i.asf, ptr %gep159.i.i.i.i.prol, align 8, !tbaa !134, !noalias !128
  %indvars.iv.next135.i.i.i.i.prol = add nuw nsw i64 %indvars.iv134.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1633.next = add i64 %prol.iter1633, 1 ; 2 uses
  %prol.iter1633.cmp.not = icmp eq i64 %prol.iter1633.next, %xtraiter1631
  br i1 %prol.iter1633.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !229

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv134.i.i.i.i.unr = phi i64 [ %indvars.iv134.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next135.i.i.i.i.prol, %scalar.ph.prol ]
  %i.asg = add i64 %indvars.iv134.i.i.i.i.ph, -6
  %i.ash = icmp ult i64 %i.asg, 3
  br i1 %i.ash, label %._crit_edge120.i.i.i.i, label %scalar.ph

._crit_edge120.i.i.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block1421
  %indvars.iv.next139.i.i.i.i = add nuw nsw i64 %indvars.iv138.i.i.i.i, 1 ; 2 uses
  %exitcond141.not.i.i.i.i = icmp eq i64 %indvars.iv.next139.i.i.i.i, 9
  br i1 %exitcond141.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.preheader.i.i.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv134.i.i.i.i = phi i64 [ %indvars.iv.next135.i.i.i.i.3, %scalar.ph ], [ %indvars.iv134.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.asi = load double, ptr %gep161.i.i.i.i, align 8, !tbaa !134, !noalias !128
  %gep157.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep156.i.i.i.i, i64 %indvars.iv134.i.i.i.i
  %i.asj = load double, ptr %gep157.i.i.i.i, align 8, !tbaa !134, !noalias !128
  %i.ask = fmul reassoc nsz arcp contract afn double %i.asj, %i.asi
  %gep159.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i.i.i.i, i64 %indvars.iv134.i.i.i.i ; 2 uses
  %i.asl = load double, ptr %gep159.i.i.i.i, align 8, !tbaa !134, !noalias !128
  %i.asm = fadd reassoc nsz arcp contract afn double %i.asl, %i.ask
  store double %i.asm, ptr %gep159.i.i.i.i, align 8, !tbaa !134, !noalias !128
  %indvars.iv.next135.i.i.i.i = add nuw nsw i64 %indvars.iv134.i.i.i.i, 1 ; 2 uses
  %i.asn = load double, ptr %gep161.i.i.i.i, align 8, !tbaa !134, !noalias !128
  %gep157.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep156.i.i.i.i, i64 %indvars.iv.next135.i.i.i.i
  %i.aso = load double, ptr %gep157.i.i.i.i.1, align 8, !tbaa !134, !noalias !128
  %i.asp = fmul reassoc nsz arcp contract afn double %i.aso, %i.asn
  %gep159.i.i.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i.i.i.i, i64 %indvars.iv.next135.i.i.i.i ; 2 uses
  %i.asq = load double, ptr %gep159.i.i.i.i.1, align 8, !tbaa !134, !noalias !128
  %i.asr = fadd reassoc nsz arcp contract afn double %i.asq, %i.asp
  store double %i.asr, ptr %gep159.i.i.i.i.1, align 8, !tbaa !134, !noalias !128
  %indvars.iv.next135.i.i.i.i.1 = add nuw nsw i64 %indvars.iv134.i.i.i.i, 2 ; 2 uses
  %i.ass = load double, ptr %gep161.i.i.i.i, align 8, !tbaa !134, !noalias !128
  %gep157.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep156.i.i.i.i, i64 %indvars.iv.next135.i.i.i.i.1
  %i.ast = load double, ptr %gep157.i.i.i.i.2, align 8, !tbaa !134, !noalias !128
  %i.asu = fmul reassoc nsz arcp contract afn double %i.ast, %i.ass
  %gep159.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i.i.i.i, i64 %indvars.iv.next135.i.i.i.i.1 ; 2 uses
  %i.asv = load double, ptr %gep159.i.i.i.i.2, align 8, !tbaa !134, !noalias !128
  %i.asw = fadd reassoc nsz arcp contract afn double %i.asv, %i.asu
  store double %i.asw, ptr %gep159.i.i.i.i.2, align 8, !tbaa !134, !noalias !128
  %indvars.iv.next135.i.i.i.i.2 = add nuw nsw i64 %indvars.iv134.i.i.i.i, 3 ; 2 uses
  %i.asx = load double, ptr %gep161.i.i.i.i, align 8, !tbaa !134, !noalias !128
  %gep157.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep156.i.i.i.i, i64 %indvars.iv.next135.i.i.i.i.2
  %i.asy = load double, ptr %gep157.i.i.i.i.3, align 8, !tbaa !134, !noalias !128
  %i.asz = fmul reassoc nsz arcp contract afn double %i.asy, %i.asx
  %gep159.i.i.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i.i.i.i, i64 %indvars.iv.next135.i.i.i.i.2 ; 2 uses
  %i.ata = load double, ptr %gep159.i.i.i.i.3, align 8, !tbaa !134, !noalias !128
  %i.atb = fadd reassoc nsz arcp contract afn double %i.ata, %i.asz
  store double %i.atb, ptr %gep159.i.i.i.i.3, align 8, !tbaa !134, !noalias !128
  %indvars.iv.next135.i.i.i.i.3 = add nuw nsw i64 %indvars.iv134.i.i.i.i, 4 ; 2 uses
  %exitcond137.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next135.i.i.i.i.3, 9
  br i1 %exitcond137.not.i.i.i.i.3, label %._crit_edge120.i.i.i.i, label %scalar.ph, !llvm.loop !230

gauss_make_triangular.exit.i.i.i:                 ; preds = %.loopexit.i.i.i.i
  %i.atc = load i32, ptr %i.anq, align 4, !tbaa !18, !noalias !128
  %i.atd = sext i32 %i.atc to i64
  %i.ate = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.atd ; 2 uses
  %i.atf = load double, ptr %i.ate, align 8, !tbaa !134, !noalias !128 ; 9 uses
  %i.atg = load double, ptr %i.pt, align 64, !tbaa !134, !noalias !128
  store double %i.atg, ptr %i.ate, align 8, !tbaa !134, !noalias !128
  store double %i.atf, ptr %i.pt, align 64, !tbaa !134, !noalias !128
  %i.ath = getelementptr inbounds nuw i8, ptr %i.ps, i64 72
  %i.ati = load double, ptr %i.ath, align 8, !tbaa !134, !noalias !128
  %i.atj = fmul reassoc nsz arcp contract afn double %i.ati, %i.atf
  %i.atk = load double, ptr %i.adr, align 8, !tbaa !134, !noalias !128
  %i.atl = fadd reassoc nsz arcp contract afn double %i.atk, %i.atj ; 2 uses
  store double %i.atl, ptr %i.adr, align 8, !tbaa !134, !noalias !128
  %i.atm = getelementptr inbounds nuw i8, ptr %i.ps, i64 144
  %i.atn = load double, ptr %i.atm, align 16, !tbaa !134, !noalias !128
  %i.ato = fmul reassoc nsz arcp contract afn double %i.atn, %i.atf
  %i.atp = load double, ptr %i.afb, align 16, !tbaa !134, !noalias !128
  %i.atq = fadd reassoc nsz arcp contract afn double %i.atp, %i.ato
  store double %i.atq, ptr %i.afb, align 16, !tbaa !134, !noalias !128
  %i.atr = getelementptr inbounds nuw i8, ptr %i.ps, i64 216
  %i.ats = load double, ptr %i.atr, align 8, !tbaa !134, !noalias !128
  %i.att = fmul reassoc nsz arcp contract afn double %i.ats, %i.atf
  %i.atu = load double, ptr %i.agl, align 8, !tbaa !134, !noalias !128
  %i.atv = fadd reassoc nsz arcp contract afn double %i.atu, %i.att
  store double %i.atv, ptr %i.agl, align 8, !tbaa !134, !noalias !128
  %i.atw = getelementptr inbounds nuw i8, ptr %i.ps, i64 288
  %i.atx = load double, ptr %i.atw, align 32, !tbaa !134, !noalias !128
  %i.aty = fmul reassoc nsz arcp contract afn double %i.atx, %i.atf
  %i.atz = load double, ptr %i.ahv, align 32, !tbaa !134, !noalias !128
  %i.aua = fadd reassoc nsz arcp contract afn double %i.atz, %i.aty
  store double %i.aua, ptr %i.ahv, align 32, !tbaa !134, !noalias !128
  %i.aub = getelementptr inbounds nuw i8, ptr %i.ps, i64 360
  %i.auc = load double, ptr %i.aub, align 8, !tbaa !134, !noalias !128
  %i.aud = fmul reassoc nsz arcp contract afn double %i.auc, %i.atf
  %i.aue = load double, ptr %i.ajf, align 8, !tbaa !134, !noalias !128
  %i.auf = fadd reassoc nsz arcp contract afn double %i.aue, %i.aud
  store double %i.auf, ptr %i.ajf, align 8, !tbaa !134, !noalias !128
  %i.aug = getelementptr inbounds nuw i8, ptr %i.ps, i64 432
  %i.auh = load double, ptr %i.aug, align 16, !tbaa !134, !noalias !128
  %i.aui = fmul reassoc nsz arcp contract afn double %i.auh, %i.atf
  %i.auj = load double, ptr %i.akp, align 16, !tbaa !134, !noalias !128
  %i.auk = fadd reassoc nsz arcp contract afn double %i.auj, %i.aui
  store double %i.auk, ptr %i.akp, align 16, !tbaa !134, !noalias !128
  %i.aul = getelementptr inbounds nuw i8, ptr %i.ps, i64 504
  %i.aum = load double, ptr %i.aul, align 8, !tbaa !134, !noalias !128
  %i.aun = fmul reassoc nsz arcp contract afn double %i.aum, %i.atf
  %i.auo = load double, ptr %i.alz, align 8, !tbaa !134, !noalias !128
  %i.aup = fadd reassoc nsz arcp contract afn double %i.auo, %i.aun
  store double %i.aup, ptr %i.alz, align 8, !tbaa !134, !noalias !128
  %i.auq = getelementptr inbounds nuw i8, ptr %i.ps, i64 576
  %i.aur = load double, ptr %i.auq, align 64, !tbaa !134, !noalias !128
  %i.aus = fmul reassoc nsz arcp contract afn double %i.aur, %i.atf
  %i.aut = load double, ptr %i.anp, align 64, !tbaa !134, !noalias !128
  %i.auu = fadd reassoc nsz arcp contract afn double %i.aut, %i.aus
  store double %i.auu, ptr %i.anp, align 64, !tbaa !134, !noalias !128
  %i.auv = getelementptr inbounds nuw i8, ptr %i.anq, i64 4
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !18, !noalias !128
  %i.aux = sext i32 %i.auw to i64
  %i.auy = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.aux ; 2 uses
  %i.auz = load double, ptr %i.auy, align 8, !tbaa !134, !noalias !128 ; 8 uses
  store double %i.atl, ptr %i.auy, align 8, !tbaa !134, !noalias !128
  store double %i.auz, ptr %i.adr, align 8, !tbaa !134, !noalias !128
  %i.ava = getelementptr inbounds nuw i8, ptr %i.ps, i64 152
  %i.avb = load double, ptr %i.ava, align 8, !tbaa !134, !noalias !128
  %i.avc = fmul reassoc nsz arcp contract afn double %i.avb, %i.auz
  %i.avd = load double, ptr %i.afb, align 16, !tbaa !134, !noalias !128
  %i.ave = fadd reassoc nsz arcp contract afn double %i.avd, %i.avc ; 2 uses
  store double %i.ave, ptr %i.afb, align 16, !tbaa !134, !noalias !128
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ps, i64 224
  %i.avg = load double, ptr %i.avf, align 32, !tbaa !134, !noalias !128
  %i.avh = fmul reassoc nsz arcp contract afn double %i.avg, %i.auz
  %i.avi = load double, ptr %i.agl, align 8, !tbaa !134, !noalias !128
  %i.avj = fadd reassoc nsz arcp contract afn double %i.avi, %i.avh
  store double %i.avj, ptr %i.agl, align 8, !tbaa !134, !noalias !128
  %i.avk = getelementptr inbounds nuw i8, ptr %i.ps, i64 296
  %i.avl = load double, ptr %i.avk, align 8, !tbaa !134, !noalias !128
  %i.avm = fmul reassoc nsz arcp contract afn double %i.avl, %i.auz
  %i.avn = load double, ptr %i.ahv, align 32, !tbaa !134, !noalias !128
  %i.avo = fadd reassoc nsz arcp contract afn double %i.avn, %i.avm
  store double %i.avo, ptr %i.ahv, align 32, !tbaa !134, !noalias !128
  %i.avp = getelementptr inbounds nuw i8, ptr %i.ps, i64 368
  %i.avq = load double, ptr %i.avp, align 16, !tbaa !134, !noalias !128
  %i.avr = fmul reassoc nsz arcp contract afn double %i.avq, %i.auz
  %i.avs = load double, ptr %i.ajf, align 8, !tbaa !134, !noalias !128
  %i.avt = fadd reassoc nsz arcp contract afn double %i.avs, %i.avr
end_hunk_0
