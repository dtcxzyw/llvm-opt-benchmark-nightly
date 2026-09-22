Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMesh?download=true
inline.NumInlined: 287
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z15rcBuildPolyMeshP9rcContextRK12rcContourSetiR10rcPolyMesh:bb.a

vec.epilog.vector.body1501:                       ; preds = %pred.store.continue1519, %vec.epilog.ph1497
  %index1502 = phi i64 [ %vec.epilog.resume.val1492, %vec.epilog.ph1497 ], [ %index.next1520, %pred.store.continue1519 ] ; 9 uses
  %i.agm = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1502 ; 2 uses
  %wide.load1503 = load <8 x i16>, ptr %i.agm, align 2, !tbaa !77 ; 9 uses
  %i.agn = icmp ugt <8 x i16> %wide.load1503, %broadcast.splat1500 ; 8 uses
  %i.ago = extractelement <8 x i1> %i.agn, i64 0
  br i1 %i.ago, label %pred.store.if1504, label %pred.store.continue1505

pred.store.if1504:                                ; preds = %vec.epilog.vector.body1501
  %i.agp = extractelement <8 x i16> %wide.load1503, i64 0
  %i.agq = add i16 %i.agp, -1
  store i16 %i.agq, ptr %i.agm, align 2, !tbaa !77
  br label %pred.store.continue1505

pred.store.continue1505:                          ; preds = %pred.store.if1504, %vec.epilog.vector.body1501
  %i.agr = extractelement <8 x i1> %i.agn, i64 1
  br i1 %i.agr, label %pred.store.if1506, label %pred.store.continue1507

pred.store.if1506:                                ; preds = %pred.store.continue1505
  %i.ags = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1502
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 2
  %i.agu = extractelement <8 x i16> %wide.load1503, i64 1
  %i.agv = add i16 %i.agu, -1
  store i16 %i.agv, ptr %i.agt, align 2, !tbaa !77
  br label %pred.store.continue1507

pred.store.continue1507:                          ; preds = %pred.store.if1506, %pred.store.continue1505
  %i.agw = extractelement <8 x i1> %i.agn, i64 2
  br i1 %i.agw, label %pred.store.if1508, label %pred.store.continue1509

pred.store.if1508:                                ; preds = %pred.store.continue1507
  %i.agx = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1502
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 4
  %i.agz = extractelement <8 x i16> %wide.load1503, i64 2
  %i.aha = add i16 %i.agz, -1
  store i16 %i.aha, ptr %i.agy, align 2, !tbaa !77
  br label %pred.store.continue1509

pred.store.continue1509:                          ; preds = %pred.store.if1508, %pred.store.continue1507
  %i.ahb = extractelement <8 x i1> %i.agn, i64 3
  br i1 %i.ahb, label %pred.store.if1510, label %pred.store.continue1511

pred.store.if1510:                                ; preds = %pred.store.continue1509
  %i.ahc = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1502
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 6
  %i.ahe = extractelement <8 x i16> %wide.load1503, i64 3
  %i.ahf = add i16 %i.ahe, -1
  store i16 %i.ahf, ptr %i.ahd, align 2, !tbaa !77
  br label %pred.store.continue1511

pred.store.continue1511:                          ; preds = %pred.store.if1510, %pred.store.continue1509
  %i.ahg = extractelement <8 x i1> %i.agn, i64 4
  br i1 %i.ahg, label %pred.store.if1512, label %pred.store.continue1513

pred.store.if1512:                                ; preds = %pred.store.continue1511
  %i.ahh = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1502
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8
  %i.ahj = extractelement <8 x i16> %wide.load1503, i64 4
  %i.ahk = add i16 %i.ahj, -1
  store i16 %i.ahk, ptr %i.ahi, align 2, !tbaa !77
  br label %pred.store.continue1513

pred.store.continue1513:                          ; preds = %pred.store.if1512, %pred.store.continue1511
  %i.ahl = extractelement <8 x i1> %i.agn, i64 5
  br i1 %i.ahl, label %pred.store.if1514, label %pred.store.continue1515

pred.store.if1514:                                ; preds = %pred.store.continue1513
  %i.ahm = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1502
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 10
  %i.aho = extractelement <8 x i16> %wide.load1503, i64 5
  %i.ahp = add i16 %i.aho, -1
  store i16 %i.ahp, ptr %i.ahn, align 2, !tbaa !77
  br label %pred.store.continue1515

pred.store.continue1515:                          ; preds = %pred.store.if1514, %pred.store.continue1513
  %i.ahq = extractelement <8 x i1> %i.agn, i64 6
  br i1 %i.ahq, label %pred.store.if1516, label %pred.store.continue1517

pred.store.if1516:                                ; preds = %pred.store.continue1515
  %i.ahr = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1502
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 12
  %i.aht = extractelement <8 x i16> %wide.load1503, i64 6
  %i.ahu = add i16 %i.aht, -1
  store i16 %i.ahu, ptr %i.ahs, align 2, !tbaa !77
  br label %pred.store.continue1517

pred.store.continue1517:                          ; preds = %pred.store.if1516, %pred.store.continue1515
  %i.ahv = extractelement <8 x i1> %i.agn, i64 7
  br i1 %i.ahv, label %pred.store.if1518, label %pred.store.continue1519

pred.store.if1518:                                ; preds = %pred.store.continue1517
  %i.ahw = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %index1502
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 14
  %i.ahy = extractelement <8 x i16> %wide.load1503, i64 7
  %i.ahz = add i16 %i.ahy, -1
  store i16 %i.ahz, ptr %i.ahx, align 2, !tbaa !77
  br label %pred.store.continue1519

pred.store.continue1519:                          ; preds = %pred.store.if1518, %pred.store.continue1517
  %index.next1520 = add nuw i64 %index1502, 8     ; 2 uses
  %i.aia = icmp eq i64 %index.next1520, %n.vec1498
  br i1 %i.aia, label %vec.epilog.middle.block1521, label %vec.epilog.vector.body1501, !llvm.loop !98

vec.epilog.middle.block1521:                      ; preds = %pred.store.continue1519
  %cmp.n1522 = icmp eq i64 %n.vec1498, %wide.trip.count725.i
  br i1 %cmp.n1522, label %._crit_edge629.i, label %.lr.ph628.i.preheader

.lr.ph628.i.preheader:                            ; preds = %iter.check1493, %vec.epilog.iter.check1495, %vec.epilog.middle.block1521
  %indvars.iv722.i.ph = phi i64 [ 0, %iter.check1493 ], [ %n.vec1454, %vec.epilog.iter.check1495 ], [ %n.vec1498, %vec.epilog.middle.block1521 ]
  br label %.lr.ph628.i

._crit_edge629.i:                                 ; preds = %bb.cd, %middle.block1490, %vec.epilog.middle.block1521, %_ZL14countPolyVertsPKti.exit435.i
  %indvars.iv.next728.i = add nuw nsw i64 %indvars.iv727.i, 1 ; 2 uses
  %exitcond731.not.i = icmp eq i64 %indvars.iv.next728.i, %wide.trip.count730.i
  br i1 %exitcond731.not.i, label %.preheader584.i, label %.lr.ph.i430.i.preheader

.lr.ph628.i:                                      ; preds = %.lr.ph628.i.preheader, %bb.cd
  %indvars.iv722.i = phi i64 [ %indvars.iv.next723.i, %bb.cd ], [ %indvars.iv722.i.ph, %.lr.ph628.i.preheader ] ; 2 uses
  %i.aib = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %indvars.iv722.i ; 2 uses
  %i.aic = load i16, ptr %i.aib, align 2, !tbaa !77 ; 2 uses
  %i.aid = icmp ugt i16 %i.aic, %i.rf
  br i1 %i.aid, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.lr.ph628.i
  %i.aie = add i16 %i.aic, -1
  store i16 %i.aie, ptr %i.aib, align 2, !tbaa !77
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.lr.ph628.i
  %indvars.iv.next723.i = add nuw nsw i64 %indvars.iv722.i, 1 ; 2 uses
  %exitcond726.not.i = icmp eq i64 %indvars.iv.next723.i, %wide.trip.count725.i
  br i1 %exitcond726.not.i, label %._crit_edge629.i, label %.lr.ph628.i, !llvm.loop !99

._crit_edge635.i:                                 ; preds = %bb.ch, %.preheader584.i
  %i.aif = icmp eq i32 %.0358.lcssa.i, 0
  br i1 %i.aif, label %.preheader, label %bb.ci

.lr.ph634.i:                                      ; preds = %bb.ch, %.lr.ph634.preheader.i
  %indvars.iv732.i = phi i64 [ 0, %.lr.ph634.preheader.i ], [ %indvars.iv.next733.i, %bb.ch ] ; 2 uses
  %.idx821.i = shl nuw nsw i64 %indvars.iv732.i, 4
  %i.aig = getelementptr inbounds nuw i8, ptr %i.xe, i64 %.idx821.i ; 3 uses
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !76 ; 2 uses
  %i.aii = icmp sgt i32 %i.aih, %i.yr
  br i1 %i.aii, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.lr.ph634.i
  %i.aij = add nsw i32 %i.aih, -1
  store i32 %i.aij, ptr %i.aig, align 4, !tbaa !76
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph634.i
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aig, i64 4 ; 2 uses
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !76 ; 2 uses
  %i.aim = icmp sgt i32 %i.ail, %i.yr
  br i1 %i.aim, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ain = add nsw i32 %i.ail, -1
  store i32 %i.ain, ptr %i.aik, align 4, !tbaa !76
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %indvars.iv.next733.i = add nuw nsw i64 %indvars.iv732.i, 1 ; 2 uses
  %exitcond736.not.i = icmp eq i64 %indvars.iv.next733.i, %wide.trip.count735.i
  br i1 %exitcond736.not.i, label %._crit_edge635.i, label %.lr.ph634.i

bb.ci:                                            ; preds = %._crit_edge635.i
  %i.aio = load i32, ptr %i.xe, align 4, !tbaa !76
  store i32 %i.aio, ptr %i.yg, align 4, !tbaa !76
  %i.aip = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.aiq = load i32, ptr %i.aip, align 4, !tbaa !76
  store i32 %i.aiq, ptr %i.yi, align 4, !tbaa !76
  %i.air = getelementptr inbounds nuw i8, ptr %i.xe, i64 12
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !76
  store i32 %i.ais, ptr %i.yk, align 4, !tbaa !76
  br label %bb.cj

bb.cj:                                            ; preds = %._crit_edge643.i, %bb.ci
  %.0572.i = phi i32 [ 1, %bb.ci ], [ %.3575.i, %._crit_edge643.i ] ; 2 uses
  %.0568.i = phi i32 [ 1, %bb.ci ], [ %.3571.i, %._crit_edge643.i ]
  %.0564.i = phi i32 [ 1, %bb.ci ], [ %.3567.i, %._crit_edge643.i ]
  %.4362.i = phi i32 [ %.0358.lcssa.i, %bb.ci ], [ %.6364.i, %._crit_edge643.i ] ; 2 uses
  %i.ait = icmp sgt i32 %.4362.i, 0
  br i1 %i.ait, label %.lr.ph642.i, label %._crit_edge643.thread.i

._crit_edge643.i:                                 ; preds = %bb.cn
  br i1 %.1346.i, label %bb.cj, label %._crit_edge643.thread.i

.lr.ph642.i:                                      ; preds = %bb.cj, %bb.cn
  %.0343641.i = phi i32 [ %i.ald, %bb.cn ], [ 0, %bb.cj ] ; 3 uses
  %.0345640.i = phi i1 [ %.1346.i, %bb.cn ], [ false, %bb.cj ]
  %.5363639.i = phi i32 [ %.6364.i, %bb.cn ], [ %.4362.i, %bb.cj ] ; 3 uses
  %.1565638.i = phi i32 [ %.3567.i, %bb.cn ], [ %.0564.i, %bb.cj ] ; 6 uses
  %.1569637.i = phi i32 [ %.3571.i, %bb.cn ], [ %.0568.i, %bb.cj ] ; 6 uses
  %.1573636.i = phi i32 [ %.3575.i, %bb.cn ], [ %.0572.i, %bb.cj ] ; 6 uses
  %i.aiu = shl nsw i32 %.0343641.i, 2
  %i.aiv = sext i32 %i.aiu to i64
  %i.aiw = getelementptr [4 x i8], ptr %i.xe, i64 %i.aiv ; 5 uses
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !76 ; 2 uses
  %i.aiy = getelementptr i8, ptr %i.aiw, i64 4
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !76 ; 2 uses
  %i.aja = getelementptr i8, ptr %i.aiw, i64 8    ; 2 uses
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !76 ; 2 uses
  %i.ajc = getelementptr i8, ptr %i.aiw, i64 12   ; 2 uses
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !76 ; 2 uses
  %i.aje = load i32, ptr %i.yg, align 4, !tbaa !76
  %i.ajf = icmp eq i32 %i.aje, %i.aiz
  br i1 %i.ajf, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.lr.ph642.i
  %i.ajg = icmp sgt i32 %.1573636.i, 0
  br i1 %i.ajg, label %.lr.ph.preheader.i436.i, label %_ZL9pushFrontiPiRi.exit.i

.lr.ph.preheader.i436.i:                          ; preds = %bb.ck
  %i.ajh = zext nneg i32 %.1573636.i to i64
  %i.aji = shl nuw nsw i64 %i.ajh, 2              ; 3 uses
  %i.ajj = add nsw i32 %.1573636.i, -1
  %i.ajk = zext nneg i32 %i.ajj to i64
  %i.ajl = shl nuw nsw i64 %i.ajk, 2              ; 2 uses
  %i.ajm = sub nuw nsw i64 %i.aji, %i.ajl
  %scevgep.i.i = getelementptr i8, ptr %i.yg, i64 %i.ajm
  %i.ajn = add nsw i64 %i.aji, -4
  %i.ajo = sub nsw i64 %i.ajn, %i.ajl
  %scevgep10.i.i = getelementptr i8, ptr %i.yg, i64 %i.ajo
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i.i, ptr align 4 %scevgep10.i.i, i64 %i.aji, i1 false), !tbaa !76
  br label %_ZL9pushFrontiPiRi.exit.i

_ZL9pushFrontiPiRi.exit.i:                        ; preds = %.lr.ph.preheader.i436.i, %bb.ck
  store i32 %i.aix, ptr %i.yg, align 4, !tbaa !76
  %i.ajp = icmp sgt i32 %.1569637.i, 0
  br i1 %i.ajp, label %.lr.ph.preheader.i437.i, label %_ZL9pushFrontiPiRi.exit440.i

.lr.ph.preheader.i437.i:                          ; preds = %_ZL9pushFrontiPiRi.exit.i
  %i.ajq = zext nneg i32 %.1569637.i to i64
  %i.ajr = shl nuw nsw i64 %i.ajq, 2              ; 3 uses
  %i.ajs = add nsw i32 %.1569637.i, -1
  %i.ajt = zext nneg i32 %i.ajs to i64
  %i.aju = shl nuw nsw i64 %i.ajt, 2              ; 2 uses
  %i.ajv = sub nuw nsw i64 %i.ajr, %i.aju
  %scevgep.i438.i = getelementptr i8, ptr %i.yi, i64 %i.ajv
  %i.ajw = add nsw i64 %i.ajr, -4
  %i.ajx = sub nsw i64 %i.ajw, %i.aju
  %scevgep10.i439.i = getelementptr i8, ptr %i.yi, i64 %i.ajx
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i438.i, ptr align 4 %scevgep10.i439.i, i64 %i.ajr, i1 false), !tbaa !76
  br label %_ZL9pushFrontiPiRi.exit440.i

_ZL9pushFrontiPiRi.exit440.i:                     ; preds = %.lr.ph.preheader.i437.i, %_ZL9pushFrontiPiRi.exit.i
  store i32 %i.ajb, ptr %i.yi, align 4, !tbaa !76
  %i.ajy = icmp sgt i32 %.1565638.i, 0
  br i1 %i.ajy, label %.lr.ph.preheader.i441.i, label %_ZL9pushFrontiPiRi.exit444.i

.lr.ph.preheader.i441.i:                          ; preds = %_ZL9pushFrontiPiRi.exit440.i
  %i.ajz = zext nneg i32 %.1565638.i to i64
  %i.aka = shl nuw nsw i64 %i.ajz, 2              ; 3 uses
  %i.akb = add nsw i32 %.1565638.i, -1
  %i.akc = zext nneg i32 %i.akb to i64
  %i.akd = shl nuw nsw i64 %i.akc, 2              ; 2 uses
  %i.ake = sub nuw nsw i64 %i.aka, %i.akd
  %scevgep.i442.i = getelementptr i8, ptr %i.yk, i64 %i.ake
  %i.akf = add nsw i64 %i.aka, -4
  %i.akg = sub nsw i64 %i.akf, %i.akd
  %scevgep10.i443.i = getelementptr i8, ptr %i.yk, i64 %i.akg
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i442.i, ptr align 4 %scevgep10.i443.i, i64 %i.aka, i1 false), !tbaa !76
  br label %_ZL9pushFrontiPiRi.exit444.i

_ZL9pushFrontiPiRi.exit444.i:                     ; preds = %.lr.ph.preheader.i441.i, %_ZL9pushFrontiPiRi.exit440.i
  store i32 %i.ajd, ptr %i.yk, align 4, !tbaa !76
  br label %.critedge.i449

bb.cl:                                            ; preds = %.lr.ph642.i
  %i.akh = sext i32 %.1573636.i to i64
  %i.aki = getelementptr [4 x i8], ptr %i.yg, i64 %i.akh ; 2 uses
  %i.akj = getelementptr i8, ptr %i.aki, i64 -4
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !76
  %i.akl = icmp eq i32 %i.akk, %i.aix
  br i1 %i.akl, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i32 %i.aiz, ptr %i.aki, align 4, !tbaa !76
  %i.akm = sext i32 %.1569637.i to i64
  %i.akn = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.akm
  store i32 %i.ajb, ptr %i.akn, align 4, !tbaa !76
  %i.ako = sext i32 %.1565638.i to i64
  %i.akp = getelementptr inbounds [4 x i8], ptr %i.yk, i64 %i.ako
  store i32 %i.ajd, ptr %i.akp, align 4, !tbaa !76
  br label %.critedge.i449

.critedge.i449:                                   ; preds = %bb.cm, %_ZL9pushFrontiPiRi.exit444.i
  %.2566.i = add nsw i32 %.1565638.i, 1
  %.2570.i = add nsw i32 %.1569637.i, 1
  %.2574.i = add nsw i32 %.1573636.i, 1
  %i.akq = shl i32 %.5363639.i, 2                 ; 3 uses
  %i.akr = add i32 %i.akq, -4
  %i.aks = sext i32 %i.akr to i64
  %i.akt = getelementptr inbounds [4 x i8], ptr %i.xe, i64 %i.aks
  %4 = load <2 x i32>, ptr %i.akt, align 4, !tbaa !76
  store <2 x i32> %4, ptr %i.aiw, align 4, !tbaa !76
  %i.aku = add i32 %i.akq, -2
  %i.akv = sext i32 %i.aku to i64
  %i.akw = getelementptr inbounds [4 x i8], ptr %i.xe, i64 %i.akv
  %5 = load i32, ptr %i.akw, align 4, !tbaa !76
  store i32 %5, ptr %i.aja, align 4, !tbaa !76
  %i.akx = add i32 %i.akq, -1
  %i.aky = sext i32 %i.akx to i64
  %i.akz = getelementptr inbounds [4 x i8], ptr %i.xe, i64 %i.aky
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !76
  store i32 %i.ala, ptr %i.ajc, align 4, !tbaa !76
  %i.alb = add nsw i32 %.5363639.i, -1
  %i.alc = add nsw i32 %.0343641.i, -1
  br label %bb.cn

bb.cn:                                            ; preds = %.critedge.i449, %bb.cl
  %.3575.i = phi i32 [ %.2574.i, %.critedge.i449 ], [ %.1573636.i, %bb.cl ] ; 3 uses
  %.3571.i = phi i32 [ %.2570.i, %.critedge.i449 ], [ %.1569637.i, %bb.cl ] ; 2 uses
  %.3567.i = phi i32 [ %.2566.i, %.critedge.i449 ], [ %.1565638.i, %bb.cl ] ; 2 uses
  %.6364.i = phi i32 [ %i.alb, %.critedge.i449 ], [ %.5363639.i, %bb.cl ] ; 3 uses
  %.1346.i = phi i1 [ true, %.critedge.i449 ], [ %.0345640.i, %bb.cl ] ; 2 uses
  %.1344.i = phi i32 [ %i.alc, %.critedge.i449 ], [ %.0343641.i, %bb.cl ]
  %i.ald = add nsw i32 %.1344.i, 1                ; 2 uses
  %i.ale = icmp slt i32 %i.ald, %.6364.i
  br i1 %i.ale, label %.lr.ph642.i, label %._crit_edge643.i

._crit_edge643.thread.i:                          ; preds = %._crit_edge643.i, %bb.cj
  %.4576.i = phi i32 [ %.0572.i, %bb.cj ], [ %.3575.i, %._crit_edge643.i ] ; 7 uses
  %i.alf = sext i32 %.4576.i to i64               ; 3 uses
  %i.alg = mul nsw i64 %i.alf, 12
  %i.alh = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.alg, i32 noundef 1) #8 ; 9 uses
  %.not397.i = icmp eq ptr %i.alh, null
  br i1 %.not397.i, label %.critedge586, label %bb.co

.critedge586:                                     ; preds = %._crit_edge643.thread.i
  %i.ali = mul nsw i32 %.4576.i, 3
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef %i.ali) #8
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yk) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yi) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yg) #8
  br label %bb.dz

bb.co:                                            ; preds = %._crit_edge643.thread.i
  %i.alj = shl nsw i64 %i.alf, 4
  %i.alk = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.alj, i32 noundef 1) #8 ; 8 uses
  %.not398.i = icmp eq ptr %i.alk, null
  br i1 %.not398.i, label %.critedge587, label %bb.cp

.critedge587:                                     ; preds = %bb.co
  %i.all = shl nsw i32 %.4576.i, 2
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef %i.all) #8
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alh) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yk) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yi) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yg) #8
  br label %bb.dz

bb.cp:                                            ; preds = %bb.co
  %i.alm = shl nsw i64 %i.alf, 2
  %i.aln = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.alm, i32 noundef 1) #8 ; 7 uses
  %.not399.i = icmp eq ptr %i.aln, null
  br i1 %.not399.i, label %.critedge588, label %.preheader582.i

.preheader582.i:                                  ; preds = %bb.cp
  %i.alo = icmp sgt i32 %.4576.i, 0
  br i1 %i.alo, label %.lr.ph650.i, label %._crit_edge651.i

.lr.ph650.i:                                      ; preds = %.preheader582.i
  %i.alp = load ptr, ptr %3, align 8, !tbaa !68
  %wide.trip.count740.i = zext nneg i32 %.4576.i to i64
  br label %bb.cq

.critedge588:                                     ; preds = %bb.cp
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef %.4576.i) #8
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alk) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alh) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yk) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yi) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yg) #8
  br label %bb.dz

._crit_edge651.i:                                 ; preds = %bb.cq, %.preheader582.i
  %i.alq = tail call fastcc noundef i32 @_ZL11triangulateiPKiPiS1_(i32 noundef %.4576.i, ptr noundef nonnull %i.alk, ptr noundef nonnull %i.aln, ptr noundef nonnull %i.alh) ; 3 uses
  %i.alr = icmp slt i32 %i.alq, 0
  br i1 %i.alr, label %bb.cr, label %bb.cs

bb.cq:                                            ; preds = %bb.cq, %.lr.ph650.i
  %indvars.iv737.i = phi i64 [ 0, %.lr.ph650.i ], [ %indvars.iv.next738.i, %bb.cq ] ; 5 uses
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv737.i
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !76
  %i.alu = mul nsw i32 %i.alt, 3
  %i.alv = sext i32 %i.alu to i64
  %i.alw = getelementptr inbounds [2 x i8], ptr %i.alp, i64 %i.alv ; 2 uses
  %.idx822.i = shl nuw nsw i64 %indvars.iv737.i, 4
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alk, i64 %.idx822.i ; 3 uses
  %i.aly = load <2 x i16>, ptr %i.alw, align 2, !tbaa !77
  %i.alz = zext <2 x i16> %i.aly to <2 x i32>
  store <2 x i32> %i.alz, ptr %i.alx, align 4, !tbaa !76
  %i.ama = getelementptr i8, ptr %i.alw, i64 4
  %i.amb = load i16, ptr %i.ama, align 2, !tbaa !77
  %i.amc = zext i16 %i.amb to i32
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  store i32 %i.amc, ptr %i.amd, align 4, !tbaa !76
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alx, i64 12
  store i32 0, ptr %i.ame, align 4, !tbaa !76
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.aln, i64 %indvars.iv737.i
  %i.amg = trunc nuw nsw i64 %indvars.iv737.i to i32
  store i32 %i.amg, ptr %i.amf, align 4, !tbaa !76
  %indvars.iv.next738.i = add nuw nsw i64 %indvars.iv737.i, 1 ; 2 uses
  %exitcond741.not.i = icmp eq i64 %indvars.iv.next738.i, %wide.trip.count740.i
  br i1 %exitcond741.not.i, label %._crit_edge651.i, label %bb.cq

bb.cr:                                            ; preds = %._crit_edge651.i
  %i.amh = sub nsw i32 0, %i.alq
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.42) #8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %._crit_edge651.i
  %.0335.i = phi i32 [ %i.amh, %bb.cr ], [ %i.alq, %._crit_edge651.i ] ; 6 uses
  %i.ami = add nuw nsw i32 %.0335.i, 1            ; 2 uses
  %i.amj = shl nuw i32 %i.ami, 1
  %i.amk = zext i32 %i.amj to i64
  %i.aml = mul nsw i64 %i.amk, %i.xb
  %i.amm = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.aml, i32 noundef 1) #8 ; 14 uses
  %i.amn = ptrtoaddr ptr %i.amm to i64
  %.not400.i = icmp eq ptr %i.amm, null
  br i1 %.not400.i, label %.critedge589, label %bb.ct

.critedge589:                                     ; preds = %bb.cs
  %i.amo = mul nsw i32 %i.ami, %i.wt
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.43, i32 noundef %i.amo) #8
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.aln) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alk) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alh) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yk) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yi) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yg) #8
  br label %bb.dz

bb.ct:                                            ; preds = %bb.cs
  %i.amp = zext nneg i32 %.0335.i to i64          ; 3 uses
  %i.amq = shl nuw nsw i64 %i.amp, 1
  %i.amr = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.amq, i32 noundef 1) #8 ; 8 uses
  %.not401.i = icmp eq ptr %i.amr, null
  br i1 %.not401.i, label %.critedge590, label %bb.cu

.critedge590:                                     ; preds = %bb.ct
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.44, i32 noundef %.0335.i) #8
  tail call void @_Z6rcFreePv(ptr noundef null) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.amm) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.aln) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alk) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.alh) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yk) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yi) #8
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.yg) #8
  br label %bb.dz

bb.cu:                                            ; preds = %bb.ct
  %i.ams = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.amp, i32 noundef 1) #8 ; 7 uses
  %.not402.i = icmp eq ptr %i.ams, null
  br i1 %.not402.i, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.45, i32 noundef %.0335.i) #8
  br label %.critedge591

bb.cw:                                            ; preds = %bb.cu
  %i.amt = mul nsw i32 %.0335.i, %i.wt
  %i.amu = sext i32 %i.amt to i64                 ; 2 uses
  %i.amv = getelementptr inbounds [2 x i8], ptr %i.amm, i64 %i.amu ; 8 uses
  %i.amw = shl nsw i64 %i.amu, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.amm, i8 -1, i64 %i.amw, i1 false)
  %.not695.i = icmp eq i32 %.0335.i, 0
  br i1 %.not695.i, label %.loopexit.i446, label %.lr.ph656.i

._crit_edge657.i:                                 ; preds = %bb.db
  %.not403.i = icmp eq i32 %.1333.i, 0
  br i1 %.not403.i, label %.loopexit.i446, label %bb.dc

.lr.ph656.i:                                      ; preds = %bb.cw, %bb.db
  %indvars.iv742.i = phi i64 [ %indvars.iv.next743.i, %bb.db ], [ 0, %bb.cw ] ; 2 uses
  %.0332652.i = phi i32 [ %.1333.i, %bb.db ], [ 0, %bb.cw ] ; 5 uses
  %.idx823.i = mul nuw nsw i64 %indvars.iv742.i, 12
  %i.amx = getelementptr inbounds nuw i8, ptr %i.alh, i64 %.idx823.i ; 3 uses
  %i.amy = load i32, ptr %i.amx, align 4, !tbaa !76 ; 3 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amx, i64 4
  %i.ana = load i32, ptr %i.amz, align 4, !tbaa !76 ; 3 uses
  %.not408.i = icmp eq i32 %i.amy, %i.ana
  br i1 %.not408.i, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph656.i
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amx, i64 8
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !76 ; 3 uses
  %.not409.i = icmp eq i32 %i.amy, %i.anc
  %.not410.i = icmp eq i32 %i.ana, %i.anc
  %or.cond.i444 = or i1 %.not409.i, %.not410.i
  br i1 %or.cond.i444, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.and = sext i32 %i.amy to i64                 ; 3 uses
  %i.ane = getelementptr inbounds [4 x i8], ptr %i.yg, i64 %i.and
end_hunk_0
