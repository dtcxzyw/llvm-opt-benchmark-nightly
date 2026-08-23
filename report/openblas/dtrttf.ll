Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrttf?download=true
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@dtrttf_:bb.a

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
  %indvars.iv831.ph = phi i64 [ %indvars.iv829, %iter.check1391 ], [ %indvars.iv829, %vector.memcheck1373 ], [ %i.abs, %vec.epilog.iter.check1393 ], [ %i.acd, %vec.epilog.middle.block1401 ] ; 4 uses
  %indvars.iv827.ph = phi i64 [ %i.abn, %iter.check1391 ], [ %i.abn, %vector.memcheck1373 ], [ %i.abt, %vec.epilog.iter.check1393 ], [ %i.ace, %vec.epilog.middle.block1401 ] ; 2 uses
  %i.aci = sub i64 %i.zs, %indvars.iv831.ph
  %xtraiter1912 = and i64 %i.aci, 7               ; 2 uses
  %lcmp.mod1913.not = icmp eq i64 %xtraiter1912, 0
  br i1 %lcmp.mod1913.not, label %vec.epilog.scalar.ph1392.prol.loopexit, label %vec.epilog.scalar.ph1392.prol

vec.epilog.scalar.ph1392.prol:                    ; preds = %vec.epilog.scalar.ph1392.preheader, %vec.epilog.scalar.ph1392.prol
  %indvars.iv831.prol = phi i64 [ %indvars.iv.next832.prol, %vec.epilog.scalar.ph1392.prol ], [ %indvars.iv831.ph, %vec.epilog.scalar.ph1392.preheader ] ; 2 uses
  %indvars.iv827.prol = phi i64 [ %indvars.iv.next828.prol, %vec.epilog.scalar.ph1392.prol ], [ %indvars.iv827.ph, %vec.epilog.scalar.ph1392.preheader ] ; 2 uses
  %prol.iter1914 = phi i64 [ %prol.iter1914.next, %vec.epilog.scalar.ph1392.prol ], [ 0, %vec.epilog.scalar.ph1392.preheader ]
  %gep1020.prol = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831.prol
  %i.acj = load double, ptr %gep1020.prol, align 8, !tbaa !9
  %i.ack = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv827.prol
  store double %i.acj, ptr %i.ack, align 8, !tbaa !9
  %indvars.iv.next828.prol = add nsw i64 %indvars.iv827.prol, 1 ; 3 uses
  %indvars.iv.next832.prol = add nuw nsw i64 %indvars.iv831.prol, 1 ; 2 uses
  %prol.iter1914.next = add i64 %prol.iter1914, 1 ; 2 uses
  %prol.iter1914.cmp.not = icmp eq i64 %prol.iter1914.next, %xtraiter1912
  br i1 %prol.iter1914.cmp.not, label %vec.epilog.scalar.ph1392.prol.loopexit, label %vec.epilog.scalar.ph1392.prol, !llvm.loop !66

vec.epilog.scalar.ph1392.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1392.prol, %vec.epilog.scalar.ph1392.preheader
  %indvars.iv.next828.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph1392.preheader ], [ %indvars.iv.next828.prol, %vec.epilog.scalar.ph1392.prol ]
  %indvars.iv831.unr = phi i64 [ %indvars.iv831.ph, %vec.epilog.scalar.ph1392.preheader ], [ %indvars.iv.next832.prol, %vec.epilog.scalar.ph1392.prol ]
  %indvars.iv827.unr = phi i64 [ %indvars.iv827.ph, %vec.epilog.scalar.ph1392.preheader ], [ %indvars.iv.next828.prol, %vec.epilog.scalar.ph1392.prol ]
  %i.acl = sub i64 %indvars.iv831.ph, %i.zs
  %i.acm = icmp ugt i64 %i.acl, -8
  br i1 %i.acm, label %._crit_edge569, label %vec.epilog.scalar.ph1392

vec.epilog.scalar.ph1435:                         ; preds = %vec.epilog.scalar.ph1435.preheader, %vec.epilog.scalar.ph1435
  %indvars.iv825.in = phi i32 [ %indvars.iv825, %vec.epilog.scalar.ph1435 ], [ %indvars.iv825.in.ph, %vec.epilog.scalar.ph1435.preheader ]
  %indvars.iv821 = phi i64 [ %indvars.iv.next822, %vec.epilog.scalar.ph1435 ], [ %indvars.iv821.ph, %vec.epilog.scalar.ph1435.preheader ] ; 3 uses
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %vec.epilog.scalar.ph1435 ], [ %indvars.iv819.ph, %vec.epilog.scalar.ph1435.preheader ] ; 2 uses
  %indvars.iv825 = add i32 %indvars.iv825.in, 1   ; 2 uses
  %i.acn = mul nsw i64 %indvars.iv821, %i.zu
  %gep1018 = getelementptr [8 x i8], ptr %invariant.gep1017, i64 %i.acn
  %i.aco = load double, ptr %gep1018, align 8, !tbaa !9
  %i.acp = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv819
  store double %i.aco, ptr %i.acp, align 8, !tbaa !9
  %indvars.iv.next820 = add nsw i64 %indvars.iv819, 1 ; 2 uses
  %indvars.iv.next822 = add nuw nsw i64 %indvars.iv821, 1
  %.not434.not = icmp samesign ult i64 %indvars.iv821, %i.aae
  br i1 %.not434.not, label %vec.epilog.scalar.ph1435, label %.preheader474, !llvm.loop !67

vec.epilog.scalar.ph1392:                         ; preds = %vec.epilog.scalar.ph1392.prol.loopexit, %vec.epilog.scalar.ph1392
  %indvars.iv831 = phi i64 [ %indvars.iv.next832.7, %vec.epilog.scalar.ph1392 ], [ %indvars.iv831.unr, %vec.epilog.scalar.ph1392.prol.loopexit ] ; 9 uses
  %indvars.iv827 = phi i64 [ %indvars.iv.next828.7, %vec.epilog.scalar.ph1392 ], [ %indvars.iv827.unr, %vec.epilog.scalar.ph1392.prol.loopexit ] ; 9 uses
  %gep1020 = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831
  %i.acq = load double, ptr %gep1020, align 8, !tbaa !9
  %i.acr = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv827
  store double %i.acq, ptr %i.acr, align 8, !tbaa !9
  %i.acs = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831
  %gep1020.1 = getelementptr i8, ptr %i.acs, i64 8
  %i.act = load double, ptr %gep1020.1, align 8, !tbaa !9
  %i.acu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.acv = getelementptr i8, ptr %i.acu, i64 8
  store double %i.act, ptr %i.acv, align 8, !tbaa !9
  %i.acw = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831
  %gep1020.2 = getelementptr i8, ptr %i.acw, i64 16
  %i.acx = load double, ptr %gep1020.2, align 8, !tbaa !9
  %i.acy = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.acz = getelementptr i8, ptr %i.acy, i64 16
  store double %i.acx, ptr %i.acz, align 8, !tbaa !9
  %i.ada = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831
  %gep1020.3 = getelementptr i8, ptr %i.ada, i64 24
  %i.adb = load double, ptr %gep1020.3, align 8, !tbaa !9
  %i.adc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.add = getelementptr i8, ptr %i.adc, i64 24
  store double %i.adb, ptr %i.add, align 8, !tbaa !9
  %i.ade = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831
  %gep1020.4 = getelementptr i8, ptr %i.ade, i64 32
  %i.adf = load double, ptr %gep1020.4, align 8, !tbaa !9
  %i.adg = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.adh = getelementptr i8, ptr %i.adg, i64 32
  store double %i.adf, ptr %i.adh, align 8, !tbaa !9
  %i.adi = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831
  %gep1020.5 = getelementptr i8, ptr %i.adi, i64 40
  %i.adj = load double, ptr %gep1020.5, align 8, !tbaa !9
  %i.adk = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.adl = getelementptr i8, ptr %i.adk, i64 40
  store double %i.adj, ptr %i.adl, align 8, !tbaa !9
  %i.adm = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831
  %gep1020.6 = getelementptr i8, ptr %i.adm, i64 48
  %i.adn = load double, ptr %gep1020.6, align 8, !tbaa !9
  %i.ado = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.adp = getelementptr i8, ptr %i.ado, i64 48
  store double %i.adn, ptr %i.adp, align 8, !tbaa !9
  %i.adq = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv831
  %gep1020.7 = getelementptr i8, ptr %i.adq, i64 56
  %i.adr = load double, ptr %gep1020.7, align 8, !tbaa !9
  %i.ads = getelementptr [8 x i8], ptr %5, i64 %indvars.iv827
  %i.adt = getelementptr i8, ptr %i.ads, i64 56
  store double %i.adr, ptr %i.adt, align 8, !tbaa !9
  %indvars.iv.next828.7 = add nsw i64 %indvars.iv827, 8 ; 2 uses
  %indvars.iv.next832.7 = add nuw nsw i64 %indvars.iv831, 8 ; 2 uses
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
  %i.aea = zext nneg i32 %i.i to i64              ; 3 uses
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
  %indvar1595 = phi i64 [ 0, %.preheader469.lr.ph ], [ %indvar.next1596, %._crit_edge611 ] ; 4 uses
  %indvars.iv916 = phi i64 [ %i.aea, %.preheader469.lr.ph ], [ %indvars.iv.next917, %._crit_edge611 ] ; 10 uses
  %indvars.iv907 = phi i32 [ %i.ady, %.preheader469.lr.ph ], [ %indvars.iv.next908, %._crit_edge611 ] ; 3 uses
  %.19616 = phi i32 [ %i.adv, %.preheader469.lr.ph ], [ %.reass.reass, %._crit_edge611 ] ; 5 uses
  %i.ael = and i64 %indvar1595, 4294967295        ; 3 uses
  %i.aem = add nuw nsw i64 %i.ael, 1              ; 5 uses
  %i.aen = shl nuw nsw i64 %indvar1595, 3
  %i.aeo = sext i32 %indvars.iv907 to i64
  %i.aep = sext i32 %indvars.iv907 to i64         ; 6 uses
  %indvars.iv.next917 = add nsw i64 %indvars.iv916, -1 ; 5 uses
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
  %invariant.gep2040 = getelementptr [8 x i8], ptr %5, i64 %i.aer
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
  %gep2041 = getelementptr [8 x i8], ptr %invariant.gep2040, i64 %index1636 ; 4 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %gep2041, i64 32
  %i.afj = getelementptr inbounds nuw i8, ptr %gep2041, i64 64
  %i.afk = getelementptr inbounds nuw i8, ptr %gep2041, i64 96
  store <4 x double> %wide.load1641, ptr %gep2041, align 8, !tbaa !9
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
  %invariant.gep2042 = getelementptr [8 x i8], ptr %5, i64 %i.aer
  br label %vec.epilog.vector.body1659

vec.epilog.vector.body1659:                       ; preds = %vec.epilog.vector.body1659, %vec.epilog.ph1657
  %index1660 = phi i64 [ %vec.epilog.resume.val1651, %vec.epilog.ph1657 ], [ %index.next1663, %vec.epilog.vector.body1659 ] ; 3 uses
  %vec.phi1661 = phi <4 x i32> [ %i.afo, %vec.epilog.ph1657 ], [ %i.afp, %vec.epilog.vector.body1659 ]
  %i.afp = add <4 x i32> %vec.phi1661, splat (i32 1) ; 2 uses
  %i.afq = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %index1660
  %wide.load1662 = load <4 x double>, ptr %i.afq, align 8, !tbaa !9
  %gep2043 = getelementptr [8 x i8], ptr %invariant.gep2042, i64 %index1660
  store <4 x double> %wide.load1662, ptr %gep2043, align 8, !tbaa !9
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
  %7 = sub i64 %indvars.iv916, %indvars.iv896.ph
  %i.aft = sub i64 %indvars.iv.next917, %indvars.iv896.ph
  %xtraiter1924 = and i64 %7, 7                   ; 2 uses
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
  %8 = icmp ult i64 %i.aft, 7
  br i1 %8, label %.loopexit1811, label %vec.epilog.scalar.ph1654

vec.epilog.scalar.ph1654:                         ; preds = %vec.epilog.scalar.ph1654.prol.loopexit, %vec.epilog.scalar.ph1654
  %indvars.iv903.in = phi i32 [ %indvars.iv903.7, %vec.epilog.scalar.ph1654 ], [ %indvars.iv903.in.unr, %vec.epilog.scalar.ph1654.prol.loopexit ]
  %indvars.iv896 = phi i64 [ %indvars.iv.next897.7, %vec.epilog.scalar.ph1654 ], [ %indvars.iv896.unr, %vec.epilog.scalar.ph1654.prol.loopexit ] ; 9 uses
  %indvars.iv894 = phi i64 [ %indvars.iv.next895.7, %vec.epilog.scalar.ph1654 ], [ %indvars.iv894.unr, %vec.epilog.scalar.ph1654.prol.loopexit ] ; 9 uses
  %gep1030 = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %i.afw = load double, ptr %gep1030, align 8, !tbaa !9
  %i.afx = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv894
  store double %i.afw, ptr %i.afx, align 8, !tbaa !9
  %i.afy = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.1 = getelementptr i8, ptr %i.afy, i64 8
  %i.afz = load double, ptr %gep1030.1, align 8, !tbaa !9
  %i.aga = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.agb = getelementptr i8, ptr %i.aga, i64 8
  store double %i.afz, ptr %i.agb, align 8, !tbaa !9
  %i.agc = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.2 = getelementptr i8, ptr %i.agc, i64 16
  %i.agd = load double, ptr %gep1030.2, align 8, !tbaa !9
  %i.age = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.agf = getelementptr i8, ptr %i.age, i64 16
  store double %i.agd, ptr %i.agf, align 8, !tbaa !9
  %i.agg = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.3 = getelementptr i8, ptr %i.agg, i64 24
  %i.agh = load double, ptr %gep1030.3, align 8, !tbaa !9
  %i.agi = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.agj = getelementptr i8, ptr %i.agi, i64 24
  store double %i.agh, ptr %i.agj, align 8, !tbaa !9
  %i.agk = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.4 = getelementptr i8, ptr %i.agk, i64 32
  %i.agl = load double, ptr %gep1030.4, align 8, !tbaa !9
  %i.agm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.agn = getelementptr i8, ptr %i.agm, i64 32
  store double %i.agl, ptr %i.agn, align 8, !tbaa !9
  %i.ago = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.5 = getelementptr i8, ptr %i.ago, i64 40
  %i.agp = load double, ptr %gep1030.5, align 8, !tbaa !9
  %i.agq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.agr = getelementptr i8, ptr %i.agq, i64 40
  store double %i.agp, ptr %i.agr, align 8, !tbaa !9
  %i.ags = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.6 = getelementptr i8, ptr %i.ags, i64 48
  %i.agt = load double, ptr %gep1030.6, align 8, !tbaa !9
  %i.agu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.agv = getelementptr i8, ptr %i.agu, i64 48
  store double %i.agt, ptr %i.agv, align 8, !tbaa !9
  %indvars.iv903.7 = add i32 %indvars.iv903.in, 8 ; 2 uses
  %i.agw = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv896
  %gep1030.7 = getelementptr i8, ptr %i.agw, i64 56
  %i.agx = load double, ptr %gep1030.7, align 8, !tbaa !9
  %i.agy = getelementptr [8 x i8], ptr %5, i64 %indvars.iv894
  %i.agz = getelementptr i8, ptr %i.agy, i64 56
  store double %i.agx, ptr %i.agz, align 8, !tbaa !9
  %indvars.iv.next895.7 = add nsw i64 %indvars.iv894, 8 ; 2 uses
  %indvars.iv.next897.7 = add nuw nsw i64 %indvars.iv896, 8 ; 2 uses
  %exitcond902.not.7 = icmp eq i64 %indvars.iv.next897.7, %indvars.iv916
  br i1 %exitcond902.not.7, label %.loopexit1811, label %vec.epilog.scalar.ph1654, !llvm.loop !73

.loopexit1811:                                    ; preds = %vec.epilog.scalar.ph1654.prol.loopexit, %vec.epilog.scalar.ph1654, %vec.epilog.middle.block1664, %middle.block1646
  %indvars.iv903.lcssa = phi i32 [ %i.afs, %vec.epilog.middle.block1664 ], [ %i.afm, %middle.block1646 ], [ %indvars.iv903.lcssa1842.unr, %vec.epilog.scalar.ph1654.prol.loopexit ], [ %indvars.iv903.7, %vec.epilog.scalar.ph1654 ]
  %indvars.iv.next895.lcssa = phi i64 [ %i.afn, %vec.epilog.middle.block1664 ], [ %i.aey, %middle.block1646 ], [ %indvars.iv.next895.lcssa1841.unr, %vec.epilog.scalar.ph1654.prol.loopexit ], [ %indvars.iv.next895.7, %vec.epilog.scalar.ph1654 ]
  %i.aha = sub nsw i64 %indvars.iv.next917, %i.aeb ; 2 uses
  %.not432.not606 = icmp slt i64 %i.aha, %i.aeb
  br i1 %.not432.not606, label %iter.check1614, label %._crit_edge611

iter.check1614:                                   ; preds = %.loopexit1811
  %i.ahb = sext i32 %indvars.iv903.lcssa to i64   ; 7 uses
  %invariant.gep1031 = getelementptr [8 x i8], ptr %3, i64 %i.aha ; 11 uses
  %min.iters.check1598 = icmp samesign ugt i64 %i.ael, 2
  %or.cond1823 = select i1 %min.iters.check1598, i1 %ident.check1593.not, i1 false
  br i1 %or.cond1823, label %vector.memcheck1594, label %.lr.ph610.preheader

vector.memcheck1594:                              ; preds = %iter.check1614
  %i.ahc = add i64 %i.aee, %i.aen
  %i.ahd = add nsw i64 %i.aea, %i.aeo
  %i.ahe = shl nsw i64 %i.ahd, 3
  %i.ahf = add i64 %i.ahe, %i.a
  %i.ahg = sub i64 %i.ahc, %i.ahf
  %i.ahh = shl nsw i64 %i.ahb, 3
  %i.ahi = add i64 %i.ahg, %i.ahh
  %i.ahj = add i64 %i.ahi, -1
  %diff.check1597 = icmp ult i64 %i.ahj, 127
  br i1 %diff.check1597, label %.lr.ph610.preheader, label %vector.main.loop.iter.check1599

vector.main.loop.iter.check1599:                  ; preds = %vector.memcheck1594
  %min.iters.check1600 = icmp samesign ult i64 %i.ael, 15
  br i1 %min.iters.check1600, label %vec.epilog.ph1618, label %vector.ph1601

vector.ph1601:                                    ; preds = %vector.main.loop.iter.check1599
  %i.ahk = and i64 %i.aem, 12
  %n.vec1602 = and i64 %i.aem, 8589934576         ; 5 uses
  %i.ahl = add nsw i64 %n.vec1602, %i.aep
  %i.ahm = add nsw i64 %n.vec1602, %i.ahb         ; 2 uses
  %invariant.gep2044 = getelementptr [8 x i8], ptr %invariant.gep1031, i64 %i.aep
  %invariant.gep2046 = getelementptr [8 x i8], ptr %5, i64 %i.ahb
  br label %vector.body1603

vector.body1603:                                  ; preds = %vector.body1603, %vector.ph1601
  %index1604 = phi i64 [ 0, %vector.ph1601 ], [ %index.next1609, %vector.body1603 ] ; 3 uses
  %gep2045 = getelementptr [8 x i8], ptr %invariant.gep2044, i64 %index1604 ; 4 uses
  %i.ahn = getelementptr i8, ptr %gep2045, i64 32
  %i.aho = getelementptr i8, ptr %gep2045, i64 64
  %i.ahp = getelementptr i8, ptr %gep2045, i64 96
  %wide.load1605 = load <4 x double>, ptr %gep2045, align 8, !tbaa !9
  %wide.load1606 = load <4 x double>, ptr %i.ahn, align 8, !tbaa !9
  %wide.load1607 = load <4 x double>, ptr %i.aho, align 8, !tbaa !9
  %wide.load1608 = load <4 x double>, ptr %i.ahp, align 8, !tbaa !9
  %gep2047 = getelementptr [8 x i8], ptr %invariant.gep2046, i64 %index1604 ; 4 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %gep2047, i64 32
  %i.ahr = getelementptr inbounds nuw i8, ptr %gep2047, i64 64
  %i.ahs = getelementptr inbounds nuw i8, ptr %gep2047, i64 96
  store <4 x double> %wide.load1605, ptr %gep2047, align 8, !tbaa !9
  store <4 x double> %wide.load1606, ptr %i.ahq, align 8, !tbaa !9
  store <4 x double> %wide.load1607, ptr %i.ahr, align 8, !tbaa !9
  store <4 x double> %wide.load1608, ptr %i.ahs, align 8, !tbaa !9
  %index.next1609 = add nuw i64 %index1604, 16    ; 2 uses
  %i.aht = icmp eq i64 %index.next1609, %n.vec1602
  br i1 %i.aht, label %middle.block1610, label %vector.body1603, !llvm.loop !74

middle.block1610:                                 ; preds = %vector.body1603
  %cmp.n1611 = icmp eq i64 %i.aem, %n.vec1602
  br i1 %cmp.n1611, label %._crit_edge611, label %vec.epilog.iter.check1616

vec.epilog.iter.check1616:                        ; preds = %middle.block1610
  %min.epilog.iters.check1617 = icmp eq i64 %i.ahk, 0
  br i1 %min.epilog.iters.check1617, label %.lr.ph610.preheader, label %vec.epilog.ph1618, !prof !15

vec.epilog.ph1618:                                ; preds = %vector.main.loop.iter.check1599, %vec.epilog.iter.check1616
  %vec.epilog.resume.val1612 = phi i64 [ %n.vec1602, %vec.epilog.iter.check1616 ], [ 0, %vector.main.loop.iter.check1599 ]
  %n.vec1619 = and i64 %i.aem, 8589934588         ; 4 uses
  %i.ahu = add nsw i64 %n.vec1619, %i.aep
  %i.ahv = add nsw i64 %n.vec1619, %i.ahb         ; 2 uses
  %invariant.gep2048 = getelementptr [8 x i8], ptr %invariant.gep1031, i64 %i.aep
  %invariant.gep2050 = getelementptr [8 x i8], ptr %5, i64 %i.ahb
  br label %vec.epilog.vector.body1620

vec.epilog.vector.body1620:                       ; preds = %vec.epilog.vector.body1620, %vec.epilog.ph1618
  %index1621 = phi i64 [ %vec.epilog.resume.val1612, %vec.epilog.ph1618 ], [ %index.next1623, %vec.epilog.vector.body1620 ] ; 3 uses
  %gep2049 = getelementptr [8 x i8], ptr %invariant.gep2048, i64 %index1621
  %wide.load1622 = load <4 x double>, ptr %gep2049, align 8, !tbaa !9
  %gep2051 = getelementptr [8 x i8], ptr %invariant.gep2050, i64 %index1621
  store <4 x double> %wide.load1622, ptr %gep2051, align 8, !tbaa !9
  %index.next1623 = add nuw i64 %index1621, 4     ; 2 uses
  %i.ahw = icmp eq i64 %index.next1623, %n.vec1619
  br i1 %i.ahw, label %vec.epilog.middle.block1624, label %vec.epilog.vector.body1620, !llvm.loop !75

vec.epilog.middle.block1624:                      ; preds = %vec.epilog.vector.body1620
  %cmp.n1625 = icmp eq i64 %i.aem, %n.vec1619
  br i1 %cmp.n1625, label %._crit_edge611, label %.lr.ph610.preheader

.lr.ph610.preheader:                              ; preds = %vector.memcheck1594, %iter.check1614, %vec.epilog.iter.check1616, %vec.epilog.middle.block1624
  %indvars.iv909.ph = phi i64 [ %i.aep, %iter.check1614 ], [ %i.aep, %vector.memcheck1594 ], [ %i.ahl, %vec.epilog.iter.check1616 ], [ %i.ahu, %vec.epilog.middle.block1624 ] ; 3 uses
  %indvars.iv905.ph = phi i64 [ %i.ahb, %iter.check1614 ], [ %i.ahb, %vector.memcheck1594 ], [ %i.ahm, %vec.epilog.iter.check1616 ], [ %i.ahv, %vec.epilog.middle.block1624 ] ; 2 uses
  %i.ahx = trunc i64 %indvars.iv909.ph to i32     ; 2 uses
  %i.ahy = sub i32 %i.v, %i.ahx
  %xtraiter1927 = and i32 %i.ahy, 7               ; 2 uses
  %lcmp.mod1928.not = icmp eq i32 %xtraiter1927, 0
  br i1 %lcmp.mod1928.not, label %.lr.ph610.prol.loopexit, label %.lr.ph610.prol

.lr.ph610.prol:                                   ; preds = %.lr.ph610.preheader, %.lr.ph610.prol
  %indvars.iv909.prol = phi i64 [ %indvars.iv.next910.prol, %.lr.ph610.prol ], [ %indvars.iv909.ph, %.lr.ph610.preheader ] ; 2 uses
  %indvars.iv905.prol = phi i64 [ %indvars.iv.next906.prol, %.lr.ph610.prol ], [ %indvars.iv905.ph, %.lr.ph610.preheader ] ; 2 uses
  %prol.iter1929 = phi i32 [ %prol.iter1929.next, %.lr.ph610.prol ], [ 0, %.lr.ph610.preheader ]
  %i.ahz = mul nsw i64 %indvars.iv909.prol, %i.adz
  %gep1032.prol = getelementptr [8 x i8], ptr %invariant.gep1031, i64 %i.ahz
  %i.aia = load double, ptr %gep1032.prol, align 8, !tbaa !9
  %i.aib = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv905.prol
  store double %i.aia, ptr %i.aib, align 8, !tbaa !9
  %indvars.iv.next906.prol = add nsw i64 %indvars.iv905.prol, 1 ; 3 uses
  %indvars.iv.next910.prol = add nsw i64 %indvars.iv909.prol, 1 ; 2 uses
  %prol.iter1929.next = add i32 %prol.iter1929, 1 ; 2 uses
  %prol.iter1929.cmp.not = icmp eq i32 %prol.iter1929.next, %xtraiter1927
  br i1 %prol.iter1929.cmp.not, label %.lr.ph610.prol.loopexit, label %.lr.ph610.prol, !llvm.loop !76

.lr.ph610.prol.loopexit:                          ; preds = %.lr.ph610.prol, %.lr.ph610.preheader
  %indvars.iv.next906.lcssa.unr = phi i64 [ poison, %.lr.ph610.preheader ], [ %indvars.iv.next906.prol, %.lr.ph610.prol ]
  %indvars.iv909.unr = phi i64 [ %indvars.iv909.ph, %.lr.ph610.preheader ], [ %indvars.iv.next910.prol, %.lr.ph610.prol ]
  %indvars.iv905.unr = phi i64 [ %indvars.iv905.ph, %.lr.ph610.preheader ], [ %indvars.iv.next906.prol, %.lr.ph610.prol ]
  %i.aic = sub i32 %i.ahx, %i.v
  %i.aid = icmp ugt i32 %i.aic, -8
  br i1 %i.aid, label %._crit_edge611, label %.lr.ph610

.lr.ph610:                                        ; preds = %.lr.ph610.prol.loopexit, %.lr.ph610
  %indvars.iv909 = phi i64 [ %indvars.iv.next910.7, %.lr.ph610 ], [ %indvars.iv909.unr, %.lr.ph610.prol.loopexit ] ; 9 uses
  %indvars.iv905 = phi i64 [ %indvars.iv.next906.7, %.lr.ph610 ], [ %indvars.iv905.unr, %.lr.ph610.prol.loopexit ] ; 9 uses
  %i.aie = mul nsw i64 %indvars.iv909, %i.adz
  %gep1032 = getelementptr [8 x i8], ptr %invariant.gep1031, i64 %i.aie
  %i.aif = load double, ptr %gep1032, align 8, !tbaa !9
  %i.aig = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv905
  store double %i.aif, ptr %i.aig, align 8, !tbaa !9
  %indvars.iv.next910 = add nsw i64 %indvars.iv909, 1
  %i.aih = mul nsw i64 %indvars.iv.next910, %i.adz
  %gep1032.1 = getelementptr [8 x i8], ptr %invariant.gep1031, i64 %i.aih
  %i.aii = load double, ptr %gep1032.1, align 8, !tbaa !9
  %i.aij = getelementptr [8 x i8], ptr %5, i64 %indvars.iv905
  %i.aik = getelementptr i8, ptr %i.aij, i64 8
  store double %i.aii, ptr %i.aik, align 8, !tbaa !9
  %indvars.iv.next910.1 = add nsw i64 %indvars.iv909, 2
  %i.ail = mul nsw i64 %indvars.iv.next910.1, %i.adz
  %gep1032.2 = getelementptr [8 x i8], ptr %invariant.gep1031, i64 %i.ail
  %i.aim = load double, ptr %gep1032.2, align 8, !tbaa !9
end_hunk_0
