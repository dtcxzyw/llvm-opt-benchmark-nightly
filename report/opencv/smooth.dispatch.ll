Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/smooth.dispatch?download=true
inline.NumInlined: 2394
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZN2cv12cpu_baseline12_GLOBAL__N_113hlineSmooth5NIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib:bb.a
  %i.arl = tail call i16 @llvm.uadd.sat.i16(i16 %i.arc, i16 %i.ark)
  %i.arm = getelementptr inbounds nuw [2 x i8], ptr %.1403, i64 %indvars.iv664
  store i16 %i.arl, ptr %i.arm, align 2, !tbaa !45
  %i.arn = load i16, ptr %2, align 2, !tbaa !45, !noalias !1458
  %i.aro = zext i16 %i.arn to i32
  %i.arp = load i8, ptr %i.aqn, align 1, !tbaa !21, !noalias !1458
  %i.arq = zext i8 %i.arp to i32
  %i.arr = mul nuw nsw i32 %i.arq, %i.aro
  %.sroa.speculated.i469 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.arr, i32 65535)
  %i.ars = trunc nuw i32 %.sroa.speculated.i469 to i16
  %i.art = load i16, ptr %i.anq, align 2, !tbaa !45, !noalias !1461
  %i.aru = zext i16 %i.art to i32
  %i.arv = load i8, ptr %i.aqv, align 1, !tbaa !21, !noalias !1461
  %i.arw = zext i8 %i.arv to i32
  %i.arx = mul nuw nsw i32 %i.arw, %i.aru
  %.sroa.speculated.i470 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.arx, i32 65535)
  %i.ary = trunc nuw i32 %.sroa.speculated.i470 to i16
  %i.arz = tail call i16 @llvm.uadd.sat.i16(i16 %i.ars, i16 %i.ary)
  %i.asa = load i16, ptr %i.anr, align 2, !tbaa !45, !noalias !1464
  %i.asb = zext i16 %i.asa to i32
  %i.asc = load i8, ptr %i.are, align 1, !tbaa !21, !noalias !1464
  %i.asd = zext i8 %i.asc to i32
  %i.ase = mul nuw nsw i32 %i.asd, %i.asb
  %.sroa.speculated.i471 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.ase, i32 65535)
  %i.asf = trunc nuw i32 %.sroa.speculated.i471 to i16
  %i.asg = tail call i16 @llvm.uadd.sat.i16(i16 %i.arz, i16 %i.asf)
  %i.ash = getelementptr inbounds nuw [2 x i8], ptr %.1403, i64 %i.ard
  store i16 %i.asg, ptr %i.ash, align 2, !tbaa !45
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1 ; 2 uses
  %exitcond668.not = icmp eq i64 %indvars.iv.next665, %wide.trip.count667
  br i1 %exitcond668.not, label %._crit_edge622, label %scalar.ph1393, !llvm.loop !1481

bb.l:                                             ; preds = %._crit_edge622
  %i.asi = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %5, i32 noundef %5, i32 noundef %6)
  %i.asj = add nsw i32 %5, 1
  %i.ask = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.asj, i32 noundef %5, i32 noundef %6)
  br i1 %i.a, label %.lr.ph625, label %.loopexit

.lr.ph625:                                        ; preds = %bb.l
  %i.asl = sub i32 %i.ask, %i.aiw
  %i.asm = mul i32 %i.asl, %1
  %i.asn = sub nsw i32 %i.asi, %i.aiw
  %i.aso = mul nsw i32 %i.asn, %1
  %i.asp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 4 uses
  %i.asr = sext i32 %i.aso to i64                 ; 2 uses
  %i.ass = zext nneg i32 %1 to i64
  %i.ast = sext i32 %i.asm to i64                 ; 2 uses
  %wide.trip.count672 = zext nneg i32 %1 to i64   ; 6 uses
  %invariant.gep711 = getelementptr i8, ptr %.1, i64 %i.asr ; 4 uses
  %invariant.gep713 = getelementptr inbounds nuw [2 x i8], ptr %.1403, i64 %i.ass ; 8 uses
  %invariant.gep715 = getelementptr i8, ptr %.1, i64 %i.ast ; 4 uses
  %min.iters.check1453 = icmp ult i32 %1, 16
  br i1 %min.iters.check1453, label %scalar.ph1452.preheader, label %vector.memcheck1424

vector.memcheck1424:                              ; preds = %.lr.ph625
  %i.asu = shl nuw nsw i64 %wide.trip.count672, 2
  %scevgep1425 = getelementptr i8, ptr %.1403, i64 %i.asu ; 3 uses
  %scevgep1426 = getelementptr i8, ptr %2, i64 10 ; 2 uses
  %i.asv = getelementptr i8, ptr %.1, i64 %i.ast
  %scevgep1427 = getelementptr i8, ptr %i.asv, i64 %wide.trip.count672 ; 2 uses
  %i.asw = getelementptr i8, ptr %.1, i64 %i.asr
  %scevgep1428 = getelementptr i8, ptr %i.asw, i64 %wide.trip.count672 ; 2 uses
  %bound01429 = icmp ult ptr %invariant.gep713, %scevgep1426
  %bound11430 = icmp ult ptr %i.asq, %scevgep1425
  %found.conflict1431 = and i1 %bound01429, %bound11430
  %bound01432 = icmp ult ptr %invariant.gep713, %scevgep1427
  %bound11433 = icmp ult ptr %invariant.gep715, %scevgep1425
  %found.conflict1434 = and i1 %bound01432, %bound11433
  %conflict.rdx1435 = or i1 %found.conflict1431, %found.conflict1434
  %bound01436 = icmp ult ptr %invariant.gep713, %scevgep1428
  %bound11437 = icmp ult ptr %invariant.gep711, %scevgep1425
  %found.conflict1438 = and i1 %bound01436, %bound11437
  %conflict.rdx1439 = or i1 %conflict.rdx1435, %found.conflict1438
  %bound01440 = icmp ult ptr %.1403, %scevgep1426
  %bound11441 = icmp ult ptr %i.asq, %invariant.gep713
  %found.conflict1442 = and i1 %bound01440, %bound11441
  %conflict.rdx1443 = or i1 %conflict.rdx1439, %found.conflict1442
  %bound01444 = icmp ult ptr %.1403, %scevgep1427
  %bound11445 = icmp ult ptr %invariant.gep715, %invariant.gep713
  %found.conflict1446 = and i1 %bound01444, %bound11445
  %conflict.rdx1447 = or i1 %conflict.rdx1443, %found.conflict1446
  %bound01448 = icmp ult ptr %.1403, %scevgep1428
  %bound11449 = icmp ult ptr %invariant.gep711, %invariant.gep713
  %found.conflict1450 = and i1 %bound01448, %bound11449
  %conflict.rdx1451 = or i1 %conflict.rdx1447, %found.conflict1450
  br i1 %conflict.rdx1451, label %scalar.ph1452.preheader, label %vector.ph1454

vector.ph1454:                                    ; preds = %vector.memcheck1424
  %n.vec1455 = and i64 %wide.trip.count672, 2147483640 ; 3 uses
  %i.asx = load i16, ptr %i.asp, align 2, !tbaa !45, !alias.scope !1482, !noalias !1485
  %broadcast.splatinsert1456 = insertelement <8 x i16> poison, i16 %i.asx, i64 0
  %broadcast.splat1457 = shufflevector <8 x i16> %broadcast.splatinsert1456, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.asy = zext <8 x i16> %broadcast.splat1457 to <8 x i32>
  %i.asz = load i16, ptr %i.asq, align 2, !tbaa !45, !alias.scope !1482, !noalias !1488
  %broadcast.splatinsert1458 = insertelement <8 x i16> poison, i16 %i.asz, i64 0
  %broadcast.splat1459 = shufflevector <8 x i16> %broadcast.splatinsert1458, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ata = zext <8 x i16> %broadcast.splat1459 to <8 x i32>
  %i.atb = load i16, ptr %i.asp, align 2, !tbaa !45, !alias.scope !1482, !noalias !1491
  %broadcast.splatinsert1460 = insertelement <8 x i16> poison, i16 %i.atb, i64 0
  %broadcast.splat1461 = shufflevector <8 x i16> %broadcast.splatinsert1460, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.atc = zext <8 x i16> %broadcast.splat1461 to <8 x i32>
  br label %vector.body1462

vector.body1462:                                  ; preds = %vector.body1462, %vector.ph1454
  %index1463 = phi i64 [ 0, %vector.ph1454 ], [ %index.next1469, %vector.body1462 ] ; 5 uses
  %i.atd = getelementptr inbounds nuw [2 x i8], ptr %.1403, i64 %index1463 ; 2 uses
  %i.ate = getelementptr i8, ptr %invariant.gep711, i64 %index1463 ; 2 uses
  %wide.load1464 = load <8 x i8>, ptr %i.ate, align 1, !tbaa !21, !alias.scope !1494, !noalias !1485
  %i.atf = zext <8 x i8> %wide.load1464 to <8 x i32>
  %i.atg = mul nuw nsw <8 x i32> %i.atf, %i.asy
  %i.ath = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.atg, <8 x i32> splat (i32 65535))
  %i.ati = trunc nuw <8 x i32> %i.ath to <8 x i16>
  %wide.load1465 = load <8 x i16>, ptr %i.atd, align 2, !tbaa !45, !alias.scope !1496, !noalias !1498
  %i.atj = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %wide.load1465, <8 x i16> %i.ati)
  store <8 x i16> %i.atj, ptr %i.atd, align 2, !tbaa !45, !alias.scope !1496, !noalias !1502
  %i.atk = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep713, i64 %index1463 ; 2 uses
  %wide.load1466 = load <8 x i8>, ptr %i.ate, align 1, !tbaa !21, !alias.scope !1494, !noalias !1488
  %i.atl = zext <8 x i8> %wide.load1466 to <8 x i32>
  %i.atm = mul nuw nsw <8 x i32> %i.atl, %i.ata
  %i.atn = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.atm, <8 x i32> splat (i32 65535))
  %i.ato = trunc nuw <8 x i32> %i.atn to <8 x i16>
  %wide.load1467 = load <8 x i16>, ptr %i.atk, align 2, !tbaa !45, !alias.scope !1503, !noalias !1505
  %i.atp = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %wide.load1467, <8 x i16> %i.ato)
  %i.atq = getelementptr i8, ptr %invariant.gep715, i64 %index1463
  %wide.load1468 = load <8 x i8>, ptr %i.atq, align 1, !tbaa !21, !alias.scope !1508, !noalias !1491
  %i.atr = zext <8 x i8> %wide.load1468 to <8 x i32>
  %i.ats = mul nuw nsw <8 x i32> %i.atr, %i.atc
  %i.att = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ats, <8 x i32> splat (i32 65535))
  %i.atu = trunc nuw <8 x i32> %i.att to <8 x i16>
  %i.atv = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.atp, <8 x i16> %i.atu)
  store <8 x i16> %i.atv, ptr %i.atk, align 2, !tbaa !45, !alias.scope !1503, !noalias !1502
  %index.next1469 = add nuw i64 %index1463, 8     ; 2 uses
  %i.atw = icmp eq i64 %index.next1469, %n.vec1455
  br i1 %i.atw, label %middle.block1470, label %vector.body1462, !llvm.loop !1509

middle.block1470:                                 ; preds = %vector.body1462
  %cmp.n1471 = icmp eq i64 %n.vec1455, %wide.trip.count672
  br i1 %cmp.n1471, label %.loopexit, label %scalar.ph1452.preheader

scalar.ph1452.preheader:                          ; preds = %vector.memcheck1424, %.lr.ph625, %middle.block1470
  %indvars.iv669.ph = phi i64 [ 0, %vector.memcheck1424 ], [ 0, %.lr.ph625 ], [ %n.vec1455, %middle.block1470 ]
  br label %scalar.ph1452

scalar.ph1452:                                    ; preds = %scalar.ph1452.preheader, %scalar.ph1452
  %indvars.iv669 = phi i64 [ %indvars.iv.next670, %scalar.ph1452 ], [ %indvars.iv669.ph, %scalar.ph1452.preheader ] ; 5 uses
  %i.atx = getelementptr inbounds nuw [2 x i8], ptr %.1403, i64 %indvars.iv669 ; 2 uses
  %gep712 = getelementptr i8, ptr %invariant.gep711, i64 %indvars.iv669 ; 2 uses
  %i.aty = load i16, ptr %i.asp, align 2, !tbaa !45, !noalias !1485
  %i.atz = zext i16 %i.aty to i32
  %i.aua = load i8, ptr %gep712, align 1, !tbaa !21, !noalias !1485
  %i.aub = zext i8 %i.aua to i32
  %i.auc = mul nuw nsw i32 %i.aub, %i.atz
  %.sroa.speculated.i472 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.auc, i32 65535)
  %i.aud = trunc nuw i32 %.sroa.speculated.i472 to i16
  %i.aue = load i16, ptr %i.atx, align 2, !tbaa !45, !noalias !1510
  %i.auf = tail call i16 @llvm.uadd.sat.i16(i16 %i.aue, i16 %i.aud)
  store i16 %i.auf, ptr %i.atx, align 2, !tbaa !45
  %gep714 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep713, i64 %indvars.iv669 ; 2 uses
  %i.aug = load i16, ptr %i.asq, align 2, !tbaa !45, !noalias !1488
  %i.auh = zext i16 %i.aug to i32
  %i.aui = load i8, ptr %gep712, align 1, !tbaa !21, !noalias !1488
  %i.auj = zext i8 %i.aui to i32
  %i.auk = mul nuw nsw i32 %i.auj, %i.auh
  %.sroa.speculated.i473 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.auk, i32 65535)
  %i.aul = trunc nuw i32 %.sroa.speculated.i473 to i16
  %i.aum = load i16, ptr %gep714, align 2, !tbaa !45, !noalias !1511
  %i.aun = tail call i16 @llvm.uadd.sat.i16(i16 %i.aum, i16 %i.aul)
  %gep716 = getelementptr i8, ptr %invariant.gep715, i64 %indvars.iv669
  %i.auo = load i16, ptr %i.asp, align 2, !tbaa !45, !noalias !1491
  %i.aup = zext i16 %i.auo to i32
  %i.auq = load i8, ptr %gep716, align 1, !tbaa !21, !noalias !1491
  %i.aur = zext i8 %i.auq to i32
  %i.aus = mul nuw nsw i32 %i.aur, %i.aup
  %.sroa.speculated.i474 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.aus, i32 65535)
  %i.aut = trunc nuw i32 %.sroa.speculated.i474 to i16
  %i.auu = tail call i16 @llvm.uadd.sat.i16(i16 %i.aun, i16 %i.aut)
  store i16 %i.auu, ptr %gep714, align 2, !tbaa !45
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1 ; 2 uses
  %exitcond673.not = icmp eq i64 %indvars.iv.next670, %wide.trip.count672
  br i1 %exitcond673.not, label %.loopexit, label %scalar.ph1452, !llvm.loop !1512

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph943, %scalar.ph1045, %scalar.ph1114, %scalar.ph1142.prol.loopexit, %scalar.ph1142, %scalar.ph1452, %middle.block, %middle.block977, %middle.block1082, %middle.block1133, %middle.block1152, %middle.block1470, %bb.i, %.preheader597, %bb.g, %.preheader594, %bb.e, %bb.l, %._crit_edge622
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_120hlineSmoothONa_yzy_aIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5, i32 noundef %6, i1 zeroext %7) #0 {
bb.a:
  %i.a = sdiv i32 %3, 2                           ; 12 uses
  %i.b = sub i32 %3, %i.a                         ; 3 uses
  %.sroa.speculated215 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.a) ; 3 uses
  %i.c = icmp sgt i32 %.sroa.speculated215, 0
  br i1 %i.c, label %.preheader242.lr.ph, label %._crit_edge273

.preheader242.lr.ph:                              ; preds = %bb.a
  %i.d = icmp slt i32 %1, 1                       ; 4 uses
  %.not179 = icmp ne i32 %6, 0                    ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 4 uses
  %i.f = sext i32 %i.a to i64                     ; 4 uses
  %i.g = add nsw i64 %i.f, 1
  %i.h = zext i32 %1 to i64                       ; 22 uses
  %i.i = sext i32 %i.b to i64                     ; 2 uses
  %wide.trip.count380 = zext nneg i32 %.sroa.speculated215 to i64
  %i.j = shl nuw nsw i64 %i.h, 1                  ; 3 uses
  %i.k = shl nsw i64 %i.e, 1
  %scevgep458 = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %8 = shl nsw i64 %i.e, 1
  %i.l = shl nsw i64 %i.f, 1                      ; 2 uses
  %i.m = shl nsw i64 %i.e, 1
  %scevgep494 = getelementptr i8, ptr %0, i64 %i.h
  %9 = getelementptr i8, ptr %4, i64 %i.j
  %10 = getelementptr i8, ptr %4, i64 %i.j
  %i.n = getelementptr i8, ptr %2, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 2
  %i.p = getelementptr i8, ptr %2, i64 %i.l
  %i.q = getelementptr i8, ptr %4, i64 %i.j
  %xtraiter = and i64 %i.h, 1
  %i.r = icmp eq i32 %1, 1
  %unroll_iter = and i64 %i.h, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod647 = trunc i32 %1 to i1
  %min.iters.check504 = icmp ult i32 %1, 8
  %n.vec506 = and i64 %i.h, 2147483640            ; 3 uses
  %cmp.n515 = icmp eq i64 %n.vec506, %i.h
  %xtraiter648 = and i64 %i.h, 1
  %lcmp.mod649.not = icmp eq i64 %xtraiter648, 0
  %i.s = add nsw i64 %i.h, -1
  %min.iters.check478 = icmp ult i32 %1, 8
  %n.vec480 = and i64 %i.h, 2147483640            ; 3 uses
  %cmp.n489 = icmp eq i64 %n.vec480, %i.h
  %xtraiter650 = and i64 %i.h, 1
  %lcmp.mod651.not = icmp eq i64 %xtraiter650, 0
  %i.t = add nsw i64 %i.h, -1
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %i.h, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.h
  %xtraiter652 = and i64 %i.h, 1
  %lcmp.mod653.not = icmp eq i64 %xtraiter652, 0
  %i.u = add nsw i64 %i.h, -1
  br label %.preheader242

.preheader242:                                    ; preds = %.preheader242.lr.ph, %.loopexit240
  %indvars.iv376 = phi i64 [ 0, %.preheader242.lr.ph ], [ %indvars.iv.next377, %.loopexit240 ] ; 11 uses
  %indvars.iv356 = phi i64 [ %i.g, %.preheader242.lr.ph ], [ %indvars.iv.next357, %.loopexit240 ] ; 2 uses
  %indvars.iv349 = phi i32 [ %i.b, %.preheader242.lr.ph ], [ %indvars.iv.next350, %.loopexit240 ] ; 3 uses
  %indvars.iv345 = phi i32 [ %i.a, %.preheader242.lr.ph ], [ %indvars.iv.next346, %.loopexit240 ] ; 4 uses
  %.0174270 = phi ptr [ %4, %.preheader242.lr.ph ], [ %i.hc, %.loopexit240 ] ; 22 uses
  %i.v = mul i64 %i.m, %indvars.iv376
  %scevgep492 = getelementptr i8, ptr %9, i64 %i.v ; 2 uses
  %i.w = zext i32 %indvars.iv345 to i64
  %i.x = shl nuw nsw i64 %i.w, 1
  %scevgep493 = getelementptr i8, ptr %2, i64 %i.x
  %i.y = mul i64 %8, %indvars.iv376
  %scevgep465 = getelementptr i8, ptr %10, i64 %i.y ; 2 uses
  %11 = mul nsw i64 %indvars.iv376, -2            ; 2 uses
  %scevgep466 = getelementptr i8, ptr %i.o, i64 %11
  %scevgep467 = getelementptr i8, ptr %i.p, i64 %11
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv349)
  %i.z = zext i32 %smin to i64                    ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 1
  %scevgep468 = getelementptr i8, ptr %scevgep467, i64 %i.aa
  %i.ab = mul nuw i64 %i.h, %i.z
  %scevgep469 = getelementptr i8, ptr %0, i64 %i.ab
  %i.ac = mul i64 %i.k, %indvars.iv376
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ac ; 2 uses
  %smin365 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv349) ; 5 uses
  %i.ad = add i32 %smin365, %indvars.iv345        ; 2 uses
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader242
  %i.ae = sub nsw i64 %i.f, %indvars.iv376
  %i.af = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ae ; 3 uses
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod647)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.ah = load i16, ptr %i.af, align 2, !tbaa !45, !noalias !1513
  %i.ai = zext i16 %i.ah to i32
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !21, !noalias !1513
  %i.ak = zext i8 %i.aj to i32
  %i.al = mul nuw nsw i32 %i.ak, %i.ai
  %.sroa.speculated.i.epil = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.al, i32 65535)
  %i.am = trunc nuw i32 %.sroa.speculated.i.epil to i16
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.0174270, i64 %indvars.iv.epil.init
  store i16 %i.am, ptr %i.an, align 2, !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader242
  br i1 %.not179, label %bb.b, label %.loopexit241

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ap = load i16, ptr %i.af, align 2, !tbaa !45, !noalias !1513
  %i.aq = zext i16 %i.ap to i32
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !21, !noalias !1513
  %i.as = zext i8 %i.ar to i32
  %i.at = mul nuw nsw i32 %i.as, %i.aq
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.at, i32 65535)
  %i.au = trunc nuw i32 %.sroa.speculated.i to i16
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.0174270, i64 %indvars.iv
  store i16 %i.au, ptr %i.av, align 2, !tbaa !45
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.ax = load i16, ptr %i.af, align 2, !tbaa !45, !noalias !1513
  %i.ay = zext i16 %i.ax to i32
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !21, !noalias !1513
  %i.ba = zext i8 %i.az to i32
  %i.bb = mul nuw nsw i32 %i.ba, %i.ay
  %.sroa.speculated.i.1 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.bb, i32 65535)
  %i.bc = trunc nuw i32 %.sroa.speculated.i.1 to i16
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.0174270, i64 %indvars.iv.next
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !1516

bb.b:                                             ; preds = %._crit_edge
  %i.be = sub nsw i64 %indvars.iv376, %i.f        ; 3 uses
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph251, label %.loopexit241

.lr.ph251:                                        ; preds = %bb.b
  br i1 %i.d, label %.lr.ph251.split.preheader, label %.lr.ph246.us.preheader

.lr.ph251.split.preheader:                        ; preds = %.lr.ph251
  %i.bg = trunc nsw i64 %i.be to i32
  br label %.lr.ph251.split

.lr.ph246.us.preheader:                           ; preds = %.lr.ph251
  %wide.trip.count347 = zext i32 %indvars.iv345 to i64
  %i.bh = trunc nsw i64 %i.be to i32
  %bound0496 = icmp ult ptr %.0174270, %scevgep493
  %bound1497 = icmp ult ptr %2, %scevgep492
  %found.conflict498 = and i1 %bound0496, %bound1497
  br label %.lr.ph246.us

.lr.ph246.us:                                     ; preds = %.lr.ph246.us.preheader, %._crit_edge247.us
  %indvars.iv342 = phi i64 [ 0, %.lr.ph246.us.preheader ], [ %indvars.iv.next343, %._crit_edge247.us ] ; 2 uses
  %.0168248.us = phi i32 [ %i.bh, %.lr.ph246.us.preheader ], [ %i.cy, %._crit_edge247.us ] ; 2 uses
  %i.bi = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %.0168248.us, i32 noundef %5, i32 noundef %6)
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv342 ; 4 uses
  %i.bk = mul nsw i32 %i.bi, %1
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.bl ; 5 uses
  br i1 %min.iters.check504, label %scalar.ph503.preheader, label %vector.memcheck491

vector.memcheck491:                               ; preds = %.lr.ph246.us
  %scevgep495 = getelementptr i8, ptr %scevgep494, i64 %i.bl
  %bound0499 = icmp ult ptr %.0174270, %scevgep495
  %bound1500 = icmp ult ptr %invariant.gep, %scevgep492
  %found.conflict501 = and i1 %bound0499, %bound1500
  %conflict.rdx502 = or i1 %found.conflict498, %found.conflict501
  br i1 %conflict.rdx502, label %scalar.ph503.preheader, label %vector.ph505

vector.ph505:                                     ; preds = %vector.memcheck491
  %i.bm = load i16, ptr %i.bj, align 2, !tbaa !45, !alias.scope !1517, !noalias !1520
  %broadcast.splatinsert507 = insertelement <8 x i16> poison, i16 %i.bm, i64 0
  %broadcast.splat508 = shufflevector <8 x i16> %broadcast.splatinsert507, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bn = zext <8 x i16> %broadcast.splat508 to <8 x i32>
  br label %vector.body509

vector.body509:                                   ; preds = %vector.body509, %vector.ph505
  %index510 = phi i64 [ 0, %vector.ph505 ], [ %index.next513, %vector.body509 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.0174270, i64 %index510 ; 2 uses
  %i.bp = getelementptr i8, ptr %invariant.gep, i64 %index510
  %wide.load511 = load <8 x i8>, ptr %i.bp, align 1, !tbaa !21, !alias.scope !1523, !noalias !1520
  %i.bq = zext <8 x i8> %wide.load511 to <8 x i32>
  %i.br = mul nuw nsw <8 x i32> %i.bq, %i.bn
  %i.bs = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.br, <8 x i32> splat (i32 65535))
  %i.bt = trunc nuw <8 x i32> %i.bs to <8 x i16>
  %wide.load512 = load <8 x i16>, ptr %i.bo, align 2, !tbaa !45, !alias.scope !1525, !noalias !1527
  %i.bu = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %wide.load512, <8 x i16> %i.bt)
  store <8 x i16> %i.bu, ptr %i.bo, align 2, !tbaa !45, !alias.scope !1525, !noalias !1530
  %index.next513 = add nuw i64 %index510, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next513, %n.vec506
  br i1 %i.bv, label %middle.block514, label %vector.body509, !llvm.loop !1531

middle.block514:                                  ; preds = %vector.body509
  br i1 %cmp.n515, label %._crit_edge247.us, label %scalar.ph503.preheader

scalar.ph503.preheader:                           ; preds = %vector.memcheck491, %.lr.ph246.us, %middle.block514
  %indvars.iv337.ph = phi i64 [ 0, %vector.memcheck491 ], [ 0, %.lr.ph246.us ], [ %n.vec506, %middle.block514 ] ; 5 uses
  br i1 %lcmp.mod649.not, label %scalar.ph503.prol.loopexit, label %scalar.ph503.prol

scalar.ph503.prol:                                ; preds = %scalar.ph503.preheader
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.0174270, i64 %indvars.iv337.ph ; 2 uses
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv337.ph
  %i.bx = load i16, ptr %i.bj, align 2, !tbaa !45, !noalias !1520
  %i.by = zext i16 %i.bx to i32
  %i.bz = load i8, ptr %gep.prol, align 1, !tbaa !21, !noalias !1520
  %i.ca = zext i8 %i.bz to i32
  %i.cb = mul nuw nsw i32 %i.ca, %i.by
  %.sroa.speculated.i180.us.prol = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.cb, i32 65535)
  %i.cc = trunc nuw i32 %.sroa.speculated.i180.us.prol to i16
  %i.cd = load i16, ptr %i.bw, align 2, !tbaa !45, !noalias !1532
  %i.ce = tail call i16 @llvm.uadd.sat.i16(i16 %i.cd, i16 %i.cc)
  store i16 %i.ce, ptr %i.bw, align 2, !tbaa !45
  %indvars.iv.next338.prol = or disjoint i64 %indvars.iv337.ph, 1
  br label %scalar.ph503.prol.loopexit

scalar.ph503.prol.loopexit:                       ; preds = %scalar.ph503.prol, %scalar.ph503.preheader
  %indvars.iv337.unr = phi i64 [ %indvars.iv337.ph, %scalar.ph503.preheader ], [ %indvars.iv.next338.prol, %scalar.ph503.prol ]
  %i.cf = icmp eq i64 %indvars.iv337.ph, %i.s
  br i1 %i.cf, label %._crit_edge247.us, label %scalar.ph503

scalar.ph503:                                     ; preds = %scalar.ph503.prol.loopexit, %scalar.ph503
  %indvars.iv337 = phi i64 [ %indvars.iv.next338.1, %scalar.ph503 ], [ %indvars.iv337.unr, %scalar.ph503.prol.loopexit ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.0174270, i64 %indvars.iv337 ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv337
  %i.ch = load i16, ptr %i.bj, align 2, !tbaa !45, !noalias !1520
  %i.ci = zext i16 %i.ch to i32
  %i.cj = load i8, ptr %gep, align 1, !tbaa !21, !noalias !1520
  %i.ck = zext i8 %i.cj to i32
  %i.cl = mul nuw nsw i32 %i.ck, %i.ci
  %.sroa.speculated.i180.us = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.cl, i32 65535)
  %i.cm = trunc nuw i32 %.sroa.speculated.i180.us to i16
  %i.cn = load i16, ptr %i.cg, align 2, !tbaa !45, !noalias !1532
  %i.co = tail call i16 @llvm.uadd.sat.i16(i16 %i.cn, i16 %i.cm)
  store i16 %i.co, ptr %i.cg, align 2, !tbaa !45
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.0174270, i64 %indvars.iv.next338 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next338
  %i.cq = load i16, ptr %i.bj, align 2, !tbaa !45, !noalias !1520
  %i.cr = zext i16 %i.cq to i32
  %i.cs = load i8, ptr %gep.1, align 1, !tbaa !21, !noalias !1520
  %i.ct = zext i8 %i.cs to i32
  %i.cu = mul nuw nsw i32 %i.ct, %i.cr
  %.sroa.speculated.i180.us.1 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.cu, i32 65535)
  %i.cv = trunc nuw i32 %.sroa.speculated.i180.us.1 to i16
  %i.cw = load i16, ptr %i.cp, align 2, !tbaa !45, !noalias !1532
  %i.cx = tail call i16 @llvm.uadd.sat.i16(i16 %i.cw, i16 %i.cv)
  store i16 %i.cx, ptr %i.cp, align 2, !tbaa !45
  %indvars.iv.next338.1 = add nuw nsw i64 %indvars.iv337, 2 ; 2 uses
  %exitcond341.not.1 = icmp eq i64 %indvars.iv.next338.1, %i.h
  br i1 %exitcond341.not.1, label %._crit_edge247.us, label %scalar.ph503, !llvm.loop !1533

._crit_edge247.us:                                ; preds = %scalar.ph503.prol.loopexit, %scalar.ph503, %middle.block514
  %i.cy = add nsw i32 %.0168248.us, 1
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %exitcond348.not = icmp eq i64 %indvars.iv.next343, %wide.trip.count347
  br i1 %exitcond348.not, label %.loopexit241, label %.lr.ph246.us, !llvm.loop !1534

.lr.ph251.split:                                  ; preds = %.lr.ph251.split.preheader, %.lr.ph251.split
  %.0168248 = phi i32 [ %i.da, %.lr.ph251.split ], [ %i.bg, %.lr.ph251.split.preheader ] ; 2 uses
  %i.cz = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %.0168248, i32 noundef %5, i32 noundef %6) ; 0 uses
  %i.da = add i32 %.0168248, 1                    ; 2 uses
  %exitcond336.not = icmp eq i32 %i.da, 0
  br i1 %exitcond336.not, label %.loopexit241.thread, label %.lr.ph251.split, !llvm.loop !1534

.loopexit241:                                     ; preds = %._crit_edge247.us, %bb.b, %._crit_edge
  %i.db = add nsw i64 %indvars.iv376, %i.i        ; 3 uses
  %i.dc = trunc nsw i64 %i.db to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.dc)
  %i.dd = icmp slt i32 %.sroa.speculated, 2       ; 3 uses
  %i.de = trunc i64 %indvars.iv376 to i32
  %i.df = sub i32 %i.a, %i.de
  %i.dg = add i32 %i.df, 1
  %brmerge = or i1 %i.dd, %i.d
  %.mux = select i1 %i.dd, i32 1, i32 %smin365
  %.mux445 = select i1 %i.dd, i32 %i.dg, i32 %i.ad
  br i1 %brmerge, label %._crit_edge258, label %.preheader238.us.preheader

.loopexit241.thread:                              ; preds = %.lr.ph251.split
  %i.dh = add nsw i64 %indvars.iv376, %i.i        ; 2 uses
  %i.di = trunc nsw i64 %i.dh to i32
  %.sroa.speculated427 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.di)
  %i.dj = icmp sgt i32 %.sroa.speculated427, 1    ; 2 uses
  %i.dk = trunc i64 %indvars.iv376 to i32
  %i.dl = sub i32 %i.a, %i.dk
  %i.dm = add i32 %i.dl, 1
  %spec.select = select i1 %i.dj, i32 %smin365, i32 1
  %spec.select442 = select i1 %i.dj, i32 %i.ad, i32 %i.dm
  br label %._crit_edge258

.preheader238.us.preheader:                       ; preds = %.loopexit241
  %wide.trip.count366 = zext i32 %smin365 to i64
  %bound0470 = icmp ult ptr %.0174270, %scevgep468
  %bound1471 = icmp ult ptr %scevgep466, %scevgep465
  %found.conflict472 = and i1 %bound0470, %bound1471
  %bound0473 = icmp ult ptr %.0174270, %scevgep469
  %bound1474 = icmp ult ptr %scevgep458, %scevgep465
  %found.conflict475 = and i1 %bound0473, %bound1474
  %conflict.rdx476 = or i1 %found.conflict472, %found.conflict475
  br label %.preheader238.us

.preheader238.us:                                 ; preds = %.preheader238.us.preheader, %._crit_edge254.us
  %indvars.iv360 = phi i64 [ 1, %.preheader238.us.preheader ], [ %indvars.iv.next361, %._crit_edge254.us ] ; 2 uses
  %indvars.iv358 = phi i64 [ %indvars.iv356, %.preheader238.us.preheader ], [ %indvars.iv.next359, %._crit_edge254.us ] ; 2 uses
  %i.dn = getelementptr inbounds [2 x i8], ptr %2, i64 %indvars.iv358 ; 4 uses
  %i.do = mul nuw nsw i64 %indvars.iv360, %i.h
  %invariant.gep434 = getelementptr inbounds nuw i8, ptr %0, i64 %i.do ; 4 uses
  %brmerge670 = select i1 %min.iters.check478, i1 true, i1 %conflict.rdx476
  br i1 %brmerge670, label %scalar.ph477.preheader, label %vector.ph479

vector.ph479:                                     ; preds = %.preheader238.us
  %i.dp = load i16, ptr %i.dn, align 2, !tbaa !45, !alias.scope !1535, !noalias !1538
  %broadcast.splatinsert481 = insertelement <8 x i16> poison, i16 %i.dp, i64 0
  %broadcast.splat482 = shufflevector <8 x i16> %broadcast.splatinsert481, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.dq = zext <8 x i16> %broadcast.splat482 to <8 x i32>
  br label %vector.body483

vector.body483:                                   ; preds = %vector.body483, %vector.ph479
  %index484 = phi i64 [ 0, %vector.ph479 ], [ %index.next487, %vector.body483 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %.0174270, i64 %index484 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %invariant.gep434, i64 %index484
  %wide.load485 = load <8 x i8>, ptr %i.ds, align 1, !tbaa !21, !alias.scope !1541, !noalias !1538
  %i.dt = zext <8 x i8> %wide.load485 to <8 x i32>
  %i.du = mul nuw nsw <8 x i32> %i.dt, %i.dq
  %i.dv = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.du, <8 x i32> splat (i32 65535))
  %i.dw = trunc nuw <8 x i32> %i.dv to <8 x i16>
  %wide.load486 = load <8 x i16>, ptr %i.dr, align 2, !tbaa !45, !alias.scope !1543, !noalias !1545
  %i.dx = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %wide.load486, <8 x i16> %i.dw)
  store <8 x i16> %i.dx, ptr %i.dr, align 2, !tbaa !45, !alias.scope !1543, !noalias !1548
  %index.next487 = add nuw i64 %index484, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next487, %n.vec480
  br i1 %i.dy, label %middle.block488, label %vector.body483, !llvm.loop !1549

middle.block488:                                  ; preds = %vector.body483
  br i1 %cmp.n489, label %._crit_edge254.us, label %scalar.ph477.preheader

scalar.ph477.preheader:                           ; preds = %.preheader238.us, %middle.block488
  %indvars.iv351.ph = phi i64 [ %n.vec480, %middle.block488 ], [ 0, %.preheader238.us ] ; 5 uses
  br i1 %lcmp.mod651.not, label %scalar.ph477.prol.loopexit, label %scalar.ph477.prol

scalar.ph477.prol:                                ; preds = %scalar.ph477.preheader
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.0174270, i64 %indvars.iv351.ph ; 2 uses
  %gep435.prol = getelementptr inbounds nuw i8, ptr %invariant.gep434, i64 %indvars.iv351.ph
  %i.ea = load i16, ptr %i.dn, align 2, !tbaa !45, !noalias !1538
  %i.eb = zext i16 %i.ea to i32
  %i.ec = load i8, ptr %gep435.prol, align 1, !tbaa !21, !noalias !1538
  %i.ed = zext i8 %i.ec to i32
  %i.ee = mul nuw nsw i32 %i.ed, %i.eb
  %.sroa.speculated.i182.us.prol = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.ee, i32 65535)
  %i.ef = trunc nuw i32 %.sroa.speculated.i182.us.prol to i16
  %i.eg = load i16, ptr %i.dz, align 2, !tbaa !45, !noalias !1550
  %i.eh = tail call i16 @llvm.uadd.sat.i16(i16 %i.eg, i16 %i.ef)
  store i16 %i.eh, ptr %i.dz, align 2, !tbaa !45
  %indvars.iv.next352.prol = or disjoint i64 %indvars.iv351.ph, 1
  br label %scalar.ph477.prol.loopexit

scalar.ph477.prol.loopexit:                       ; preds = %scalar.ph477.prol, %scalar.ph477.preheader
  %indvars.iv351.unr = phi i64 [ %indvars.iv351.ph, %scalar.ph477.preheader ], [ %indvars.iv.next352.prol, %scalar.ph477.prol ]
  %i.ei = icmp eq i64 %indvars.iv351.ph, %i.t
  br i1 %i.ei, label %._crit_edge254.us, label %scalar.ph477

scalar.ph477:                                     ; preds = %scalar.ph477.prol.loopexit, %scalar.ph477
  %indvars.iv351 = phi i64 [ %indvars.iv.next352.1, %scalar.ph477 ], [ %indvars.iv351.unr, %scalar.ph477.prol.loopexit ] ; 4 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %.0174270, i64 %indvars.iv351 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline12_GLOBAL__N_120hlineSmoothONa_yzy_aIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib:bb.a
  %i.od = load i16, ptr %2, align 2, !tbaa !45, !noalias !1596
  %i.oe = zext i16 %i.od to i32
  %i.of = load i8, ptr %i.oc, align 1, !tbaa !21, !noalias !1596
  %i.og = zext i8 %i.of to i32
  %i.oh = mul nuw nsw i32 %i.og, %i.oe
  %.sroa.speculated.i187 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.oh, i32 65535)
  %i.oi = trunc nuw i32 %.sroa.speculated.i187 to i16
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.2176307, i64 %indvars.iv386
  store i16 %i.oi, ptr %i.oj, align 2, !tbaa !45
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.1173310, i64 %indvars.iv.next387
  %i.ol = load i16, ptr %2, align 2, !tbaa !45, !noalias !1596
  %i.om = zext i16 %i.ol to i32
  %i.on = load i8, ptr %i.ok, align 1, !tbaa !21, !noalias !1596
  %i.oo = zext i8 %i.on to i32
  %i.op = mul nuw nsw i32 %i.oo, %i.om
  %.sroa.speculated.i187.1 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.op, i32 65535)
  %i.oq = trunc nuw i32 %.sroa.speculated.i187.1 to i16
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %.2176307, i64 %indvars.iv.next387
  store i16 %i.oq, ptr %i.or, align 2, !tbaa !45
  %indvars.iv.next387.1 = add nuw nsw i64 %indvars.iv386, 2 ; 2 uses
  %exitcond390.not.1 = icmp eq i64 %indvars.iv.next387.1, %i.km
  br i1 %exitcond390.not.1, label %.preheader236, label %.lr.ph293, !llvm.loop !1623

._crit_edge298.loopexit:                          ; preds = %._crit_edge296.us
  %i.os = trunc nuw nsw i64 %indvars.iv.next399 to i32
  br label %._crit_edge298

._crit_edge298:                                   ; preds = %.preheader236.thread, %.preheader236, %._crit_edge298.loopexit
  %.0157.lcssa = phi i32 [ %.mux450, %.preheader236 ], [ %i.os, %._crit_edge298.loopexit ], [ %spec.select446, %.preheader236.thread ] ; 4 uses
  %i.ot = icmp slt i32 %.0157.lcssa, %3
  %or.cond317 = and i1 %.not, %i.ot
  br i1 %or.cond317, label %.lr.ph306, label %.loopexit

.lr.ph306:                                        ; preds = %._crit_edge298
  br i1 %i.ki, label %.lr.ph303.us.preheader, label %.lr.ph306.split.preheader

.lr.ph306.split.preheader:                        ; preds = %.lr.ph306
  %i.ou = trunc nsw i64 %indvars.iv410 to i32
  br label %.lr.ph306.split

.lr.ph303.us.preheader:                           ; preds = %.lr.ph306
  %i.ov = zext i32 %.0157.lcssa to i64            ; 3 uses
  %i.ow = trunc nsw i64 %indvars.iv410 to i32     ; 2 uses
  %i.ox = shl nuw nsw i64 %i.ov, 1
  %scevgep561 = getelementptr i8, ptr %2, i64 %i.ox
  %i.oy = xor i32 %.0157.lcssa, -1
  %i.oz = add i32 %3, %i.oy
  %i.pa = zext i32 %i.oz to i64
  %i.pb = add nuw nsw i64 %i.ov, %i.pa
  %i.pc = shl nuw nsw i64 %i.pb, 1
  %scevgep563 = getelementptr i8, ptr %scevgep562, i64 %i.pc
  %bound0566 = icmp ult ptr %.2176307, %scevgep563
  %bound1567 = icmp ult ptr %scevgep561, %scevgep560
  %found.conflict568 = and i1 %bound0566, %bound1567
  br label %.lr.ph303.us

.lr.ph303.us:                                     ; preds = %.lr.ph303.us.preheader, %._crit_edge304.us
  %indvars.iv407 = phi i64 [ %i.ov, %.lr.ph303.us.preheader ], [ %indvars.iv.next408, %._crit_edge304.us ] ; 3 uses
  %i.pd = trunc nuw i64 %indvars.iv407 to i32
  %i.pe = add nsw i32 %i.pd, %i.ow
  %i.pf = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.pe, i32 noundef %5, i32 noundef %6)
  %i.pg = sub nsw i32 %i.pf, %i.ow
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv407 ; 4 uses
  %i.pi = mul nsw i32 %i.pg, %1
  %i.pj = sext i32 %i.pi to i64                   ; 2 uses
  %invariant.gep440 = getelementptr i8, ptr %.1173310, i64 %i.pj ; 5 uses
  br i1 %min.iters.check574, label %scalar.ph573.preheader, label %vector.memcheck557

vector.memcheck557:                               ; preds = %.lr.ph303.us
  %scevgep565 = getelementptr i8, ptr %gep669, i64 %i.pj
  %bound0569 = icmp ult ptr %.2176307, %scevgep565
  %bound1570 = icmp ult ptr %invariant.gep440, %scevgep560
  %found.conflict571 = and i1 %bound0569, %bound1570
  %conflict.rdx572 = or i1 %found.conflict568, %found.conflict571
  br i1 %conflict.rdx572, label %scalar.ph573.preheader, label %vector.ph575

vector.ph575:                                     ; preds = %vector.memcheck557
  %i.pk = load i16, ptr %i.ph, align 2, !tbaa !45, !alias.scope !1624, !noalias !1627
  %broadcast.splatinsert577 = insertelement <8 x i16> poison, i16 %i.pk, i64 0
  %broadcast.splat578 = shufflevector <8 x i16> %broadcast.splatinsert577, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.pl = zext <8 x i16> %broadcast.splat578 to <8 x i32>
  br label %vector.body579

vector.body579:                                   ; preds = %vector.body579, %vector.ph575
  %index580 = phi i64 [ 0, %vector.ph575 ], [ %index.next583, %vector.body579 ] ; 3 uses
  %i.pm = getelementptr inbounds nuw [2 x i8], ptr %.2176307, i64 %index580 ; 2 uses
  %i.pn = getelementptr i8, ptr %invariant.gep440, i64 %index580
  %wide.load581 = load <8 x i8>, ptr %i.pn, align 1, !tbaa !21, !alias.scope !1630, !noalias !1627
  %i.po = zext <8 x i8> %wide.load581 to <8 x i32>
  %i.pp = mul nuw nsw <8 x i32> %i.po, %i.pl
  %i.pq = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.pp, <8 x i32> splat (i32 65535))
  %i.pr = trunc nuw <8 x i32> %i.pq to <8 x i16>
  %wide.load582 = load <8 x i16>, ptr %i.pm, align 2, !tbaa !45, !alias.scope !1632, !noalias !1634
  %i.ps = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %wide.load582, <8 x i16> %i.pr)
  store <8 x i16> %i.ps, ptr %i.pm, align 2, !tbaa !45, !alias.scope !1632, !noalias !1637
  %index.next583 = add nuw i64 %index580, 8       ; 2 uses
  %i.pt = icmp eq i64 %index.next583, %n.vec576
  br i1 %i.pt, label %middle.block584, label %vector.body579, !llvm.loop !1638

middle.block584:                                  ; preds = %vector.body579
  br i1 %cmp.n585, label %._crit_edge304.us, label %scalar.ph573.preheader

scalar.ph573.preheader:                           ; preds = %vector.memcheck557, %.lr.ph303.us, %middle.block584
  %indvars.iv402.ph = phi i64 [ 0, %vector.memcheck557 ], [ 0, %.lr.ph303.us ], [ %n.vec576, %middle.block584 ] ; 5 uses
  br i1 %lcmp.mod659.not, label %scalar.ph573.prol.loopexit, label %scalar.ph573.prol

scalar.ph573.prol:                                ; preds = %scalar.ph573.preheader
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %.2176307, i64 %indvars.iv402.ph ; 2 uses
  %gep441.prol = getelementptr i8, ptr %invariant.gep440, i64 %indvars.iv402.ph
  %i.pv = load i16, ptr %i.ph, align 2, !tbaa !45, !noalias !1627
  %i.pw = zext i16 %i.pv to i32
  %i.px = load i8, ptr %gep441.prol, align 1, !tbaa !21, !noalias !1627
  %i.py = zext i8 %i.px to i32
  %i.pz = mul nuw nsw i32 %i.py, %i.pw
  %.sroa.speculated.i189.us.prol = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.pz, i32 65535)
  %i.qa = trunc nuw i32 %.sroa.speculated.i189.us.prol to i16
  %i.qb = load i16, ptr %i.pu, align 2, !tbaa !45, !noalias !1639
  %i.qc = tail call i16 @llvm.uadd.sat.i16(i16 %i.qb, i16 %i.qa)
  store i16 %i.qc, ptr %i.pu, align 2, !tbaa !45
  %indvars.iv.next403.prol = or disjoint i64 %indvars.iv402.ph, 1
  br label %scalar.ph573.prol.loopexit

scalar.ph573.prol.loopexit:                       ; preds = %scalar.ph573.prol, %scalar.ph573.preheader
  %indvars.iv402.unr = phi i64 [ %indvars.iv402.ph, %scalar.ph573.preheader ], [ %indvars.iv.next403.prol, %scalar.ph573.prol ]
  %i.qd = icmp eq i64 %indvars.iv402.ph, %i.lj
  br i1 %i.qd, label %._crit_edge304.us, label %scalar.ph573

scalar.ph573:                                     ; preds = %scalar.ph573.prol.loopexit, %scalar.ph573
  %indvars.iv402 = phi i64 [ %indvars.iv.next403.1, %scalar.ph573 ], [ %indvars.iv402.unr, %scalar.ph573.prol.loopexit ] ; 4 uses
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr %.2176307, i64 %indvars.iv402 ; 2 uses
  %gep441 = getelementptr i8, ptr %invariant.gep440, i64 %indvars.iv402
  %i.qf = load i16, ptr %i.ph, align 2, !tbaa !45, !noalias !1627
  %i.qg = zext i16 %i.qf to i32
  %i.qh = load i8, ptr %gep441, align 1, !tbaa !21, !noalias !1627
  %i.qi = zext i8 %i.qh to i32
  %i.qj = mul nuw nsw i32 %i.qi, %i.qg
  %.sroa.speculated.i189.us = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.qj, i32 65535)
  %i.qk = trunc nuw i32 %.sroa.speculated.i189.us to i16
  %i.ql = load i16, ptr %i.qe, align 2, !tbaa !45, !noalias !1639
  %i.qm = tail call i16 @llvm.uadd.sat.i16(i16 %i.ql, i16 %i.qk)
  store i16 %i.qm, ptr %i.qe, align 2, !tbaa !45
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %.2176307, i64 %indvars.iv.next403 ; 2 uses
  %gep441.1 = getelementptr i8, ptr %invariant.gep440, i64 %indvars.iv.next403
  %i.qo = load i16, ptr %i.ph, align 2, !tbaa !45, !noalias !1627
  %i.qp = zext i16 %i.qo to i32
  %i.qq = load i8, ptr %gep441.1, align 1, !tbaa !21, !noalias !1627
  %i.qr = zext i8 %i.qq to i32
  %i.qs = mul nuw nsw i32 %i.qr, %i.qp
  %.sroa.speculated.i189.us.1 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.qs, i32 65535)
  %i.qt = trunc nuw i32 %.sroa.speculated.i189.us.1 to i16
  %i.qu = load i16, ptr %i.qn, align 2, !tbaa !45, !noalias !1639
  %i.qv = tail call i16 @llvm.uadd.sat.i16(i16 %i.qu, i16 %i.qt)
  store i16 %i.qv, ptr %i.qn, align 2, !tbaa !45
  %indvars.iv.next403.1 = add nuw nsw i64 %indvars.iv402, 2 ; 2 uses
  %exitcond406.not.1 = icmp eq i64 %indvars.iv.next403.1, %i.km
  br i1 %exitcond406.not.1, label %._crit_edge304.us, label %scalar.ph573, !llvm.loop !1640

._crit_edge304.us:                                ; preds = %scalar.ph573.prol.loopexit, %scalar.ph573, %middle.block584
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %i.qw = trunc nuw i64 %indvars.iv.next408 to i32
  %i.qx = icmp sgt i32 %3, %i.qw
  br i1 %i.qx, label %.lr.ph303.us, label %.loopexit, !llvm.loop !1641

.lr.ph306.split:                                  ; preds = %.lr.ph306.split.preheader, %.lr.ph306.split
  %.1305 = phi i32 [ %i.ra, %.lr.ph306.split ], [ %.0157.lcssa, %.lr.ph306.split.preheader ] ; 2 uses
  %i.qy = add nsw i32 %.1305, %i.ou
  %i.qz = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.qy, i32 noundef %5, i32 noundef %6) ; 0 uses
  %i.ra = add i32 %.1305, 1                       ; 2 uses
  %exitcond401.not = icmp eq i32 %i.ra, %3
  br i1 %exitcond401.not, label %.loopexit, label %.lr.ph306.split, !llvm.loop !1641

.loopexit:                                        ; preds = %.lr.ph306.split, %._crit_edge304.us, %._crit_edge298
  %indvars.iv.next411 = add nsw i64 %indvars.iv410, 1 ; 2 uses
  %i.rb = getelementptr inbounds i8, ptr %.1173310, i64 %i.kj
  %i.rc = getelementptr [2 x i8], ptr %.2176307, i64 %i.kj
  %i.rd = icmp slt i64 %indvars.iv.next411, %i.kp
  %indvars.iv.next392 = add i32 %indvars.iv391, -1
  %indvar.next559 = add i64 %indvar558, 1
  br i1 %i.rd, label %.preheader237, label %._crit_edge316, !llvm.loop !1642

._crit_edge316:                                   ; preds = %.loopexit, %._crit_edge285
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_111hlineSmoothIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5, i32 noundef %6, i1 zeroext %7) #0 {
bb.a:
  %i.a = sdiv i32 %3, 2                           ; 9 uses
  %i.b = sub i32 %3, %i.a                         ; 3 uses
  %.sroa.speculated204 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.a) ; 3 uses
  %i.c = icmp sgt i32 %.sroa.speculated204, 0
  br i1 %i.c, label %.preheader229.lr.ph, label %._crit_edge260

.preheader229.lr.ph:                              ; preds = %bb.a
  %i.d = icmp slt i32 %1, 1                       ; 4 uses
  %.not173 = icmp ne i32 %6, 0                    ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 4 uses
  %i.f = sext i32 %i.a to i64                     ; 4 uses
  %i.g = add nsw i64 %i.f, 1
  %i.h = zext i32 %1 to i64                       ; 22 uses
  %i.i = sext i32 %i.b to i64                     ; 2 uses
  %wide.trip.count367 = zext nneg i32 %.sroa.speculated204 to i64
  %i.j = shl nuw nsw i64 %i.h, 1                  ; 3 uses
  %i.k = shl nsw i64 %i.e, 1
  %scevgep445 = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %8 = shl nsw i64 %i.e, 1
  %i.l = shl nsw i64 %i.f, 1                      ; 2 uses
  %i.m = shl nsw i64 %i.e, 1
  %scevgep481 = getelementptr i8, ptr %0, i64 %i.h
  %9 = getelementptr i8, ptr %4, i64 %i.j
  %10 = getelementptr i8, ptr %4, i64 %i.j
  %i.n = getelementptr i8, ptr %2, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 2
  %i.p = getelementptr i8, ptr %2, i64 %i.l
  %i.q = getelementptr i8, ptr %4, i64 %i.j
  %xtraiter = and i64 %i.h, 1
  %i.r = icmp eq i32 %1, 1
  %unroll_iter = and i64 %i.h, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod633 = trunc i32 %1 to i1
  %min.iters.check491 = icmp ult i32 %1, 8
  %n.vec493 = and i64 %i.h, 2147483640            ; 3 uses
  %cmp.n502 = icmp eq i64 %n.vec493, %i.h
  %xtraiter634 = and i64 %i.h, 1
  %lcmp.mod635.not = icmp eq i64 %xtraiter634, 0
  %i.s = add nsw i64 %i.h, -1
  %min.iters.check465 = icmp ult i32 %1, 8
  %n.vec467 = and i64 %i.h, 2147483640            ; 3 uses
  %cmp.n476 = icmp eq i64 %n.vec467, %i.h
  %xtraiter636 = and i64 %i.h, 1
  %lcmp.mod637.not = icmp eq i64 %xtraiter636, 0
  %i.t = add nsw i64 %i.h, -1
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %i.h, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.h
  %xtraiter638 = and i64 %i.h, 1
  %lcmp.mod639.not = icmp eq i64 %xtraiter638, 0
  %i.u = add nsw i64 %i.h, -1
  br label %.preheader229

.preheader229:                                    ; preds = %.preheader229.lr.ph, %.loopexit227
  %indvars.iv363 = phi i64 [ 0, %.preheader229.lr.ph ], [ %indvars.iv.next364, %.loopexit227 ] ; 11 uses
  %indvars.iv343 = phi i64 [ %i.g, %.preheader229.lr.ph ], [ %indvars.iv.next344, %.loopexit227 ] ; 2 uses
  %indvars.iv336 = phi i32 [ %i.b, %.preheader229.lr.ph ], [ %indvars.iv.next337, %.loopexit227 ] ; 3 uses
  %indvars.iv332 = phi i32 [ %i.a, %.preheader229.lr.ph ], [ %indvars.iv.next333, %.loopexit227 ] ; 4 uses
  %.0168257 = phi ptr [ %4, %.preheader229.lr.ph ], [ %i.hc, %.loopexit227 ] ; 22 uses
  %i.v = mul i64 %i.m, %indvars.iv363
  %scevgep479 = getelementptr i8, ptr %9, i64 %i.v ; 2 uses
  %i.w = zext i32 %indvars.iv332 to i64
  %i.x = shl nuw nsw i64 %i.w, 1
  %scevgep480 = getelementptr i8, ptr %2, i64 %i.x
  %i.y = mul i64 %8, %indvars.iv363
  %scevgep452 = getelementptr i8, ptr %10, i64 %i.y ; 2 uses
  %11 = mul nsw i64 %indvars.iv363, -2            ; 2 uses
  %scevgep453 = getelementptr i8, ptr %i.o, i64 %11
  %scevgep454 = getelementptr i8, ptr %i.p, i64 %11
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv336)
  %i.z = zext i32 %smin to i64                    ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 1
  %scevgep455 = getelementptr i8, ptr %scevgep454, i64 %i.aa
  %i.ab = mul nuw i64 %i.h, %i.z
  %scevgep456 = getelementptr i8, ptr %0, i64 %i.ab
  %i.ac = mul i64 %i.k, %indvars.iv363
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ac ; 2 uses
  %smin352 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv336) ; 5 uses
  %i.ad = add i32 %smin352, %indvars.iv332        ; 2 uses
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader229
  %i.ae = sub nsw i64 %i.f, %indvars.iv363
  %i.af = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ae ; 3 uses
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod633)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.ah = load i16, ptr %i.af, align 2, !tbaa !45, !noalias !1643
  %i.ai = zext i16 %i.ah to i32
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !21, !noalias !1643
  %i.ak = zext i8 %i.aj to i32
  %i.al = mul nuw nsw i32 %i.ak, %i.ai
  %.sroa.speculated.i.epil = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.al, i32 65535)
  %i.am = trunc nuw i32 %.sroa.speculated.i.epil to i16
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.0168257, i64 %indvars.iv.epil.init
  store i16 %i.am, ptr %i.an, align 2, !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader229
  br i1 %.not173, label %bb.b, label %.loopexit228

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ap = load i16, ptr %i.af, align 2, !tbaa !45, !noalias !1643
  %i.aq = zext i16 %i.ap to i32
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !21, !noalias !1643
  %i.as = zext i8 %i.ar to i32
  %i.at = mul nuw nsw i32 %i.as, %i.aq
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.at, i32 65535)
  %i.au = trunc nuw i32 %.sroa.speculated.i to i16
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.0168257, i64 %indvars.iv
  store i16 %i.au, ptr %i.av, align 2, !tbaa !45
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.ax = load i16, ptr %i.af, align 2, !tbaa !45, !noalias !1643
  %i.ay = zext i16 %i.ax to i32
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !21, !noalias !1643
  %i.ba = zext i8 %i.az to i32
  %i.bb = mul nuw nsw i32 %i.ba, %i.ay
  %.sroa.speculated.i.1 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.bb, i32 65535)
  %i.bc = trunc nuw i32 %.sroa.speculated.i.1 to i16
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.0168257, i64 %indvars.iv.next
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !1646

bb.b:                                             ; preds = %._crit_edge
  %i.be = sub nsw i64 %indvars.iv363, %i.f        ; 3 uses
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph238, label %.loopexit228

.lr.ph238:                                        ; preds = %bb.b
  br i1 %i.d, label %.lr.ph238.split.preheader, label %.lr.ph233.us.preheader

.lr.ph238.split.preheader:                        ; preds = %.lr.ph238
  %i.bg = trunc nsw i64 %i.be to i32
  br label %.lr.ph238.split

.lr.ph233.us.preheader:                           ; preds = %.lr.ph238
  %wide.trip.count334 = zext i32 %indvars.iv332 to i64
  %i.bh = trunc nsw i64 %i.be to i32
  %bound0483 = icmp ult ptr %.0168257, %scevgep480
  %bound1484 = icmp ult ptr %2, %scevgep479
  %found.conflict485 = and i1 %bound0483, %bound1484
  br label %.lr.ph233.us

.lr.ph233.us:                                     ; preds = %.lr.ph233.us.preheader, %._crit_edge234.us
  %indvars.iv329 = phi i64 [ 0, %.lr.ph233.us.preheader ], [ %indvars.iv.next330, %._crit_edge234.us ] ; 2 uses
  %.0162235.us = phi i32 [ %i.bh, %.lr.ph233.us.preheader ], [ %i.cy, %._crit_edge234.us ] ; 2 uses
  %i.bi = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %.0162235.us, i32 noundef %5, i32 noundef %6)
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv329 ; 4 uses
  %i.bk = mul nsw i32 %i.bi, %1
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.bl ; 5 uses
  br i1 %min.iters.check491, label %scalar.ph490.preheader, label %vector.memcheck478

vector.memcheck478:                               ; preds = %.lr.ph233.us
  %scevgep482 = getelementptr i8, ptr %scevgep481, i64 %i.bl
  %bound0486 = icmp ult ptr %.0168257, %scevgep482
  %bound1487 = icmp ult ptr %invariant.gep, %scevgep479
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx489 = or i1 %found.conflict485, %found.conflict488
  br i1 %conflict.rdx489, label %scalar.ph490.preheader, label %vector.ph492

vector.ph492:                                     ; preds = %vector.memcheck478
  %i.bm = load i16, ptr %i.bj, align 2, !tbaa !45, !alias.scope !1647, !noalias !1650
  %broadcast.splatinsert494 = insertelement <8 x i16> poison, i16 %i.bm, i64 0
  %broadcast.splat495 = shufflevector <8 x i16> %broadcast.splatinsert494, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bn = zext <8 x i16> %broadcast.splat495 to <8 x i32>
  br label %vector.body496

vector.body496:                                   ; preds = %vector.body496, %vector.ph492
  %index497 = phi i64 [ 0, %vector.ph492 ], [ %index.next500, %vector.body496 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.0168257, i64 %index497 ; 2 uses
  %i.bp = getelementptr i8, ptr %invariant.gep, i64 %index497
  %wide.load498 = load <8 x i8>, ptr %i.bp, align 1, !tbaa !21, !alias.scope !1653, !noalias !1650
  %i.bq = zext <8 x i8> %wide.load498 to <8 x i32>
  %i.br = mul nuw nsw <8 x i32> %i.bq, %i.bn
  %i.bs = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.br, <8 x i32> splat (i32 65535))
  %i.bt = trunc nuw <8 x i32> %i.bs to <8 x i16>
  %wide.load499 = load <8 x i16>, ptr %i.bo, align 2, !tbaa !45, !alias.scope !1655, !noalias !1657
  %i.bu = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %wide.load499, <8 x i16> %i.bt)
  store <8 x i16> %i.bu, ptr %i.bo, align 2, !tbaa !45, !alias.scope !1655, !noalias !1660
  %index.next500 = add nuw i64 %index497, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next500, %n.vec493
  br i1 %i.bv, label %middle.block501, label %vector.body496, !llvm.loop !1661

middle.block501:                                  ; preds = %vector.body496
  br i1 %cmp.n502, label %._crit_edge234.us, label %scalar.ph490.preheader

scalar.ph490.preheader:                           ; preds = %vector.memcheck478, %.lr.ph233.us, %middle.block501
  %indvars.iv324.ph = phi i64 [ 0, %vector.memcheck478 ], [ 0, %.lr.ph233.us ], [ %n.vec493, %middle.block501 ] ; 5 uses
  br i1 %lcmp.mod635.not, label %scalar.ph490.prol.loopexit, label %scalar.ph490.prol

scalar.ph490.prol:                                ; preds = %scalar.ph490.preheader
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.0168257, i64 %indvars.iv324.ph ; 2 uses
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv324.ph
  %i.bx = load i16, ptr %i.bj, align 2, !tbaa !45, !noalias !1650
  %i.by = zext i16 %i.bx to i32
  %i.bz = load i8, ptr %gep.prol, align 1, !tbaa !21, !noalias !1650
  %i.ca = zext i8 %i.bz to i32
  %i.cb = mul nuw nsw i32 %i.ca, %i.by
  %.sroa.speculated.i174.us.prol = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.cb, i32 65535)
  %i.cc = trunc nuw i32 %.sroa.speculated.i174.us.prol to i16
  %i.cd = load i16, ptr %i.bw, align 2, !tbaa !45, !noalias !1662
  %i.ce = tail call i16 @llvm.uadd.sat.i16(i16 %i.cd, i16 %i.cc)
  store i16 %i.ce, ptr %i.bw, align 2, !tbaa !45
  %indvars.iv.next325.prol = or disjoint i64 %indvars.iv324.ph, 1
  br label %scalar.ph490.prol.loopexit

scalar.ph490.prol.loopexit:                       ; preds = %scalar.ph490.prol, %scalar.ph490.preheader
  %indvars.iv324.unr = phi i64 [ %indvars.iv324.ph, %scalar.ph490.preheader ], [ %indvars.iv.next325.prol, %scalar.ph490.prol ]
  %i.cf = icmp eq i64 %indvars.iv324.ph, %i.s
  br i1 %i.cf, label %._crit_edge234.us, label %scalar.ph490

scalar.ph490:                                     ; preds = %scalar.ph490.prol.loopexit, %scalar.ph490
  %indvars.iv324 = phi i64 [ %indvars.iv.next325.1, %scalar.ph490 ], [ %indvars.iv324.unr, %scalar.ph490.prol.loopexit ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.0168257, i64 %indvars.iv324 ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv324
  %i.ch = load i16, ptr %i.bj, align 2, !tbaa !45, !noalias !1650
  %i.ci = zext i16 %i.ch to i32
  %i.cj = load i8, ptr %gep, align 1, !tbaa !21, !noalias !1650
  %i.ck = zext i8 %i.cj to i32
  %i.cl = mul nuw nsw i32 %i.ck, %i.ci
  %.sroa.speculated.i174.us = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.cl, i32 65535)
  %i.cm = trunc nuw i32 %.sroa.speculated.i174.us to i16
  %i.cn = load i16, ptr %i.cg, align 2, !tbaa !45, !noalias !1662
  %i.co = tail call i16 @llvm.uadd.sat.i16(i16 %i.cn, i16 %i.cm)
  store i16 %i.co, ptr %i.cg, align 2, !tbaa !45
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.0168257, i64 %indvars.iv.next325 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next325
  %i.cq = load i16, ptr %i.bj, align 2, !tbaa !45, !noalias !1650
  %i.cr = zext i16 %i.cq to i32
  %i.cs = load i8, ptr %gep.1, align 1, !tbaa !21, !noalias !1650
  %i.ct = zext i8 %i.cs to i32
  %i.cu = mul nuw nsw i32 %i.ct, %i.cr
  %.sroa.speculated.i174.us.1 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.cu, i32 65535)
  %i.cv = trunc nuw i32 %.sroa.speculated.i174.us.1 to i16
  %i.cw = load i16, ptr %i.cp, align 2, !tbaa !45, !noalias !1662
  %i.cx = tail call i16 @llvm.uadd.sat.i16(i16 %i.cw, i16 %i.cv)
  store i16 %i.cx, ptr %i.cp, align 2, !tbaa !45
  %indvars.iv.next325.1 = add nuw nsw i64 %indvars.iv324, 2 ; 2 uses
  %exitcond328.not.1 = icmp eq i64 %indvars.iv.next325.1, %i.h
  br i1 %exitcond328.not.1, label %._crit_edge234.us, label %scalar.ph490, !llvm.loop !1663

._crit_edge234.us:                                ; preds = %scalar.ph490.prol.loopexit, %scalar.ph490, %middle.block501
  %i.cy = add nsw i32 %.0162235.us, 1
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond335.not = icmp eq i64 %indvars.iv.next330, %wide.trip.count334
  br i1 %exitcond335.not, label %.loopexit228, label %.lr.ph233.us, !llvm.loop !1664

.lr.ph238.split:                                  ; preds = %.lr.ph238.split.preheader, %.lr.ph238.split
  %.0162235 = phi i32 [ %i.da, %.lr.ph238.split ], [ %i.bg, %.lr.ph238.split.preheader ] ; 2 uses
  %i.cz = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %.0162235, i32 noundef %5, i32 noundef %6) ; 0 uses
  %i.da = add i32 %.0162235, 1                    ; 2 uses
  %exitcond323.not = icmp eq i32 %i.da, 0
  br i1 %exitcond323.not, label %.loopexit228.thread, label %.lr.ph238.split, !llvm.loop !1664

.loopexit228:                                     ; preds = %._crit_edge234.us, %bb.b, %._crit_edge
  %i.db = add nsw i64 %indvars.iv363, %i.i        ; 3 uses
  %i.dc = trunc nsw i64 %i.db to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.dc)
  %i.dd = icmp slt i32 %.sroa.speculated, 2       ; 3 uses
  %i.de = trunc i64 %indvars.iv363 to i32
  %i.df = sub i32 %i.a, %i.de
  %i.dg = add i32 %i.df, 1
  %brmerge = or i1 %i.dd, %i.d
  %.mux = select i1 %i.dd, i32 1, i32 %smin352
  %.mux432 = select i1 %i.dd, i32 %i.dg, i32 %i.ad
  br i1 %brmerge, label %._crit_edge245, label %.preheader225.us.preheader

.loopexit228.thread:                              ; preds = %.lr.ph238.split
  %i.dh = add nsw i64 %indvars.iv363, %i.i        ; 2 uses
  %i.di = trunc nsw i64 %i.dh to i32
  %.sroa.speculated414 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.di)
  %i.dj = icmp sgt i32 %.sroa.speculated414, 1    ; 2 uses
  %i.dk = trunc i64 %indvars.iv363 to i32
  %i.dl = sub i32 %i.a, %i.dk
  %i.dm = add i32 %i.dl, 1
  %spec.select = select i1 %i.dj, i32 %smin352, i32 1
  %spec.select429 = select i1 %i.dj, i32 %i.ad, i32 %i.dm
  br label %._crit_edge245

.preheader225.us.preheader:                       ; preds = %.loopexit228
  %wide.trip.count353 = zext i32 %smin352 to i64
  %bound0457 = icmp ult ptr %.0168257, %scevgep455
  %bound1458 = icmp ult ptr %scevgep453, %scevgep452
  %found.conflict459 = and i1 %bound0457, %bound1458
  %bound0460 = icmp ult ptr %.0168257, %scevgep456
  %bound1461 = icmp ult ptr %scevgep445, %scevgep452
  %found.conflict462 = and i1 %bound0460, %bound1461
  %conflict.rdx463 = or i1 %found.conflict459, %found.conflict462
  br label %.preheader225.us

.preheader225.us:                                 ; preds = %.preheader225.us.preheader, %._crit_edge241.us
  %indvars.iv347 = phi i64 [ 1, %.preheader225.us.preheader ], [ %indvars.iv.next348, %._crit_edge241.us ] ; 2 uses
  %indvars.iv345 = phi i64 [ %indvars.iv343, %.preheader225.us.preheader ], [ %indvars.iv.next346, %._crit_edge241.us ] ; 2 uses
  %i.dn = getelementptr inbounds [2 x i8], ptr %2, i64 %indvars.iv345 ; 4 uses
  %i.do = mul nuw nsw i64 %indvars.iv347, %i.h
  %invariant.gep421 = getelementptr inbounds nuw i8, ptr %0, i64 %i.do ; 4 uses
  %brmerge661 = select i1 %min.iters.check465, i1 true, i1 %conflict.rdx463
  br i1 %brmerge661, label %scalar.ph464.preheader, label %vector.ph466

vector.ph466:                                     ; preds = %.preheader225.us
  %i.dp = load i16, ptr %i.dn, align 2, !tbaa !45, !alias.scope !1665, !noalias !1668
  %broadcast.splatinsert468 = insertelement <8 x i16> poison, i16 %i.dp, i64 0
  %broadcast.splat469 = shufflevector <8 x i16> %broadcast.splatinsert468, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.dq = zext <8 x i16> %broadcast.splat469 to <8 x i32>
  br label %vector.body470

vector.body470:                                   ; preds = %vector.body470, %vector.ph466
  %index471 = phi i64 [ 0, %vector.ph466 ], [ %index.next474, %vector.body470 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %.0168257, i64 %index471 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %invariant.gep421, i64 %index471
  %wide.load472 = load <8 x i8>, ptr %i.ds, align 1, !tbaa !21, !alias.scope !1671, !noalias !1668
  %i.dt = zext <8 x i8> %wide.load472 to <8 x i32>
  %i.du = mul nuw nsw <8 x i32> %i.dt, %i.dq
  %i.dv = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.du, <8 x i32> splat (i32 65535))
  %i.dw = trunc nuw <8 x i32> %i.dv to <8 x i16>
  %wide.load473 = load <8 x i16>, ptr %i.dr, align 2, !tbaa !45, !alias.scope !1673, !noalias !1675
  %i.dx = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %wide.load473, <8 x i16> %i.dw)
  store <8 x i16> %i.dx, ptr %i.dr, align 2, !tbaa !45, !alias.scope !1673, !noalias !1678
  %index.next474 = add nuw i64 %index471, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next474, %n.vec467
  br i1 %i.dy, label %middle.block475, label %vector.body470, !llvm.loop !1679

middle.block475:                                  ; preds = %vector.body470
  br i1 %cmp.n476, label %._crit_edge241.us, label %scalar.ph464.preheader

scalar.ph464.preheader:                           ; preds = %.preheader225.us, %middle.block475
  %indvars.iv338.ph = phi i64 [ %n.vec467, %middle.block475 ], [ 0, %.preheader225.us ] ; 5 uses
  br i1 %lcmp.mod637.not, label %scalar.ph464.prol.loopexit, label %scalar.ph464.prol

scalar.ph464.prol:                                ; preds = %scalar.ph464.preheader
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.0168257, i64 %indvars.iv338.ph ; 2 uses
  %gep422.prol = getelementptr inbounds nuw i8, ptr %invariant.gep421, i64 %indvars.iv338.ph
  %i.ea = load i16, ptr %i.dn, align 2, !tbaa !45, !noalias !1668
  %i.eb = zext i16 %i.ea to i32
  %i.ec = load i8, ptr %gep422.prol, align 1, !tbaa !21, !noalias !1668
  %i.ed = zext i8 %i.ec to i32
  %i.ee = mul nuw nsw i32 %i.ed, %i.eb
  %.sroa.speculated.i176.us.prol = tail call i32 @llvm.umin.i32(i32 range(i32 0, 83557126) %i.ee, i32 65535)
  %i.ef = trunc nuw i32 %.sroa.speculated.i176.us.prol to i16
  %i.eg = load i16, ptr %i.dz, align 2, !tbaa !45, !noalias !1680
  %i.eh = tail call i16 @llvm.uadd.sat.i16(i16 %i.eg, i16 %i.ef)
  store i16 %i.eh, ptr %i.dz, align 2, !tbaa !45
  %indvars.iv.next339.prol = or disjoint i64 %indvars.iv338.ph, 1
  br label %scalar.ph464.prol.loopexit

scalar.ph464.prol.loopexit:                       ; preds = %scalar.ph464.prol, %scalar.ph464.preheader
  %indvars.iv338.unr = phi i64 [ %indvars.iv338.ph, %scalar.ph464.preheader ], [ %indvars.iv.next339.prol, %scalar.ph464.prol ]
  %i.ei = icmp eq i64 %indvars.iv338.ph, %i.t
  br i1 %i.ei, label %._crit_edge241.us, label %scalar.ph464

scalar.ph464:                                     ; preds = %scalar.ph464.prol.loopexit, %scalar.ph464
  %indvars.iv338 = phi i64 [ %indvars.iv.next339.1, %scalar.ph464 ], [ %indvars.iv338.unr, %scalar.ph464.prol.loopexit ] ; 4 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %.0168257, i64 %indvars.iv338 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2cv12cpu_baseline12_GLOBAL__N_113hlineSmooth5NItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib:bb.a
  %i.ajx = trunc nuw i64 %.sroa.speculated.i464 to i32
  %i.ajy = sub nsw i64 %indvars.iv663, %i.ahl
  %i.ajz = getelementptr inbounds [2 x i8], ptr %.1, i64 %i.ajy
  %i.aka = load i32, ptr %i.ahi, align 4, !tbaa !79, !noalias !2726
  %i.akb = zext i32 %i.aka to i64
  %i.akc = load i16, ptr %i.ajz, align 2, !tbaa !521, !noalias !2726
  %i.akd = zext i16 %i.akc to i64                 ; 2 uses
  %i.ake = mul nuw nsw i64 %i.akd, %i.akb
  %.sroa.speculated.i465 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.ake, i64 4294967295)
  %i.akf = trunc nuw i64 %.sroa.speculated.i465 to i32
  %i.akg = tail call i32 @llvm.uadd.sat.i32(i32 %i.ajx, i32 %i.akf)
  %i.akh = getelementptr inbounds nuw [2 x i8], ptr %.1, i64 %indvars.iv663
  %i.aki = load i32, ptr %i.ahj, align 4, !tbaa !79, !noalias !2729
  %i.akj = zext i32 %i.aki to i64
  %i.akk = load i16, ptr %i.akh, align 2, !tbaa !521, !noalias !2729
  %i.akl = zext i16 %i.akk to i64                 ; 2 uses
  %i.akm = mul nuw nsw i64 %i.akl, %i.akj
  %.sroa.speculated.i466 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.akm, i64 4294967295)
  %i.akn = trunc nuw i64 %.sroa.speculated.i466 to i32
  %i.ako = tail call i32 @llvm.uadd.sat.i32(i32 %i.akg, i32 %i.akn)
  %i.akp = add nuw nsw i64 %indvars.iv663, %i.ahl ; 2 uses
  %i.akq = getelementptr inbounds nuw [2 x i8], ptr %.1, i64 %i.akp
  %i.akr = load i32, ptr %i.ahk, align 4, !tbaa !79, !noalias !2732
  %i.aks = zext i32 %i.akr to i64
  %i.akt = load i16, ptr %i.akq, align 2, !tbaa !521, !noalias !2732
  %i.aku = zext i16 %i.akt to i64                 ; 2 uses
  %i.akv = mul nuw nsw i64 %i.aku, %i.aks
  %.sroa.speculated.i467 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.akv, i64 4294967295)
  %i.akw = trunc nuw i64 %.sroa.speculated.i467 to i32
  %i.akx = tail call i32 @llvm.uadd.sat.i32(i32 %i.ako, i32 %i.akw)
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %.1402, i64 %indvars.iv663
  store i32 %i.akx, ptr %i.aky, align 4, !tbaa !79
  %i.akz = load i32, ptr %2, align 4, !tbaa !79, !noalias !2735
  %i.ala = zext i32 %i.akz to i64
  %i.alb = mul nuw nsw i64 %i.ala, %i.akd
  %.sroa.speculated.i468 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.alb, i64 4294967295)
  %i.alc = trunc nuw i64 %.sroa.speculated.i468 to i32
  %i.ald = load i32, ptr %i.ahi, align 4, !tbaa !79, !noalias !2738
  %i.ale = zext i32 %i.ald to i64
  %i.alf = mul nuw nsw i64 %i.ale, %i.akl
  %.sroa.speculated.i469 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.alf, i64 4294967295)
  %i.alg = trunc nuw i64 %.sroa.speculated.i469 to i32
  %i.alh = tail call i32 @llvm.uadd.sat.i32(i32 %i.alc, i32 %i.alg)
  %i.ali = load i32, ptr %i.ahj, align 4, !tbaa !79, !noalias !2741
  %i.alj = zext i32 %i.ali to i64
  %i.alk = mul nuw nsw i64 %i.alj, %i.aku
  %.sroa.speculated.i470 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.alk, i64 4294967295)
  %i.all = trunc nuw i64 %.sroa.speculated.i470 to i32
  %i.alm = tail call i32 @llvm.uadd.sat.i32(i32 %i.alh, i32 %i.all)
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %.1402, i64 %i.akp
  store i32 %i.alm, ptr %i.aln, align 4, !tbaa !79
  %indvars.iv.next664 = add nuw nsw i64 %indvars.iv663, 1 ; 2 uses
  %exitcond667.not = icmp eq i64 %indvars.iv.next664, %wide.trip.count666
  br i1 %exitcond667.not, label %._crit_edge621, label %scalar.ph1038, !llvm.loop !2749

bb.l:                                             ; preds = %._crit_edge621
  %i.alo = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %5, i32 noundef %5, i32 noundef %6)
  %i.alp = add nsw i32 %5, 1
  %i.alq = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.alp, i32 noundef %5, i32 noundef %6)
  br i1 %i.a, label %.lr.ph624, label %.loopexit

.lr.ph624:                                        ; preds = %bb.l
  %i.alr = add nsw i32 %5, -2                     ; 2 uses
  %i.als = sub nsw i32 %i.alq, %i.alr
  %i.alt = mul nsw i32 %i.als, %1
  %i.alu = sub nsw i32 %i.alo, %i.alr
  %i.alv = mul nsw i32 %i.alu, %1
  %i.alw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.aly = sext i32 %i.alv to i64
  %i.alz = zext nneg i32 %1 to i64
  %i.ama = sext i32 %i.alt to i64
  %wide.trip.count671 = zext nneg i32 %1 to i64   ; 4 uses
  %invariant.gep710 = getelementptr [2 x i8], ptr %.1, i64 %i.aly ; 2 uses
  %invariant.gep712 = getelementptr inbounds nuw [4 x i8], ptr %.1402, i64 %i.alz ; 4 uses
  %invariant.gep714 = getelementptr [2 x i8], ptr %.1, i64 %i.ama ; 2 uses
  %min.iters.check1077 = icmp ult i32 %1, 4
  br i1 %min.iters.check1077, label %scalar.ph1076.preheader, label %vector.memcheck1066

vector.memcheck1066:                              ; preds = %.lr.ph624
  %i.amb = shl nuw nsw i64 %wide.trip.count671, 3
  %scevgep1067 = getelementptr i8, ptr %.1402, i64 %i.amb
  %scevgep1068 = getelementptr i8, ptr %2, i64 20 ; 2 uses
  %bound01069 = icmp ult ptr %invariant.gep712, %scevgep1068
  %bound11070 = icmp ult ptr %i.alx, %scevgep1067
  %found.conflict1071 = and i1 %bound01069, %bound11070
  %bound01072 = icmp ult ptr %.1402, %scevgep1068
  %bound11073 = icmp ult ptr %i.alx, %invariant.gep712
  %found.conflict1074 = and i1 %bound01072, %bound11073
  %conflict.rdx1075 = or i1 %found.conflict1071, %found.conflict1074
  br i1 %conflict.rdx1075, label %scalar.ph1076.preheader, label %vector.ph1078

vector.ph1078:                                    ; preds = %vector.memcheck1066
  %n.vec1079 = and i64 %wide.trip.count671, 2147483644 ; 3 uses
  %i.amc = load i32, ptr %i.alw, align 4, !tbaa !79, !alias.scope !2750, !noalias !2753
  %broadcast.splatinsert1080 = insertelement <4 x i32> poison, i32 %i.amc, i64 0
  %broadcast.splat1081 = shufflevector <4 x i32> %broadcast.splatinsert1080, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amd = zext <4 x i32> %broadcast.splat1081 to <4 x i64>
  %i.ame = load i32, ptr %i.alx, align 4, !tbaa !79, !alias.scope !2750, !noalias !2756
  %broadcast.splatinsert1082 = insertelement <4 x i32> poison, i32 %i.ame, i64 0
  %broadcast.splat1083 = shufflevector <4 x i32> %broadcast.splatinsert1082, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amf = zext <4 x i32> %broadcast.splat1083 to <4 x i64>
  %i.amg = load i32, ptr %i.alw, align 4, !tbaa !79, !alias.scope !2750, !noalias !2759
  %broadcast.splatinsert1084 = insertelement <4 x i32> poison, i32 %i.amg, i64 0
  %broadcast.splat1085 = shufflevector <4 x i32> %broadcast.splatinsert1084, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amh = zext <4 x i32> %broadcast.splat1085 to <4 x i64>
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %vector.ph1078
  %index1087 = phi i64 [ 0, %vector.ph1078 ], [ %index.next1092, %vector.body1086 ] ; 5 uses
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %.1402, i64 %index1087 ; 2 uses
  %i.amj = getelementptr [2 x i8], ptr %invariant.gep710, i64 %index1087
  %wide.load1088 = load <4 x i16>, ptr %i.amj, align 2, !tbaa !521, !noalias !2753
  %i.amk = zext <4 x i16> %wide.load1088 to <4 x i64> ; 2 uses
  %i.aml = mul nuw nsw <4 x i64> %i.amk, %i.amd
  %i.amm = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.aml, <4 x i64> splat (i64 4294967295))
  %i.amn = trunc nuw <4 x i64> %i.amm to <4 x i32>
  %wide.load1089 = load <4 x i32>, ptr %i.ami, align 4, !tbaa !79, !alias.scope !2762, !noalias !2764
  %i.amo = tail call <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32> %wide.load1089, <4 x i32> %i.amn)
  store <4 x i32> %i.amo, ptr %i.ami, align 4, !tbaa !79, !alias.scope !2762, !noalias !2750
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep712, i64 %index1087 ; 2 uses
  %i.amq = mul nuw nsw <4 x i64> %i.amf, %i.amk
  %i.amr = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.amq, <4 x i64> splat (i64 4294967295))
  %i.ams = trunc nuw <4 x i64> %i.amr to <4 x i32>
  %wide.load1090 = load <4 x i32>, ptr %i.amp, align 4, !tbaa !79, !alias.scope !2767, !noalias !2769
  %i.amt = tail call <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32> %wide.load1090, <4 x i32> %i.ams)
  %i.amu = getelementptr [2 x i8], ptr %invariant.gep714, i64 %index1087
  %wide.load1091 = load <4 x i16>, ptr %i.amu, align 2, !tbaa !521, !noalias !2759
  %i.amv = zext <4 x i16> %wide.load1091 to <4 x i64>
  %i.amw = mul nuw nsw <4 x i64> %i.amv, %i.amh
  %i.amx = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.amw, <4 x i64> splat (i64 4294967295))
  %i.amy = trunc nuw <4 x i64> %i.amx to <4 x i32>
  %i.amz = tail call <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32> %i.amt, <4 x i32> %i.amy)
  store <4 x i32> %i.amz, ptr %i.amp, align 4, !tbaa !79, !alias.scope !2767, !noalias !2750
  %index.next1092 = add nuw i64 %index1087, 4     ; 2 uses
  %i.ana = icmp eq i64 %index.next1092, %n.vec1079
  br i1 %i.ana, label %middle.block1093, label %vector.body1086, !llvm.loop !2772

middle.block1093:                                 ; preds = %vector.body1086
  %cmp.n1094 = icmp eq i64 %n.vec1079, %wide.trip.count671
  br i1 %cmp.n1094, label %.loopexit, label %scalar.ph1076.preheader

scalar.ph1076.preheader:                          ; preds = %vector.memcheck1066, %.lr.ph624, %middle.block1093
  %indvars.iv668.ph = phi i64 [ 0, %vector.memcheck1066 ], [ 0, %.lr.ph624 ], [ %n.vec1079, %middle.block1093 ]
  br label %scalar.ph1076

scalar.ph1076:                                    ; preds = %scalar.ph1076.preheader, %scalar.ph1076
  %indvars.iv668 = phi i64 [ %indvars.iv.next669, %scalar.ph1076 ], [ %indvars.iv668.ph, %scalar.ph1076.preheader ] ; 5 uses
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %.1402, i64 %indvars.iv668 ; 2 uses
  %gep711 = getelementptr [2 x i8], ptr %invariant.gep710, i64 %indvars.iv668
  %i.anc = load i32, ptr %i.alw, align 4, !tbaa !79, !noalias !2753
  %i.and = zext i32 %i.anc to i64
  %i.ane = load i16, ptr %gep711, align 2, !tbaa !521, !noalias !2753
  %i.anf = zext i16 %i.ane to i64                 ; 2 uses
  %i.ang = mul nuw nsw i64 %i.anf, %i.and
  %.sroa.speculated.i471 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.ang, i64 4294967295)
  %i.anh = trunc nuw i64 %.sroa.speculated.i471 to i32
  %i.ani = load i32, ptr %i.anb, align 4, !tbaa !79, !noalias !2773
  %i.anj = tail call i32 @llvm.uadd.sat.i32(i32 %i.ani, i32 %i.anh)
  store i32 %i.anj, ptr %i.anb, align 4, !tbaa !79
  %gep713 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep712, i64 %indvars.iv668 ; 2 uses
  %i.ank = load i32, ptr %i.alx, align 4, !tbaa !79, !noalias !2756
  %i.anl = zext i32 %i.ank to i64
  %i.anm = mul nuw nsw i64 %i.anl, %i.anf
  %.sroa.speculated.i472 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.anm, i64 4294967295)
  %i.ann = trunc nuw i64 %.sroa.speculated.i472 to i32
  %i.ano = load i32, ptr %gep713, align 4, !tbaa !79, !noalias !2774
  %i.anp = tail call i32 @llvm.uadd.sat.i32(i32 %i.ano, i32 %i.ann)
  %gep715 = getelementptr [2 x i8], ptr %invariant.gep714, i64 %indvars.iv668
  %i.anq = load i32, ptr %i.alw, align 4, !tbaa !79, !noalias !2759
  %i.anr = zext i32 %i.anq to i64
  %i.ans = load i16, ptr %gep715, align 2, !tbaa !521, !noalias !2759
  %i.ant = zext i16 %i.ans to i64
  %i.anu = mul nuw nsw i64 %i.ant, %i.anr
  %.sroa.speculated.i473 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.anu, i64 4294967295)
  %i.anv = trunc nuw i64 %.sroa.speculated.i473 to i32
  %i.anw = tail call i32 @llvm.uadd.sat.i32(i32 %i.anp, i32 %i.anv)
  store i32 %i.anw, ptr %gep713, align 4, !tbaa !79
  %indvars.iv.next669 = add nuw nsw i64 %indvars.iv668, 1 ; 2 uses
  %exitcond672.not = icmp eq i64 %indvars.iv.next669, %wide.trip.count671
  br i1 %exitcond672.not, label %.loopexit, label %scalar.ph1076, !llvm.loop !2775

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph802, %scalar.ph844, %scalar.ph891, %scalar.ph911, %scalar.ph1076, %middle.block, %middle.block830, %middle.block877, %middle.block908, %middle.block921, %middle.block1093, %bb.i, %.preheader596, %bb.g, %.preheader593, %bb.e, %bb.l, %._crit_edge621
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_120hlineSmoothONa_yzy_aItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5, i32 noundef %6, i1 zeroext %7) #0 {
bb.a:
  %i.a = sdiv i32 %3, 2                           ; 12 uses
  %i.b = sub i32 %3, %i.a                         ; 3 uses
  %.sroa.speculated215 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.a) ; 3 uses
  %i.c = icmp sgt i32 %.sroa.speculated215, 0
  br i1 %i.c, label %.preheader242.lr.ph, label %._crit_edge273

.preheader242.lr.ph:                              ; preds = %bb.a
  %i.d = icmp slt i32 %1, 1                       ; 4 uses
  %.not179 = icmp ne i32 %6, 0                    ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 4 uses
  %i.f = sext i32 %i.a to i64                     ; 4 uses
  %i.g = add nsw i64 %i.f, 1
  %i.h = zext i32 %1 to i64                       ; 19 uses
  %i.i = sext i32 %i.b to i64                     ; 2 uses
  %wide.trip.count380 = zext nneg i32 %.sroa.speculated215 to i64
  %8 = shl nuw nsw i64 %i.h, 2                    ; 3 uses
  %i.j = shl nsw i64 %i.e, 2
  %i.k = shl nsw i64 %i.e, 2
  %i.l = shl nsw i64 %i.f, 2                      ; 2 uses
  %i.m = shl nsw i64 %i.e, 2
  %9 = getelementptr i8, ptr %4, i64 %8
  %10 = getelementptr i8, ptr %4, i64 %8
  %11 = getelementptr i8, ptr %2, i64 %i.l
  %i.n = getelementptr i8, ptr %11, i64 4
  %i.o = getelementptr i8, ptr %2, i64 %i.l
  %i.p = getelementptr i8, ptr %4, i64 %8
  %xtraiter = and i64 %i.h, 1
  %i.q = icmp eq i32 %1, 1
  %unroll_iter = and i64 %i.h, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod602 = trunc i32 %1 to i1
  %min.iters.check489 = icmp ult i32 %1, 4
  %n.vec491 = and i64 %i.h, 2147483644            ; 3 uses
  %cmp.n500 = icmp eq i64 %n.vec491, %i.h
  %xtraiter603 = and i64 %i.h, 1
  %lcmp.mod604.not = icmp eq i64 %xtraiter603, 0
  %i.r = add nsw i64 %i.h, -1
  %min.iters.check469 = icmp ult i32 %1, 4
  %n.vec471 = and i64 %i.h, 2147483644            ; 3 uses
  %cmp.n480 = icmp eq i64 %n.vec471, %i.h
  %xtraiter605 = and i64 %i.h, 1
  %lcmp.mod606.not = icmp eq i64 %xtraiter605, 0
  %i.s = add nsw i64 %i.h, -1
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %i.h, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.h
  %xtraiter607 = and i64 %i.h, 1
  %lcmp.mod608.not = icmp eq i64 %xtraiter607, 0
  %i.t = add nsw i64 %i.h, -1
  br label %.preheader242

.preheader242:                                    ; preds = %.preheader242.lr.ph, %.loopexit240
  %indvars.iv376 = phi i64 [ 0, %.preheader242.lr.ph ], [ %indvars.iv.next377, %.loopexit240 ] ; 11 uses
  %indvars.iv356 = phi i64 [ %i.g, %.preheader242.lr.ph ], [ %indvars.iv.next357, %.loopexit240 ] ; 2 uses
  %indvars.iv349 = phi i32 [ %i.b, %.preheader242.lr.ph ], [ %indvars.iv.next350, %.loopexit240 ] ; 3 uses
  %indvars.iv345 = phi i32 [ %i.a, %.preheader242.lr.ph ], [ %indvars.iv.next346, %.loopexit240 ] ; 4 uses
  %.0174270 = phi ptr [ %4, %.preheader242.lr.ph ], [ %i.ha, %.loopexit240 ] ; 19 uses
  %i.u = mul i64 %i.m, %indvars.iv376
  %scevgep483 = getelementptr i8, ptr %9, i64 %i.u
  %i.v = zext i32 %indvars.iv345 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  %scevgep484 = getelementptr i8, ptr %2, i64 %i.w
  %i.x = mul i64 %i.k, %indvars.iv376
  %scevgep461 = getelementptr i8, ptr %10, i64 %i.x
  %12 = mul nsw i64 %indvars.iv376, -4            ; 2 uses
  %scevgep462 = getelementptr i8, ptr %i.n, i64 %12
  %scevgep463 = getelementptr i8, ptr %i.o, i64 %12
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv349)
  %i.y = zext i32 %smin to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %scevgep464 = getelementptr i8, ptr %scevgep463, i64 %i.z
  %i.aa = mul i64 %i.j, %indvars.iv376
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.aa
  %smin365 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv349) ; 5 uses
  %i.ab = add i32 %smin365, %indvars.iv345        ; 2 uses
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader242
  %i.ac = sub nsw i64 %i.f, %indvars.iv376
  %i.ad = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ac ; 3 uses
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod602)
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !79, !noalias !2776
  %i.ag = zext i32 %i.af to i64
  %i.ah = load i16, ptr %i.ae, align 2, !tbaa !521, !noalias !2776
  %i.ai = zext i16 %i.ah to i64
  %i.aj = mul nuw nsw i64 %i.ai, %i.ag
  %.sroa.speculated.i.epil = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.aj, i64 4294967295)
  %i.ak = trunc nuw i64 %.sroa.speculated.i.epil to i32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.0174270, i64 %indvars.iv.epil.init
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader242
  br i1 %.not179, label %bb.b, label %.loopexit241

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.an = load i32, ptr %i.ad, align 4, !tbaa !79, !noalias !2776
  %i.ao = zext i32 %i.an to i64
  %i.ap = load i16, ptr %i.am, align 2, !tbaa !521, !noalias !2776
  %i.aq = zext i16 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, %i.ao
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.ar, i64 4294967295)
  %i.as = trunc nuw i64 %.sroa.speculated.i to i32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.0174270, i64 %indvars.iv
  store i32 %i.as, ptr %i.at, align 4, !tbaa !79
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.av = load i32, ptr %i.ad, align 4, !tbaa !79, !noalias !2776
  %i.aw = zext i32 %i.av to i64
  %i.ax = load i16, ptr %i.au, align 2, !tbaa !521, !noalias !2776
  %i.ay = zext i16 %i.ax to i64
  %i.az = mul nuw nsw i64 %i.ay, %i.aw
  %.sroa.speculated.i.1 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.az, i64 4294967295)
  %i.ba = trunc nuw i64 %.sroa.speculated.i.1 to i32
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.0174270, i64 %indvars.iv.next
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !79
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !2779

bb.b:                                             ; preds = %._crit_edge
  %i.bc = sub nsw i64 %indvars.iv376, %i.f        ; 3 uses
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph251, label %.loopexit241

.lr.ph251:                                        ; preds = %bb.b
  br i1 %i.d, label %.lr.ph251.split.preheader, label %.lr.ph246.us.preheader

.lr.ph251.split.preheader:                        ; preds = %.lr.ph251
  %i.be = trunc nsw i64 %i.bc to i32
  br label %.lr.ph251.split

.lr.ph246.us.preheader:                           ; preds = %.lr.ph251
  %wide.trip.count347 = zext i32 %indvars.iv345 to i64
  %i.bf = trunc nsw i64 %i.bc to i32
  %bound0485 = icmp ult ptr %.0174270, %scevgep484
  %bound1486 = icmp ult ptr %2, %scevgep483
  %found.conflict487 = and i1 %bound0485, %bound1486
  br label %.lr.ph246.us

.lr.ph246.us:                                     ; preds = %.lr.ph246.us.preheader, %._crit_edge247.us
  %indvars.iv342 = phi i64 [ 0, %.lr.ph246.us.preheader ], [ %indvars.iv.next343, %._crit_edge247.us ] ; 2 uses
  %.0168248.us = phi i32 [ %i.bf, %.lr.ph246.us.preheader ], [ %i.cw, %._crit_edge247.us ] ; 2 uses
  %i.bg = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %.0168248.us, i32 noundef %5, i32 noundef %6)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv342 ; 4 uses
  %i.bi = mul nsw i32 %i.bg, %1
  %i.bj = sext i32 %i.bi to i64
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.bj ; 4 uses
  %brmerge621 = select i1 %min.iters.check489, i1 true, i1 %found.conflict487
  br i1 %brmerge621, label %scalar.ph488.preheader, label %vector.ph490

vector.ph490:                                     ; preds = %.lr.ph246.us
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !79, !alias.scope !2780, !noalias !2783
  %broadcast.splatinsert492 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat493 = shufflevector <4 x i32> %broadcast.splatinsert492, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bl = zext <4 x i32> %broadcast.splat493 to <4 x i64>
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph490
  %index495 = phi i64 [ 0, %vector.ph490 ], [ %index.next498, %vector.body494 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.0174270, i64 %index495 ; 2 uses
  %i.bn = getelementptr [2 x i8], ptr %invariant.gep, i64 %index495
  %wide.load496 = load <4 x i16>, ptr %i.bn, align 2, !tbaa !521, !noalias !2783
  %i.bo = zext <4 x i16> %wide.load496 to <4 x i64>
  %i.bp = mul nuw nsw <4 x i64> %i.bo, %i.bl
  %i.bq = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.bp, <4 x i64> splat (i64 4294967295))
  %i.br = trunc nuw <4 x i64> %i.bq to <4 x i32>
  %wide.load497 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !79, !alias.scope !2786, !noalias !2788
  %i.bs = tail call <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32> %wide.load497, <4 x i32> %i.br)
  store <4 x i32> %i.bs, ptr %i.bm, align 4, !tbaa !79, !alias.scope !2786, !noalias !2780
  %index.next498 = add nuw i64 %index495, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next498, %n.vec491
  br i1 %i.bt, label %middle.block499, label %vector.body494, !llvm.loop !2791

middle.block499:                                  ; preds = %vector.body494
  br i1 %cmp.n500, label %._crit_edge247.us, label %scalar.ph488.preheader

scalar.ph488.preheader:                           ; preds = %.lr.ph246.us, %middle.block499
  %indvars.iv337.ph = phi i64 [ %n.vec491, %middle.block499 ], [ 0, %.lr.ph246.us ] ; 5 uses
  br i1 %lcmp.mod604.not, label %scalar.ph488.prol.loopexit, label %scalar.ph488.prol

scalar.ph488.prol:                                ; preds = %scalar.ph488.preheader
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.0174270, i64 %indvars.iv337.ph ; 2 uses
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv337.ph
  %i.bv = load i32, ptr %i.bh, align 4, !tbaa !79, !noalias !2783
  %i.bw = zext i32 %i.bv to i64
  %i.bx = load i16, ptr %gep.prol, align 2, !tbaa !521, !noalias !2783
  %i.by = zext i16 %i.bx to i64
  %i.bz = mul nuw nsw i64 %i.by, %i.bw
  %.sroa.speculated.i180.us.prol = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.bz, i64 4294967295)
  %i.ca = trunc nuw i64 %.sroa.speculated.i180.us.prol to i32
  %i.cb = load i32, ptr %i.bu, align 4, !tbaa !79, !noalias !2792
  %i.cc = tail call i32 @llvm.uadd.sat.i32(i32 %i.cb, i32 %i.ca)
  store i32 %i.cc, ptr %i.bu, align 4, !tbaa !79
  %indvars.iv.next338.prol = or disjoint i64 %indvars.iv337.ph, 1
  br label %scalar.ph488.prol.loopexit

scalar.ph488.prol.loopexit:                       ; preds = %scalar.ph488.prol, %scalar.ph488.preheader
  %indvars.iv337.unr = phi i64 [ %indvars.iv337.ph, %scalar.ph488.preheader ], [ %indvars.iv.next338.prol, %scalar.ph488.prol ]
  %i.cd = icmp eq i64 %indvars.iv337.ph, %i.r
  br i1 %i.cd, label %._crit_edge247.us, label %scalar.ph488

scalar.ph488:                                     ; preds = %scalar.ph488.prol.loopexit, %scalar.ph488
  %indvars.iv337 = phi i64 [ %indvars.iv.next338.1, %scalar.ph488 ], [ %indvars.iv337.unr, %scalar.ph488.prol.loopexit ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.0174270, i64 %indvars.iv337 ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv337
  %i.cf = load i32, ptr %i.bh, align 4, !tbaa !79, !noalias !2783
  %i.cg = zext i32 %i.cf to i64
  %i.ch = load i16, ptr %gep, align 2, !tbaa !521, !noalias !2783
  %i.ci = zext i16 %i.ch to i64
  %i.cj = mul nuw nsw i64 %i.ci, %i.cg
  %.sroa.speculated.i180.us = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.cj, i64 4294967295)
  %i.ck = trunc nuw i64 %.sroa.speculated.i180.us to i32
  %i.cl = load i32, ptr %i.ce, align 4, !tbaa !79, !noalias !2792
  %i.cm = tail call i32 @llvm.uadd.sat.i32(i32 %i.cl, i32 %i.ck)
  store i32 %i.cm, ptr %i.ce, align 4, !tbaa !79
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.0174270, i64 %indvars.iv.next338 ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next338
  %i.co = load i32, ptr %i.bh, align 4, !tbaa !79, !noalias !2783
  %i.cp = zext i32 %i.co to i64
  %i.cq = load i16, ptr %gep.1, align 2, !tbaa !521, !noalias !2783
  %i.cr = zext i16 %i.cq to i64
  %i.cs = mul nuw nsw i64 %i.cr, %i.cp
  %.sroa.speculated.i180.us.1 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.cs, i64 4294967295)
  %i.ct = trunc nuw i64 %.sroa.speculated.i180.us.1 to i32
  %i.cu = load i32, ptr %i.cn, align 4, !tbaa !79, !noalias !2792
  %i.cv = tail call i32 @llvm.uadd.sat.i32(i32 %i.cu, i32 %i.ct)
  store i32 %i.cv, ptr %i.cn, align 4, !tbaa !79
  %indvars.iv.next338.1 = add nuw nsw i64 %indvars.iv337, 2 ; 2 uses
  %exitcond341.not.1 = icmp eq i64 %indvars.iv.next338.1, %i.h
  br i1 %exitcond341.not.1, label %._crit_edge247.us, label %scalar.ph488, !llvm.loop !2793

._crit_edge247.us:                                ; preds = %scalar.ph488.prol.loopexit, %scalar.ph488, %middle.block499
  %i.cw = add nsw i32 %.0168248.us, 1
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %exitcond348.not = icmp eq i64 %indvars.iv.next343, %wide.trip.count347
  br i1 %exitcond348.not, label %.loopexit241, label %.lr.ph246.us, !llvm.loop !2794

.lr.ph251.split:                                  ; preds = %.lr.ph251.split.preheader, %.lr.ph251.split
  %.0168248 = phi i32 [ %i.cy, %.lr.ph251.split ], [ %i.be, %.lr.ph251.split.preheader ] ; 2 uses
  %i.cx = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %.0168248, i32 noundef %5, i32 noundef %6) ; 0 uses
  %i.cy = add i32 %.0168248, 1                    ; 2 uses
  %exitcond336.not = icmp eq i32 %i.cy, 0
  br i1 %exitcond336.not, label %.loopexit241.thread, label %.lr.ph251.split, !llvm.loop !2794

.loopexit241:                                     ; preds = %._crit_edge247.us, %bb.b, %._crit_edge
  %i.cz = add nsw i64 %indvars.iv376, %i.i        ; 3 uses
  %i.da = trunc nsw i64 %i.cz to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.da)
  %i.db = icmp slt i32 %.sroa.speculated, 2       ; 3 uses
  %i.dc = trunc i64 %indvars.iv376 to i32
  %i.dd = sub i32 %i.a, %i.dc
  %i.de = add i32 %i.dd, 1
  %brmerge = or i1 %i.db, %i.d
  %.mux = select i1 %i.db, i32 1, i32 %smin365
  %.mux446 = select i1 %i.db, i32 %i.de, i32 %i.ab
  br i1 %brmerge, label %._crit_edge258, label %.preheader238.us.preheader

.loopexit241.thread:                              ; preds = %.lr.ph251.split
end_hunk_2
begin_hunk_3_@_ZN2cv12cpu_baseline12_GLOBAL__N_120hlineSmoothONa_yzy_aItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib:bb.a
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 3 uses
  %i.nq = icmp slt i64 %indvars.iv.next400, %i.lz
  br i1 %i.nq, label %.preheader.us, label %._crit_edge298.loopexit, !llvm.loop !2867

.lr.ph293:                                        ; preds = %.lr.ph293.prol.loopexit, %.lr.ph293
  %indvars.iv387 = phi i64 [ %indvars.iv.next388.1, %.lr.ph293 ], [ %indvars.iv387.unr, %.lr.ph293.prol.loopexit ] ; 4 uses
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %.1173310, i64 %indvars.iv387
  %i.ns = load i32, ptr %2, align 4, !tbaa !79, !noalias !2847
  %i.nt = zext i32 %i.ns to i64
  %i.nu = load i16, ptr %i.nr, align 2, !tbaa !521, !noalias !2847
  %i.nv = zext i16 %i.nu to i64
  %i.nw = mul nuw nsw i64 %i.nv, %i.nt
  %.sroa.speculated.i187 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.nw, i64 4294967295)
  %i.nx = trunc nuw i64 %.sroa.speculated.i187 to i32
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.2176307, i64 %indvars.iv387
  store i32 %i.nx, ptr %i.ny, align 4, !tbaa !79
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %.1173310, i64 %indvars.iv.next388
  %i.oa = load i32, ptr %2, align 4, !tbaa !79, !noalias !2847
  %i.ob = zext i32 %i.oa to i64
  %i.oc = load i16, ptr %i.nz, align 2, !tbaa !521, !noalias !2847
  %i.od = zext i16 %i.oc to i64
  %i.oe = mul nuw nsw i64 %i.od, %i.ob
  %.sroa.speculated.i187.1 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.oe, i64 4294967295)
  %i.of = trunc nuw i64 %.sroa.speculated.i187.1 to i32
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.2176307, i64 %indvars.iv.next388
  store i32 %i.of, ptr %i.og, align 4, !tbaa !79
  %indvars.iv.next388.1 = add nuw nsw i64 %indvars.iv387, 2 ; 2 uses
  %exitcond391.not.1 = icmp eq i64 %indvars.iv.next388.1, %i.kk
  br i1 %exitcond391.not.1, label %.preheader236, label %.lr.ph293, !llvm.loop !2868

._crit_edge298.loopexit:                          ; preds = %._crit_edge296.us
  %i.oh = trunc nuw nsw i64 %indvars.iv.next400 to i32
  br label %._crit_edge298

._crit_edge298:                                   ; preds = %.preheader236.thread, %.preheader236, %._crit_edge298.loopexit
  %.0157.lcssa = phi i32 [ %.mux451, %.preheader236 ], [ %i.oh, %._crit_edge298.loopexit ], [ %spec.select447, %.preheader236.thread ] ; 4 uses
  %i.oi = icmp slt i32 %.0157.lcssa, %3
  %or.cond317 = and i1 %.not, %i.oi
  br i1 %or.cond317, label %.lr.ph306, label %.loopexit

.lr.ph306:                                        ; preds = %._crit_edge298
  br i1 %i.kg, label %.lr.ph303.us.preheader, label %.lr.ph306.split.preheader

.lr.ph306.split.preheader:                        ; preds = %.lr.ph306
  %i.oj = trunc nsw i64 %indvars.iv411 to i32
  br label %.lr.ph306.split

.lr.ph303.us.preheader:                           ; preds = %.lr.ph306
  %i.ok = zext i32 %.0157.lcssa to i64            ; 3 uses
  %i.ol = trunc nsw i64 %indvars.iv411 to i32     ; 2 uses
  %i.om = shl nuw nsw i64 %i.ok, 2
  %scevgep535 = getelementptr i8, ptr %2, i64 %i.om
  %i.on = xor i32 %.0157.lcssa, -1
  %i.oo = add i32 %3, %i.on
  %i.op = zext i32 %i.oo to i64
  %i.oq = add nuw nsw i64 %i.ok, %i.op
  %i.or = shl nuw nsw i64 %i.oq, 2
  %scevgep537 = getelementptr i8, ptr %scevgep536, i64 %i.or
  %bound0538 = icmp ult ptr %.2176307, %scevgep537
  %bound1539 = icmp ult ptr %scevgep535, %scevgep534
  %found.conflict540 = and i1 %bound0538, %bound1539
  br label %.lr.ph303.us

.lr.ph303.us:                                     ; preds = %.lr.ph303.us.preheader, %._crit_edge304.us
  %indvars.iv408 = phi i64 [ %i.ok, %.lr.ph303.us.preheader ], [ %indvars.iv.next409, %._crit_edge304.us ] ; 3 uses
  %i.os = trunc nuw i64 %indvars.iv408 to i32
  %i.ot = add nsw i32 %i.os, %i.ol
  %i.ou = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ot, i32 noundef %5, i32 noundef %6)
  %i.ov = sub nsw i32 %i.ou, %i.ol
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv408 ; 4 uses
  %i.ox = mul nsw i32 %i.ov, %1
  %i.oy = sext i32 %i.ox to i64
  %invariant.gep441 = getelementptr [2 x i8], ptr %.1173310, i64 %i.oy ; 4 uses
  %brmerge625 = select i1 %min.iters.check542, i1 true, i1 %found.conflict540
  br i1 %brmerge625, label %scalar.ph541.preheader, label %vector.ph543

vector.ph543:                                     ; preds = %.lr.ph303.us
  %i.oz = load i32, ptr %i.ow, align 4, !tbaa !79, !alias.scope !2869, !noalias !2872
  %broadcast.splatinsert545 = insertelement <4 x i32> poison, i32 %i.oz, i64 0
  %broadcast.splat546 = shufflevector <4 x i32> %broadcast.splatinsert545, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.pa = zext <4 x i32> %broadcast.splat546 to <4 x i64>
  br label %vector.body547

vector.body547:                                   ; preds = %vector.body547, %vector.ph543
  %index548 = phi i64 [ 0, %vector.ph543 ], [ %index.next551, %vector.body547 ] ; 3 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.2176307, i64 %index548 ; 2 uses
  %i.pc = getelementptr [2 x i8], ptr %invariant.gep441, i64 %index548
  %wide.load549 = load <4 x i16>, ptr %i.pc, align 2, !tbaa !521, !noalias !2872
  %i.pd = zext <4 x i16> %wide.load549 to <4 x i64>
  %i.pe = mul nuw nsw <4 x i64> %i.pd, %i.pa
  %i.pf = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.pe, <4 x i64> splat (i64 4294967295))
  %i.pg = trunc nuw <4 x i64> %i.pf to <4 x i32>
  %wide.load550 = load <4 x i32>, ptr %i.pb, align 4, !tbaa !79, !alias.scope !2875, !noalias !2877
  %i.ph = tail call <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32> %wide.load550, <4 x i32> %i.pg)
  store <4 x i32> %i.ph, ptr %i.pb, align 4, !tbaa !79, !alias.scope !2875, !noalias !2869
  %index.next551 = add nuw i64 %index548, 4       ; 2 uses
  %i.pi = icmp eq i64 %index.next551, %n.vec544
  br i1 %i.pi, label %middle.block552, label %vector.body547, !llvm.loop !2880

middle.block552:                                  ; preds = %vector.body547
  br i1 %cmp.n553, label %._crit_edge304.us, label %scalar.ph541.preheader

scalar.ph541.preheader:                           ; preds = %.lr.ph303.us, %middle.block552
  %indvars.iv403.ph = phi i64 [ %n.vec544, %middle.block552 ], [ 0, %.lr.ph303.us ] ; 5 uses
  br i1 %lcmp.mod614.not, label %scalar.ph541.prol.loopexit, label %scalar.ph541.prol

scalar.ph541.prol:                                ; preds = %scalar.ph541.preheader
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %.2176307, i64 %indvars.iv403.ph ; 2 uses
  %gep442.prol = getelementptr [2 x i8], ptr %invariant.gep441, i64 %indvars.iv403.ph
  %i.pk = load i32, ptr %i.ow, align 4, !tbaa !79, !noalias !2872
  %i.pl = zext i32 %i.pk to i64
  %i.pm = load i16, ptr %gep442.prol, align 2, !tbaa !521, !noalias !2872
  %i.pn = zext i16 %i.pm to i64
  %i.po = mul nuw nsw i64 %i.pn, %i.pl
  %.sroa.speculated.i189.us.prol = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.po, i64 4294967295)
  %i.pp = trunc nuw i64 %.sroa.speculated.i189.us.prol to i32
  %i.pq = load i32, ptr %i.pj, align 4, !tbaa !79, !noalias !2881
  %i.pr = tail call i32 @llvm.uadd.sat.i32(i32 %i.pq, i32 %i.pp)
  store i32 %i.pr, ptr %i.pj, align 4, !tbaa !79
  %indvars.iv.next404.prol = or disjoint i64 %indvars.iv403.ph, 1
  br label %scalar.ph541.prol.loopexit

scalar.ph541.prol.loopexit:                       ; preds = %scalar.ph541.prol, %scalar.ph541.preheader
  %indvars.iv403.unr = phi i64 [ %indvars.iv403.ph, %scalar.ph541.preheader ], [ %indvars.iv.next404.prol, %scalar.ph541.prol ]
  %i.ps = icmp eq i64 %indvars.iv403.ph, %i.lb
  br i1 %i.ps, label %._crit_edge304.us, label %scalar.ph541

scalar.ph541:                                     ; preds = %scalar.ph541.prol.loopexit, %scalar.ph541
  %indvars.iv403 = phi i64 [ %indvars.iv.next404.1, %scalar.ph541 ], [ %indvars.iv403.unr, %scalar.ph541.prol.loopexit ] ; 4 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %.2176307, i64 %indvars.iv403 ; 2 uses
  %gep442 = getelementptr [2 x i8], ptr %invariant.gep441, i64 %indvars.iv403
  %i.pu = load i32, ptr %i.ow, align 4, !tbaa !79, !noalias !2872
  %i.pv = zext i32 %i.pu to i64
  %i.pw = load i16, ptr %gep442, align 2, !tbaa !521, !noalias !2872
  %i.px = zext i16 %i.pw to i64
  %i.py = mul nuw nsw i64 %i.px, %i.pv
  %.sroa.speculated.i189.us = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.py, i64 4294967295)
  %i.pz = trunc nuw i64 %.sroa.speculated.i189.us to i32
  %i.qa = load i32, ptr %i.pt, align 4, !tbaa !79, !noalias !2881
  %i.qb = tail call i32 @llvm.uadd.sat.i32(i32 %i.qa, i32 %i.pz)
  store i32 %i.qb, ptr %i.pt, align 4, !tbaa !79
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %.2176307, i64 %indvars.iv.next404 ; 2 uses
  %gep442.1 = getelementptr [2 x i8], ptr %invariant.gep441, i64 %indvars.iv.next404
  %i.qd = load i32, ptr %i.ow, align 4, !tbaa !79, !noalias !2872
  %i.qe = zext i32 %i.qd to i64
  %i.qf = load i16, ptr %gep442.1, align 2, !tbaa !521, !noalias !2872
  %i.qg = zext i16 %i.qf to i64
  %i.qh = mul nuw nsw i64 %i.qg, %i.qe
  %.sroa.speculated.i189.us.1 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.qh, i64 4294967295)
  %i.qi = trunc nuw i64 %.sroa.speculated.i189.us.1 to i32
  %i.qj = load i32, ptr %i.qc, align 4, !tbaa !79, !noalias !2881
  %i.qk = tail call i32 @llvm.uadd.sat.i32(i32 %i.qj, i32 %i.qi)
  store i32 %i.qk, ptr %i.qc, align 4, !tbaa !79
  %indvars.iv.next404.1 = add nuw nsw i64 %indvars.iv403, 2 ; 2 uses
  %exitcond407.not.1 = icmp eq i64 %indvars.iv.next404.1, %i.kk
  br i1 %exitcond407.not.1, label %._crit_edge304.us, label %scalar.ph541, !llvm.loop !2882

._crit_edge304.us:                                ; preds = %scalar.ph541.prol.loopexit, %scalar.ph541, %middle.block552
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 2 uses
  %i.ql = trunc nuw i64 %indvars.iv.next409 to i32
  %i.qm = icmp sgt i32 %3, %i.ql
  br i1 %i.qm, label %.lr.ph303.us, label %.loopexit, !llvm.loop !2883

.lr.ph306.split:                                  ; preds = %.lr.ph306.split.preheader, %.lr.ph306.split
  %.1305 = phi i32 [ %i.qp, %.lr.ph306.split ], [ %.0157.lcssa, %.lr.ph306.split.preheader ] ; 2 uses
  %i.qn = add nsw i32 %.1305, %i.oj
  %i.qo = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.qn, i32 noundef %5, i32 noundef %6) ; 0 uses
  %i.qp = add i32 %.1305, 1                       ; 2 uses
  %exitcond402.not = icmp eq i32 %i.qp, %3
  br i1 %exitcond402.not, label %.loopexit, label %.lr.ph306.split, !llvm.loop !2883

.loopexit:                                        ; preds = %.lr.ph306.split, %._crit_edge304.us, %._crit_edge298
  %indvars.iv.next412 = add nsw i64 %indvars.iv411, 1 ; 2 uses
  %i.qq = getelementptr inbounds [2 x i8], ptr %.1173310, i64 %i.kh
  %i.qr = getelementptr [4 x i8], ptr %.2176307, i64 %i.kh
  %i.qs = icmp slt i64 %indvars.iv.next412, %i.kn
  %indvars.iv.next393 = add i32 %indvars.iv392, -1
  %indvar.next533 = add i64 %indvar532, 1
  br i1 %i.qs, label %.preheader237, label %._crit_edge316, !llvm.loop !2884

._crit_edge316:                                   ; preds = %.loopexit, %._crit_edge285
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_111hlineSmoothItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5, i32 noundef %6, i1 zeroext %7) #0 {
bb.a:
  %i.a = sdiv i32 %3, 2                           ; 9 uses
  %i.b = sub i32 %3, %i.a                         ; 3 uses
  %.sroa.speculated203 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.a) ; 3 uses
  %i.c = icmp sgt i32 %.sroa.speculated203, 0
  br i1 %i.c, label %.preheader228.lr.ph, label %._crit_edge259

.preheader228.lr.ph:                              ; preds = %bb.a
  %i.d = icmp slt i32 %1, 1                       ; 4 uses
  %.not172 = icmp ne i32 %6, 0                    ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 4 uses
  %i.f = sext i32 %i.a to i64                     ; 4 uses
  %i.g = add nsw i64 %i.f, 1
  %i.h = zext i32 %1 to i64                       ; 19 uses
  %i.i = sext i32 %i.b to i64                     ; 2 uses
  %wide.trip.count366 = zext nneg i32 %.sroa.speculated203 to i64
  %8 = shl nuw nsw i64 %i.h, 2                    ; 3 uses
  %i.j = shl nsw i64 %i.e, 2
  %i.k = shl nsw i64 %i.e, 2
  %i.l = shl nsw i64 %i.f, 2                      ; 2 uses
  %i.m = shl nsw i64 %i.e, 2
  %9 = getelementptr i8, ptr %4, i64 %8
  %10 = getelementptr i8, ptr %4, i64 %8
  %11 = getelementptr i8, ptr %2, i64 %i.l
  %i.n = getelementptr i8, ptr %11, i64 4
  %i.o = getelementptr i8, ptr %2, i64 %i.l
  %i.p = getelementptr i8, ptr %4, i64 %8
  %xtraiter = and i64 %i.h, 1
  %i.q = icmp eq i32 %1, 1
  %unroll_iter = and i64 %i.h, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod588 = trunc i32 %1 to i1
  %min.iters.check475 = icmp ult i32 %1, 4
  %n.vec477 = and i64 %i.h, 2147483644            ; 3 uses
  %cmp.n486 = icmp eq i64 %n.vec477, %i.h
  %xtraiter589 = and i64 %i.h, 1
  %lcmp.mod590.not = icmp eq i64 %xtraiter589, 0
  %i.r = add nsw i64 %i.h, -1
  %min.iters.check455 = icmp ult i32 %1, 4
  %n.vec457 = and i64 %i.h, 2147483644            ; 3 uses
  %cmp.n466 = icmp eq i64 %n.vec457, %i.h
  %xtraiter591 = and i64 %i.h, 1
  %lcmp.mod592.not = icmp eq i64 %xtraiter591, 0
  %i.s = add nsw i64 %i.h, -1
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %i.h, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.h
  %xtraiter593 = and i64 %i.h, 1
  %lcmp.mod594.not = icmp eq i64 %xtraiter593, 0
  %i.t = add nsw i64 %i.h, -1
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.lr.ph, %.loopexit226
  %indvars.iv362 = phi i64 [ 0, %.preheader228.lr.ph ], [ %indvars.iv.next363, %.loopexit226 ] ; 11 uses
  %indvars.iv342 = phi i64 [ %i.g, %.preheader228.lr.ph ], [ %indvars.iv.next343, %.loopexit226 ] ; 2 uses
  %indvars.iv335 = phi i32 [ %i.b, %.preheader228.lr.ph ], [ %indvars.iv.next336, %.loopexit226 ] ; 3 uses
  %indvars.iv331 = phi i32 [ %i.a, %.preheader228.lr.ph ], [ %indvars.iv.next332, %.loopexit226 ] ; 4 uses
  %.0167256 = phi ptr [ %4, %.preheader228.lr.ph ], [ %i.ha, %.loopexit226 ] ; 19 uses
  %i.u = mul i64 %i.m, %indvars.iv362
  %scevgep469 = getelementptr i8, ptr %9, i64 %i.u
  %i.v = zext i32 %indvars.iv331 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  %scevgep470 = getelementptr i8, ptr %2, i64 %i.w
  %i.x = mul i64 %i.k, %indvars.iv362
  %scevgep447 = getelementptr i8, ptr %10, i64 %i.x
  %12 = mul nsw i64 %indvars.iv362, -4            ; 2 uses
  %scevgep448 = getelementptr i8, ptr %i.n, i64 %12
  %scevgep449 = getelementptr i8, ptr %i.o, i64 %12
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv335)
  %i.y = zext i32 %smin to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %scevgep450 = getelementptr i8, ptr %scevgep449, i64 %i.z
  %i.aa = mul i64 %i.j, %indvars.iv362
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.aa
  %smin351 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv335) ; 5 uses
  %i.ab = add i32 %smin351, %indvars.iv331        ; 2 uses
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader228
  %i.ac = sub nsw i64 %i.f, %indvars.iv362
  %i.ad = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ac ; 3 uses
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod588)
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !79, !noalias !2885
  %i.ag = zext i32 %i.af to i64
  %i.ah = load i16, ptr %i.ae, align 2, !tbaa !521, !noalias !2885
  %i.ai = zext i16 %i.ah to i64
  %i.aj = mul nuw nsw i64 %i.ai, %i.ag
  %.sroa.speculated.i.epil = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.aj, i64 4294967295)
  %i.ak = trunc nuw i64 %.sroa.speculated.i.epil to i32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.0167256, i64 %indvars.iv.epil.init
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader228
  br i1 %.not172, label %bb.b, label %.loopexit227

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.an = load i32, ptr %i.ad, align 4, !tbaa !79, !noalias !2885
  %i.ao = zext i32 %i.an to i64
  %i.ap = load i16, ptr %i.am, align 2, !tbaa !521, !noalias !2885
  %i.aq = zext i16 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, %i.ao
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.ar, i64 4294967295)
  %i.as = trunc nuw i64 %.sroa.speculated.i to i32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.0167256, i64 %indvars.iv
  store i32 %i.as, ptr %i.at, align 4, !tbaa !79
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.av = load i32, ptr %i.ad, align 4, !tbaa !79, !noalias !2885
  %i.aw = zext i32 %i.av to i64
  %i.ax = load i16, ptr %i.au, align 2, !tbaa !521, !noalias !2885
  %i.ay = zext i16 %i.ax to i64
  %i.az = mul nuw nsw i64 %i.ay, %i.aw
  %.sroa.speculated.i.1 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.az, i64 4294967295)
  %i.ba = trunc nuw i64 %.sroa.speculated.i.1 to i32
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.0167256, i64 %indvars.iv.next
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !79
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !2888

bb.b:                                             ; preds = %._crit_edge
  %i.bc = sub nsw i64 %indvars.iv362, %i.f        ; 3 uses
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph237, label %.loopexit227

.lr.ph237:                                        ; preds = %bb.b
  br i1 %i.d, label %.lr.ph237.split.preheader, label %.lr.ph232.us.preheader

.lr.ph237.split.preheader:                        ; preds = %.lr.ph237
  %i.be = trunc nsw i64 %i.bc to i32
  br label %.lr.ph237.split

.lr.ph232.us.preheader:                           ; preds = %.lr.ph237
  %wide.trip.count333 = zext i32 %indvars.iv331 to i64
  %i.bf = trunc nsw i64 %i.bc to i32
  %bound0471 = icmp ult ptr %.0167256, %scevgep470
  %bound1472 = icmp ult ptr %2, %scevgep469
  %found.conflict473 = and i1 %bound0471, %bound1472
  br label %.lr.ph232.us

.lr.ph232.us:                                     ; preds = %.lr.ph232.us.preheader, %._crit_edge233.us
  %indvars.iv328 = phi i64 [ 0, %.lr.ph232.us.preheader ], [ %indvars.iv.next329, %._crit_edge233.us ] ; 2 uses
  %.0161234.us = phi i32 [ %i.bf, %.lr.ph232.us.preheader ], [ %i.cw, %._crit_edge233.us ] ; 2 uses
  %i.bg = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %.0161234.us, i32 noundef %5, i32 noundef %6)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv328 ; 4 uses
  %i.bi = mul nsw i32 %i.bg, %1
  %i.bj = sext i32 %i.bi to i64
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.bj ; 4 uses
  %brmerge612 = select i1 %min.iters.check475, i1 true, i1 %found.conflict473
  br i1 %brmerge612, label %scalar.ph474.preheader, label %vector.ph476

vector.ph476:                                     ; preds = %.lr.ph232.us
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !79, !alias.scope !2889, !noalias !2892
  %broadcast.splatinsert478 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat479 = shufflevector <4 x i32> %broadcast.splatinsert478, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bl = zext <4 x i32> %broadcast.splat479 to <4 x i64>
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %vector.ph476
  %index481 = phi i64 [ 0, %vector.ph476 ], [ %index.next484, %vector.body480 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.0167256, i64 %index481 ; 2 uses
  %i.bn = getelementptr [2 x i8], ptr %invariant.gep, i64 %index481
  %wide.load482 = load <4 x i16>, ptr %i.bn, align 2, !tbaa !521, !noalias !2892
  %i.bo = zext <4 x i16> %wide.load482 to <4 x i64>
  %i.bp = mul nuw nsw <4 x i64> %i.bo, %i.bl
  %i.bq = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.bp, <4 x i64> splat (i64 4294967295))
  %i.br = trunc nuw <4 x i64> %i.bq to <4 x i32>
  %wide.load483 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !79, !alias.scope !2895, !noalias !2897
  %i.bs = tail call <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32> %wide.load483, <4 x i32> %i.br)
  store <4 x i32> %i.bs, ptr %i.bm, align 4, !tbaa !79, !alias.scope !2895, !noalias !2889
  %index.next484 = add nuw i64 %index481, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next484, %n.vec477
  br i1 %i.bt, label %middle.block485, label %vector.body480, !llvm.loop !2900

middle.block485:                                  ; preds = %vector.body480
  br i1 %cmp.n486, label %._crit_edge233.us, label %scalar.ph474.preheader

scalar.ph474.preheader:                           ; preds = %.lr.ph232.us, %middle.block485
  %indvars.iv323.ph = phi i64 [ %n.vec477, %middle.block485 ], [ 0, %.lr.ph232.us ] ; 5 uses
  br i1 %lcmp.mod590.not, label %scalar.ph474.prol.loopexit, label %scalar.ph474.prol

scalar.ph474.prol:                                ; preds = %scalar.ph474.preheader
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.0167256, i64 %indvars.iv323.ph ; 2 uses
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv323.ph
  %i.bv = load i32, ptr %i.bh, align 4, !tbaa !79, !noalias !2892
  %i.bw = zext i32 %i.bv to i64
  %i.bx = load i16, ptr %gep.prol, align 2, !tbaa !521, !noalias !2892
  %i.by = zext i16 %i.bx to i64
  %i.bz = mul nuw nsw i64 %i.by, %i.bw
  %.sroa.speculated.i173.us.prol = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.bz, i64 4294967295)
  %i.ca = trunc nuw i64 %.sroa.speculated.i173.us.prol to i32
  %i.cb = load i32, ptr %i.bu, align 4, !tbaa !79, !noalias !2901
  %i.cc = tail call i32 @llvm.uadd.sat.i32(i32 %i.cb, i32 %i.ca)
  store i32 %i.cc, ptr %i.bu, align 4, !tbaa !79
  %indvars.iv.next324.prol = or disjoint i64 %indvars.iv323.ph, 1
  br label %scalar.ph474.prol.loopexit

scalar.ph474.prol.loopexit:                       ; preds = %scalar.ph474.prol, %scalar.ph474.preheader
  %indvars.iv323.unr = phi i64 [ %indvars.iv323.ph, %scalar.ph474.preheader ], [ %indvars.iv.next324.prol, %scalar.ph474.prol ]
  %i.cd = icmp eq i64 %indvars.iv323.ph, %i.r
  br i1 %i.cd, label %._crit_edge233.us, label %scalar.ph474

scalar.ph474:                                     ; preds = %scalar.ph474.prol.loopexit, %scalar.ph474
  %indvars.iv323 = phi i64 [ %indvars.iv.next324.1, %scalar.ph474 ], [ %indvars.iv323.unr, %scalar.ph474.prol.loopexit ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.0167256, i64 %indvars.iv323 ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv323
  %i.cf = load i32, ptr %i.bh, align 4, !tbaa !79, !noalias !2892
  %i.cg = zext i32 %i.cf to i64
  %i.ch = load i16, ptr %gep, align 2, !tbaa !521, !noalias !2892
  %i.ci = zext i16 %i.ch to i64
  %i.cj = mul nuw nsw i64 %i.ci, %i.cg
  %.sroa.speculated.i173.us = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.cj, i64 4294967295)
  %i.ck = trunc nuw i64 %.sroa.speculated.i173.us to i32
  %i.cl = load i32, ptr %i.ce, align 4, !tbaa !79, !noalias !2901
  %i.cm = tail call i32 @llvm.uadd.sat.i32(i32 %i.cl, i32 %i.ck)
  store i32 %i.cm, ptr %i.ce, align 4, !tbaa !79
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.0167256, i64 %indvars.iv.next324 ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next324
  %i.co = load i32, ptr %i.bh, align 4, !tbaa !79, !noalias !2892
  %i.cp = zext i32 %i.co to i64
  %i.cq = load i16, ptr %gep.1, align 2, !tbaa !521, !noalias !2892
  %i.cr = zext i16 %i.cq to i64
  %i.cs = mul nuw nsw i64 %i.cr, %i.cp
  %.sroa.speculated.i173.us.1 = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.cs, i64 4294967295)
  %i.ct = trunc nuw i64 %.sroa.speculated.i173.us.1 to i32
  %i.cu = load i32, ptr %i.cn, align 4, !tbaa !79, !noalias !2901
  %i.cv = tail call i32 @llvm.uadd.sat.i32(i32 %i.cu, i32 %i.ct)
  store i32 %i.cv, ptr %i.cn, align 4, !tbaa !79
  %indvars.iv.next324.1 = add nuw nsw i64 %indvars.iv323, 2 ; 2 uses
  %exitcond327.not.1 = icmp eq i64 %indvars.iv.next324.1, %i.h
  br i1 %exitcond327.not.1, label %._crit_edge233.us, label %scalar.ph474, !llvm.loop !2902

._crit_edge233.us:                                ; preds = %scalar.ph474.prol.loopexit, %scalar.ph474, %middle.block485
  %i.cw = add nsw i32 %.0161234.us, 1
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %exitcond334.not = icmp eq i64 %indvars.iv.next329, %wide.trip.count333
  br i1 %exitcond334.not, label %.loopexit227, label %.lr.ph232.us, !llvm.loop !2903

.lr.ph237.split:                                  ; preds = %.lr.ph237.split.preheader, %.lr.ph237.split
  %.0161234 = phi i32 [ %i.cy, %.lr.ph237.split ], [ %i.be, %.lr.ph237.split.preheader ] ; 2 uses
  %i.cx = tail call noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %.0161234, i32 noundef %5, i32 noundef %6) ; 0 uses
  %i.cy = add i32 %.0161234, 1                    ; 2 uses
  %exitcond322.not = icmp eq i32 %i.cy, 0
  br i1 %exitcond322.not, label %.loopexit227.thread, label %.lr.ph237.split, !llvm.loop !2903

.loopexit227:                                     ; preds = %._crit_edge233.us, %bb.b, %._crit_edge
  %i.cz = add nsw i64 %indvars.iv362, %i.i        ; 3 uses
  %i.da = trunc nsw i64 %i.cz to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.da)
  %i.db = icmp slt i32 %.sroa.speculated, 2       ; 3 uses
  %i.dc = trunc i64 %indvars.iv362 to i32
  %i.dd = sub i32 %i.a, %i.dc
  %i.de = add i32 %i.dd, 1
  %brmerge = or i1 %i.db, %i.d
  %.mux = select i1 %i.db, i32 1, i32 %smin351
  %.mux432 = select i1 %i.db, i32 %i.de, i32 %i.ab
  br i1 %brmerge, label %._crit_edge244, label %.preheader224.us.preheader

.loopexit227.thread:                              ; preds = %.lr.ph237.split
end_hunk_3
