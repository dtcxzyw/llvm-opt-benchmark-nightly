Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/main?download=true
inline.NumInlined: 364
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a

bb.sj:                                            ; preds = %bb.si
  %i.atn = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.2783.jt2) #22
  %i.ato = getelementptr inbounds nuw i8, ptr %.2783.jt2, i64 %i.atn ; 4 uses
  br label %bb.sk

bb.sk:                                            ; preds = %bb.sl, %bb.sj
  %.pn.i.i1458 = phi ptr [ %i.ato, %bb.sj ], [ %.014.i.i1461, %bb.sl ]
  %.pn17.i.i1459 = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.181, i64 4), %bb.sj ], [ %.013.i.i1460, %bb.sl ]
  %.013.i.i1460 = getelementptr inbounds i8, ptr %.pn17.i.i1459, i64 -1 ; 3 uses
  %.014.i.i1461 = getelementptr inbounds i8, ptr %.pn.i.i1458, i64 -1 ; 3 uses
  %.not.i.i1462 = icmp ult ptr %.013.i.i1460, @.str.181 ; 2 uses
  %i.atp = icmp ult ptr %.014.i.i1461, %.2783.jt2
  %or.cond.i.i1463 = select i1 %.not.i.i1462, i1 true, i1 %i.atp
  br i1 %or.cond.i.i1463, label %_ZL12cmpExtensionPKcS0_.exit.i1506, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.atq = load i8, ptr %.014.i.i1461, align 1, !tbaa !17 ; 3 uses
  %i.atr = add i8 %i.atq, -97
  %or.cond.i.i.i1464 = icmp ult i8 %i.atr, 26
  %i.ats = add nsw i8 %i.atq, -32
  %i.att = select i1 %or.cond.i.i.i1464, i8 %i.ats, i8 %i.atq
  %i.atu = load i8, ptr %.013.i.i1460, align 1, !tbaa !17 ; 3 uses
  %i.atv = add i8 %i.atu, -97
  %or.cond.i18.i.i1465 = icmp ult i8 %i.atv, 26
  %i.atw = add nsw i8 %i.atu, -32
  %i.atx = select i1 %or.cond.i18.i.i1465, i8 %i.atw, i8 %i.atu
  %.not16.i.i1466 = icmp eq i8 %i.att, %i.atx
  br i1 %.not16.i.i1466, label %bb.sk, label %_ZL12cmpExtensionPKcS0_.exit.thread.i1467.preheader, !llvm.loop !0

_ZL12cmpExtensionPKcS0_.exit.i1506:               ; preds = %bb.sk
  br i1 %.not.i.i1462, label %.thread.i1507, label %_ZL12cmpExtensionPKcS0_.exit.thread.i1467.preheader

_ZL12cmpExtensionPKcS0_.exit.thread.i1467.preheader: ; preds = %bb.sl, %_ZL12cmpExtensionPKcS0_.exit.i1506
  br label %_ZL12cmpExtensionPKcS0_.exit.thread.i1467

_ZL12cmpExtensionPKcS0_.exit.thread.i1467:        ; preds = %_ZL12cmpExtensionPKcS0_.exit.thread.i1467.preheader, %bb.sm
  %.pn.i84.i1468 = phi ptr [ %.014.i87.i1471, %bb.sm ], [ %i.ato, %_ZL12cmpExtensionPKcS0_.exit.thread.i1467.preheader ]
  %.pn17.i85.i1469 = phi ptr [ %.013.i86.i1470, %bb.sm ], [ getelementptr inbounds nuw (i8, ptr @.str.190, i64 4), %_ZL12cmpExtensionPKcS0_.exit.thread.i1467.preheader ]
  %.013.i86.i1470 = getelementptr inbounds i8, ptr %.pn17.i85.i1469, i64 -1 ; 3 uses
  %.014.i87.i1471 = getelementptr inbounds i8, ptr %.pn.i84.i1468, i64 -1 ; 3 uses
  %.not.i88.i1472 = icmp ult ptr %.013.i86.i1470, @.str.190 ; 2 uses
  %i.aty = icmp ult ptr %.014.i87.i1471, %.2783.jt2
  %or.cond.i89.i1473 = select i1 %.not.i88.i1472, i1 true, i1 %i.aty
  br i1 %or.cond.i89.i1473, label %_ZL12cmpExtensionPKcS0_.exit94.i1505, label %bb.sm

bb.sm:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit.thread.i1467
  %i.atz = load i8, ptr %.014.i87.i1471, align 1, !tbaa !17 ; 3 uses
  %i.aua = add i8 %i.atz, -97
  %or.cond.i.i90.i1474 = icmp ult i8 %i.aua, 26
  %i.aub = add nsw i8 %i.atz, -32
  %i.auc = select i1 %or.cond.i.i90.i1474, i8 %i.aub, i8 %i.atz
  %i.aud = load i8, ptr %.013.i86.i1470, align 1, !tbaa !17 ; 3 uses
  %i.aue = add i8 %i.aud, -97
  %or.cond.i18.i91.i1475 = icmp ult i8 %i.aue, 26
  %i.auf = add nsw i8 %i.aud, -32
  %i.aug = select i1 %or.cond.i18.i91.i1475, i8 %i.auf, i8 %i.aud
  %.not16.i92.i1476 = icmp eq i8 %i.auc, %i.aug
  br i1 %.not16.i92.i1476, label %_ZL12cmpExtensionPKcS0_.exit.thread.i1467, label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1477.preheader, !llvm.loop !0

_ZL12cmpExtensionPKcS0_.exit94.i1505:             ; preds = %_ZL12cmpExtensionPKcS0_.exit.thread.i1467
  br i1 %.not.i88.i1472, label %.thread152.i, label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1477.preheader

_ZL12cmpExtensionPKcS0_.exit94.thread.i1477.preheader: ; preds = %bb.sm, %_ZL12cmpExtensionPKcS0_.exit94.i1505
  br label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1477

_ZL12cmpExtensionPKcS0_.exit94.thread.i1477:      ; preds = %_ZL12cmpExtensionPKcS0_.exit94.thread.i1477.preheader, %bb.sn
  %.pn.i95.i1478 = phi ptr [ %.014.i98.i1481, %bb.sn ], [ %i.ato, %_ZL12cmpExtensionPKcS0_.exit94.thread.i1477.preheader ]
  %.pn17.i96.i1479 = phi ptr [ %.013.i97.i1480, %bb.sn ], [ getelementptr inbounds nuw (i8, ptr @.str.191, i64 5), %_ZL12cmpExtensionPKcS0_.exit94.thread.i1477.preheader ]
  %.013.i97.i1480 = getelementptr inbounds i8, ptr %.pn17.i96.i1479, i64 -1 ; 3 uses
  %.014.i98.i1481 = getelementptr inbounds i8, ptr %.pn.i95.i1478, i64 -1 ; 3 uses
  %.not.i99.i1482 = icmp ult ptr %.013.i97.i1480, @.str.191 ; 2 uses
  %i.auh = icmp ult ptr %.014.i98.i1481, %.2783.jt2
  %or.cond.i100.i1483 = select i1 %.not.i99.i1482, i1 true, i1 %i.auh
  br i1 %or.cond.i100.i1483, label %_ZL12cmpExtensionPKcS0_.exit105.i1504, label %bb.sn

bb.sn:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit94.thread.i1477
  %i.aui = load i8, ptr %.014.i98.i1481, align 1, !tbaa !17 ; 3 uses
  %i.auj = add i8 %i.aui, -97
  %or.cond.i.i101.i1484 = icmp ult i8 %i.auj, 26
  %i.auk = add nsw i8 %i.aui, -32
  %i.aul = select i1 %or.cond.i.i101.i1484, i8 %i.auk, i8 %i.aui
  %i.aum = load i8, ptr %.013.i97.i1480, align 1, !tbaa !17 ; 3 uses
  %i.aun = add i8 %i.aum, -97
  %or.cond.i18.i102.i1485 = icmp ult i8 %i.aun, 26
  %i.auo = add nsw i8 %i.aum, -32
  %i.aup = select i1 %or.cond.i18.i102.i1485, i8 %i.auo, i8 %i.aum
  %.not16.i103.i1486 = icmp eq i8 %i.aul, %i.aup
  br i1 %.not16.i103.i1486, label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1477, label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1487.preheader, !llvm.loop !0

_ZL12cmpExtensionPKcS0_.exit105.i1504:            ; preds = %_ZL12cmpExtensionPKcS0_.exit94.thread.i1477
  br i1 %.not.i99.i1482, label %.thread153.i1503, label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1487.preheader

_ZL12cmpExtensionPKcS0_.exit105.thread.i1487.preheader: ; preds = %bb.sn, %_ZL12cmpExtensionPKcS0_.exit105.i1504
  br label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1487

_ZL12cmpExtensionPKcS0_.exit105.thread.i1487:     ; preds = %_ZL12cmpExtensionPKcS0_.exit105.thread.i1487.preheader, %bb.so
  %.pn.i106.i1488 = phi ptr [ %.014.i109.i1491, %bb.so ], [ %i.ato, %_ZL12cmpExtensionPKcS0_.exit105.thread.i1487.preheader ]
  %.pn17.i107.i1489 = phi ptr [ %.013.i108.i1490, %bb.so ], [ getelementptr inbounds nuw (i8, ptr @.str.192, i64 4), %_ZL12cmpExtensionPKcS0_.exit105.thread.i1487.preheader ]
  %.013.i108.i1490 = getelementptr inbounds i8, ptr %.pn17.i107.i1489, i64 -1 ; 3 uses
  %.014.i109.i1491 = getelementptr inbounds i8, ptr %.pn.i106.i1488, i64 -1 ; 3 uses
  %.not.i110.i1492 = icmp ult ptr %.013.i108.i1490, @.str.192 ; 2 uses
  %i.auq = icmp ult ptr %.014.i109.i1491, %.2783.jt2
  %or.cond.i111.i1493 = select i1 %.not.i110.i1492, i1 true, i1 %i.auq
  br i1 %or.cond.i111.i1493, label %_ZL12cmpExtensionPKcS0_.exit116.i1502, label %bb.so

bb.so:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit105.thread.i1487
  %i.aur = load i8, ptr %.014.i109.i1491, align 1, !tbaa !17 ; 3 uses
  %i.aus = add i8 %i.aur, -97
  %or.cond.i.i112.i1494 = icmp ult i8 %i.aus, 26
  %i.aut = add nsw i8 %i.aur, -32
  %i.auu = select i1 %or.cond.i.i112.i1494, i8 %i.aut, i8 %i.aur
  %i.auv = load i8, ptr %.013.i108.i1490, align 1, !tbaa !17 ; 3 uses
  %i.auw = add i8 %i.auv, -97
  %or.cond.i18.i113.i1495 = icmp ult i8 %i.auw, 26
  %i.aux = add nsw i8 %i.auv, -32
  %i.auy = select i1 %or.cond.i18.i113.i1495, i8 %i.aux, i8 %i.auv
  %.not16.i114.i1496 = icmp eq i8 %i.auu, %i.auy
  br i1 %.not16.i114.i1496, label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1487, label %_ZL12cmpExtensionPKcS0_.exit116.thread.i1497, !llvm.loop !0

_ZL12cmpExtensionPKcS0_.exit116.i1502:            ; preds = %_ZL12cmpExtensionPKcS0_.exit105.thread.i1487
  br i1 %.not.i110.i1492, label %.thread153.i1503, label %_ZL12cmpExtensionPKcS0_.exit116.thread.i1497

_ZL12cmpExtensionPKcS0_.exit116.thread.i1497:     ; preds = %bb.so, %_ZL12cmpExtensionPKcS0_.exit116.i1502
  %i.auz = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.193)
  br i1 %i.auz, label %.thread154.i1501, label %bb.sp

bb.sp:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit116.thread.i1497
  %i.ava = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.194)
  br i1 %i.ava, label %.thread155.i1500, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.avb = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.195)
  br i1 %i.avb, label %.thread156.i1499.thread, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.avc = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.196)
  br i1 %i.avc, label %.thread157.i1498, label %bb.te

.thread.i1507:                                    ; preds = %_ZL12cmpExtensionPKcS0_.exit.i1506, %bb.si
  %i.avd = invoke noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIfLi3EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.11") align 8 %40, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1513 unwind label %bb.tf

.noexc1513:                                       ; preds = %.thread.i1507
  br i1 %i.avd, label %.thread2262, label %bb.te

.thread152.i:                                     ; preds = %_ZL12cmpExtensionPKcS0_.exit94.i1505, %bb.si
  %i.ave = invoke noundef zeroext i1 @_ZN7msdfgen7saveBmpENS_18BitmapConstSectionIfLi3EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.11") align 8 %40, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1514 unwind label %bb.tf

.noexc1514:                                       ; preds = %.thread152.i
  br i1 %i.ave, label %.thread2262, label %bb.te

.thread153.i1503:                                 ; preds = %_ZL12cmpExtensionPKcS0_.exit105.i1504, %_ZL12cmpExtensionPKcS0_.exit116.i1502, %bb.si
  %i.avf = invoke noundef zeroext i1 @_ZN7msdfgen8saveTiffERKNS_18BitmapConstSectionIfLi3EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1515 unwind label %bb.tf

.noexc1515:                                       ; preds = %.thread153.i1503
  br i1 %i.avf, label %.thread2259, label %bb.te

.thread154.i1501:                                 ; preds = %_ZL12cmpExtensionPKcS0_.exit116.thread.i1497, %bb.si
  %i.avg = invoke noundef zeroext i1 @_ZN7msdfgen8saveRgbaENS_18BitmapConstSectionIfLi3EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.11") align 8 %40, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1516 unwind label %bb.tf

.noexc1516:                                       ; preds = %.thread154.i1501
  br i1 %i.avg, label %.thread2262, label %bb.te

.thread155.i1500:                                 ; preds = %bb.sp, %bb.si
  %i.avh = invoke noundef zeroext i1 @_ZN7msdfgen8saveFl32ILi3EEEbNS_18BitmapConstSectionIfXT_EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.11") align 8 %40, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1517 unwind label %bb.tf

.noexc1517:                                       ; preds = %.thread155.i1500
  br i1 %i.avh, label %.thread2259, label %bb.te

.thread156.i1499:                                 ; preds = %bb.si, %bb.si
  %i.avi = call noalias ptr @fopen(ptr noundef nonnull %.2783.jt2, ptr noundef nonnull @.str.165) ; 9 uses
  %.not83.i1440 = icmp eq ptr %i.avi, null
  br i1 %.not83.i1440, label %bb.te, label %bb.ss

.thread156.i1499.thread:                          ; preds = %bb.sq
  %i.avj = call noalias ptr @fopen(ptr noundef nonnull %.2783.jt2, ptr noundef nonnull @.str.165) ; 2 uses
  %.not83.i14404983 = icmp eq ptr %i.avj, null
  br i1 %.not83.i14404983, label %bb.te, label %.thread4985

bb.ss:                                            ; preds = %.thread156.i1499
  %i.avk = icmp eq i32 %.22091.jt2, 6
  br i1 %i.avk, label %.thread4985, label %bb.st

.thread4985:                                      ; preds = %.thread156.i1499.thread, %bb.ss
  %i.avl = phi ptr [ %i.avi, %bb.ss ], [ %i.avj, %.thread156.i1499.thread ] ; 2 uses
  %i.avm = load ptr, ptr %40, align 8, !tbaa !214
  %i.avn = load i32, ptr %i.ati, align 8, !tbaa !216
  %i.avo = mul nsw i32 %i.avn, 3
  %i.avp = load i32, ptr %i.atj, align 4, !tbaa !217
  %i.avq = load i32, ptr %i.atk, align 8, !tbaa !218
  call fastcc void @_ZL15writeTextBitmapP8_IO_FILEPKfiii(ptr noundef nonnull %i.avl, ptr noundef %i.avm, i32 noundef %i.avo, i32 noundef %i.avp, i32 noundef %i.avq)
  br label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1441

bb.st:                                            ; preds = %bb.ss
  %i.avr = load i32, ptr %i.ati, align 8, !tbaa !216 ; 2 uses
  %i.avs = mul nsw i32 %i.avr, 3
  %i.avt = load i32, ptr %i.atj, align 4, !tbaa !217 ; 3 uses
  %i.avu = icmp sgt i32 %i.avt, 0
  br i1 %i.avu, label %.preheader.lr.ph.i.i1442, label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1441

.preheader.lr.ph.i.i1442:                         ; preds = %bb.st
  %i.avv = load i32, ptr %i.atk, align 8, !tbaa !218
  %i.avw = icmp sgt i32 %i.avr, 0
  %i.avx = sext i32 %i.avv to i64
  br i1 %i.avw, label %.preheader.us.i.preheader.i, label %.preheader.i.i1443

.preheader.us.i.preheader.i:                      ; preds = %.preheader.lr.ph.i.i1442
  %i.avy = load ptr, ptr %40, align 8, !tbaa !214
  br label %.preheader.us.i.i1447

.preheader.us.i.i1447:                            ; preds = %._crit_edge.us.i.i1455, %.preheader.us.i.preheader.i
  %.01318.us.i.i1448 = phi i32 [ %i.awh, %._crit_edge.us.i.i1455 ], [ 0, %.preheader.us.i.preheader.i ]
  %.01417.us.i.i1449 = phi ptr [ %i.awg, %._crit_edge.us.i.i1455 ], [ %i.avy, %.preheader.us.i.preheader.i ] ; 3 uses
  %i.avz = load float, ptr %.01417.us.i.i1449, align 4, !tbaa !23
  %i.awa = fpext float %i.avz to double
  %i.awb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.avi, ptr noundef nonnull @.str.211, double noundef %i.awa) #21 ; 0 uses
  br label %.peel.next.i.i1450

.peel.next.i.i1450:                               ; preds = %.peel.next.i.i1450, %.preheader.us.i.i1447
  %.016.us.i.i1451 = phi i32 [ %i.awf, %.peel.next.i.i1450 ], [ 1, %.preheader.us.i.i1447 ]
  %.01417.us.pn.i.i1452 = phi ptr [ %.01215.us.i.i1453, %.peel.next.i.i1450 ], [ %.01417.us.i.i1449, %.preheader.us.i.i1447 ]
  %.01215.us.i.i1453 = getelementptr inbounds nuw i8, ptr %.01417.us.pn.i.i1452, i64 4 ; 2 uses
  %i.awc = load float, ptr %.01215.us.i.i1453, align 4, !tbaa !23
  %i.awd = fpext float %i.awc to double
  %i.awe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.avi, ptr noundef nonnull @.str.210, double noundef %i.awd) #21 ; 0 uses
  %i.awf = add nuw nsw i32 %.016.us.i.i1451, 1    ; 2 uses
  %exitcond21.not.i.i1454 = icmp eq i32 %i.awf, %i.avs
  br i1 %exitcond21.not.i.i1454, label %._crit_edge.us.i.i1455, label %.peel.next.i.i1450, !llvm.loop !66

._crit_edge.us.i.i1455:                           ; preds = %.peel.next.i.i1450
  %fputc.us.i.i1456 = call i32 @fputc(i32 10, ptr nonnull %i.avi) ; 0 uses
  %i.awg = getelementptr inbounds [4 x i8], ptr %.01417.us.i.i1449, i64 %i.avx
  %i.awh = add nuw nsw i32 %.01318.us.i.i1448, 1  ; 2 uses
  %exitcond23.not.i.i1457 = icmp eq i32 %i.awh, %i.avt
  br i1 %exitcond23.not.i.i1457, label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1441, label %.preheader.us.i.i1447, !llvm.loop !67

.preheader.i.i1443:                               ; preds = %.preheader.lr.ph.i.i1442, %.preheader.i.i1443
  %.01318.i.i1444 = phi i32 [ %i.awi, %.preheader.i.i1443 ], [ 0, %.preheader.lr.ph.i.i1442 ]
  %fputc.i.i1445 = call i32 @fputc(i32 10, ptr nonnull %i.avi) ; 0 uses
  %i.awi = add nuw nsw i32 %.01318.i.i1444, 1     ; 2 uses
  %exitcond.not.i.i1446 = icmp eq i32 %i.awi, %i.avt
  br i1 %exitcond.not.i.i1446, label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1441, label %.preheader.i.i1443, !llvm.loop !67

_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1441: ; preds = %.preheader.i.i1443, %._crit_edge.us.i.i1455, %bb.st, %.thread4985
  %.12210149844987 = phi i32 [ %.22091.jt2, %._crit_edge.us.i.i1455 ], [ 6, %.thread4985 ], [ 7, %bb.st ], [ 7, %.preheader.i.i1443 ]
  %i.awj = phi ptr [ %i.avi, %._crit_edge.us.i.i1455 ], [ %i.avl, %.thread4985 ], [ %i.avi, %bb.st ], [ %i.avi, %.preheader.i.i1443 ]
  %i.awk = call i32 @fclose(ptr noundef nonnull %i.awj) ; 0 uses
  br label %.loopexit2339

.thread157.i1498:                                 ; preds = %bb.sr, %bb.si, %bb.si, %bb.si
  %.112100 = phi i32 [ %.22091.jt2, %bb.si ], [ %.22091.jt2, %bb.si ], [ %.22091.jt2, %bb.si ], [ 8, %bb.sr ] ; 2 uses
  %i.awl = call noalias ptr @fopen(ptr noundef nonnull %.2783.jt2, ptr noundef nonnull @.str.204) ; 8 uses
  %.not82.i1397 = icmp eq ptr %i.awl, null
  br i1 %.not82.i1397, label %bb.te, label %bb.su

bb.su:                                            ; preds = %.thread157.i1498
  switch i32 %.112100, label %default.unreachable2326 [
    i32 8, label %bb.sv
    i32 9, label %bb.sx
    i32 10, label %bb.sz
  ]

bb.sv:                                            ; preds = %bb.su
  %i.awm = load i32, ptr %i.ati, align 8, !tbaa !216 ; 2 uses
  %i.awn = mul nsw i32 %i.awm, 3
  %i.awo = load i32, ptr %i.atj, align 4, !tbaa !217 ; 2 uses
  %i.awp = icmp sgt i32 %i.awo, 0
  br i1 %i.awp, label %.preheader.lr.ph.i117.i1426, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1398

.preheader.lr.ph.i117.i1426:                      ; preds = %bb.sv
  %i.awq = load i32, ptr %i.atk, align 8, !tbaa !218
  %i.awr = icmp sgt i32 %i.awm, 0
  %i.aws = sext i32 %i.awq to i64
  br i1 %i.awr, label %.preheader.i118.preheader.i1427, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1398

.preheader.i118.preheader.i1427:                  ; preds = %.preheader.lr.ph.i117.i1426
  %i.awt = load ptr, ptr %40, align 8, !tbaa !214
  br label %.preheader.i118.i1428

.preheader.i118.i1428:                            ; preds = %._crit_edge.i.i1438, %.preheader.i118.preheader.i1427
  %.01116.i.i1429 = phi i32 [ %i.awv, %._crit_edge.i.i1438 ], [ 0, %.preheader.i118.preheader.i1427 ]
  %.01215.i.i1430 = phi ptr [ %i.awu, %._crit_edge.i.i1438 ], [ %i.awt, %.preheader.i118.preheader.i1427 ] ; 2 uses
  br label %bb.sw

._crit_edge.i.i1438:                              ; preds = %bb.sw
  %i.awu = getelementptr inbounds [4 x i8], ptr %.01215.i.i1430, i64 %i.aws
  %i.awv = add nuw nsw i32 %.01116.i.i1429, 1     ; 2 uses
  %exitcond18.not.i.i1439 = icmp eq i32 %i.awv, %i.awo
  br i1 %exitcond18.not.i.i1439, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1398, label %.preheader.i118.i1428, !llvm.loop !68

bb.sw:                                            ; preds = %bb.sw, %.preheader.i118.i1428
  %.014.i119.i1431 = phi i32 [ 0, %.preheader.i118.i1428 ], [ %i.axg, %bb.sw ]
  %.01013.i.i1432 = phi ptr [ %.01215.i.i1430, %.preheader.i118.i1428 ], [ %i.aww, %bb.sw ] ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %.01013.i.i1432, i64 4
  %i.awx = load float, ptr %.01013.i.i1432, align 4, !tbaa !23 ; 4 uses
  %i.awy = fcmp oge float %i.awx, 0.000000e+00
  %i.awz = fcmp ole float %i.awx, 1.000000e+00
  %or.cond.i.i.i.i1433 = and i1 %i.awy, %i.awz
  %i.axa = fcmp ogt float %i.awx, 0.000000e+00
  %i.axb = uitofp i1 %i.axa to float
  %i.axc = select i1 %or.cond.i.i.i.i1433, float %i.awx, float %i.axb
  %i.axd = call float @llvm.fmuladd.f32(float %i.axc, float -2.550000e+02, float 2.555000e+02)
  %i.axe = fptosi float %i.axd to i32
  %i.axf = xor i32 %i.axe, -1
  %sext.i.i1434 = shl i32 %i.axf, 24
  %chari.i.i1435 = ashr exact i32 %sext.i.i1434, 24
  %fputc.i120.i1436 = call i32 @fputc(i32 %chari.i.i1435, ptr nonnull %i.awl) ; 0 uses
  %i.axg = add nuw nsw i32 %.014.i119.i1431, 1    ; 2 uses
  %exitcond.not.i121.i1437 = icmp eq i32 %i.axg, %i.awn
  br i1 %exitcond.not.i121.i1437, label %._crit_edge.i.i1438, label %bb.sw, !llvm.loop !69

bb.sx:                                            ; preds = %bb.su
  %i.axh = load i32, ptr %i.atj, align 4, !tbaa !217 ; 2 uses
  %i.axi = icmp sgt i32 %i.axh, 0
  br i1 %i.axi, label %.lr.ph.i.i1422, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1398

.lr.ph.i.i1422:                                   ; preds = %bb.sx
  %i.axj = load i32, ptr %i.atk, align 8, !tbaa !218
  %i.axk = load i32, ptr %i.ati, align 8, !tbaa !216
  %i.axl = mul nsw i32 %i.axk, 3
  %i.axm = load ptr, ptr %40, align 8, !tbaa !214
  %i.axn = sext i32 %i.axl to i64
  %i.axo = sext i32 %i.axj to i64
  br label %bb.sy

bb.sy:                                            ; preds = %bb.sy, %.lr.ph.i.i1422
  %.09.i.i1423 = phi i32 [ 0, %.lr.ph.i.i1422 ], [ %i.axr, %bb.sy ]
  %.078.i.i1424 = phi ptr [ %i.axm, %.lr.ph.i.i1422 ], [ %i.axq, %bb.sy ] ; 2 uses
  %i.axp = call i64 @fwrite(ptr noundef %.078.i.i1424, i64 noundef 4, i64 noundef %i.axn, ptr noundef nonnull %i.awl) ; 0 uses
  %i.axq = getelementptr inbounds [4 x i8], ptr %.078.i.i1424, i64 %i.axo
  %i.axr = add nuw nsw i32 %.09.i.i1423, 1        ; 2 uses
  %exitcond.not.i123.i1425 = icmp eq i32 %i.axr, %i.axh
  br i1 %exitcond.not.i123.i1425, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1398, label %bb.sy, !llvm.loop !70

bb.sz:                                            ; preds = %bb.su
  %i.axs = load i32, ptr %i.ati, align 8, !tbaa !216 ; 2 uses
  %i.axt = mul nsw i32 %i.axs, 3
  %i.axu = load i32, ptr %i.atj, align 4, !tbaa !217 ; 2 uses
  %i.axv = icmp sgt i32 %i.axu, 0
  br i1 %i.axv, label %.preheader.lr.ph.i124.i1400, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1398

.preheader.lr.ph.i124.i1400:                      ; preds = %bb.sz
  %i.axw = load i32, ptr %i.atk, align 8, !tbaa !218
  %i.axx = icmp sgt i32 %i.axs, 0
  %i.axy = sext i32 %i.axw to i64
  br i1 %i.axx, label %.preheader.i125.preheader.i1401, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1398

.preheader.i125.preheader.i1401:                  ; preds = %.preheader.lr.ph.i124.i1400
  %i.axz = load ptr, ptr %40, align 8, !tbaa !214
  br label %.preheader.i125.i1402

.preheader.i125.i1402:                            ; preds = %._crit_edge.i129.i1420, %.preheader.i125.preheader.i1401
  %.01521.i.i1403 = phi i32 [ %i.ayb, %._crit_edge.i129.i1420 ], [ 0, %.preheader.i125.preheader.i1401 ]
  %.01620.i.i1404 = phi ptr [ %i.aya, %._crit_edge.i129.i1420 ], [ %i.axz, %.preheader.i125.preheader.i1401 ] ; 2 uses
  br label %bb.ta

._crit_edge.i129.i1420:                           ; preds = %bb.ta
  %i.aya = getelementptr inbounds [4 x i8], ptr %.01620.i.i1404, i64 %i.axy
  %i.ayb = add nuw nsw i32 %.01521.i.i1403, 1     ; 2 uses
  %exitcond24.not.i.i1421 = icmp eq i32 %i.ayb, %i.axu
  br i1 %exitcond24.not.i.i1421, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1398, label %.preheader.i125.i1402, !llvm.loop !71

bb.ta:                                            ; preds = %bb.ta, %.preheader.i125.i1402
  %.01319.i.i1405 = phi i32 [ 0, %.preheader.i125.i1402 ], [ %i.ayg, %bb.ta ]
  %.01418.i.i1406 = phi ptr [ %.01620.i.i1404, %.preheader.i125.i1402 ], [ %i.ayf, %bb.ta ] ; 5 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %.01418.i.i1406, i64 3
  %char.i.i1407 = load i8, ptr %i.ayc, align 1
  %chari.i126.i1408 = sext i8 %char.i.i1407 to i32
  %fputc.i127.i1409 = call i32 @fputc(i32 %chari.i126.i1408, ptr nonnull %i.awl) ; 0 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %.01418.i.i1406, i64 2
  %char.1.i.i1410 = load i8, ptr %i.ayd, align 1
  %chari.1.i.i1411 = sext i8 %char.1.i.i1410 to i32
  %fputc.1.i.i1412 = call i32 @fputc(i32 %chari.1.i.i1411, ptr nonnull %i.awl) ; 0 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %.01418.i.i1406, i64 1
  %char.2.i.i1413 = load i8, ptr %i.aye, align 1
  %chari.2.i.i1414 = sext i8 %char.2.i.i1413 to i32
  %fputc.2.i.i1415 = call i32 @fputc(i32 %chari.2.i.i1414, ptr nonnull %i.awl) ; 0 uses
  %char.3.i.i1416 = load i8, ptr %.01418.i.i1406, align 1
  %chari.3.i.i1417 = sext i8 %char.3.i.i1416 to i32
  %fputc.3.i.i1418 = call i32 @fputc(i32 %chari.3.i.i1417, ptr nonnull %i.awl) ; 0 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %.01418.i.i1406, i64 4
  %i.ayg = add nuw nsw i32 %.01319.i.i1405, 1     ; 2 uses
  %exitcond.not.i128.i1419 = icmp eq i32 %i.ayg, %i.axt
  br i1 %exitcond.not.i128.i1419, label %._crit_edge.i129.i1420, label %bb.ta, !llvm.loop !72

default.unreachable2326:                          ; preds = %bb.su
  unreachable

_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1398:   ; preds = %._crit_edge.i129.i1420, %bb.sy, %._crit_edge.i.i1438, %.preheader.lr.ph.i124.i1400, %bb.sz, %bb.sx, %.preheader.lr.ph.i117.i1426, %bb.sv
  %i.ayh = call i32 @fclose(ptr noundef nonnull %i.awl) ; 0 uses
  br label %.loopexit2339

bb.tb:                                            ; preds = %bb.sh
  switch i32 %.22091.jt2, label %bb.te [
    i32 0, label %bb.tc
    i32 6, label %bb.tc
    i32 7, label %bb.td
  ]

bb.tc:                                            ; preds = %bb.tb, %bb.tb
  %i.ayi = load ptr, ptr @stdout, align 8, !tbaa !139
  call fastcc void @_ZL15writeTextBitmapP8_IO_FILEPKfiii(ptr noundef %i.ayi, ptr noundef %.sroa.01865.1, i32 noundef %i.atl, i32 noundef %.sroa.271886.0, i32 noundef %i.atl)
  br label %.loopexit2339

bb.td:                                            ; preds = %bb.tb
  %i.ayj = load ptr, ptr @stdout, align 8, !tbaa !139 ; 4 uses
  %i.ayk = icmp sgt i32 %.sroa.271886.0, 0
  br i1 %i.ayk, label %.preheader.lr.ph.i130.i1508, label %.thread2259

.preheader.lr.ph.i130.i1508:                      ; preds = %bb.td
  %i.ayl = icmp sgt i32 %.sroa.171877.0, 0
  %i.aym = sext i32 %i.atl to i64
  br i1 %i.ayl, label %.preheader.us.i136.i, label %.preheader.i131.i1509

.preheader.us.i136.i:                             ; preds = %.preheader.lr.ph.i130.i1508, %._crit_edge.us.i144.i
  %.01318.us.i137.i = phi i32 [ %i.ayv, %._crit_edge.us.i144.i ], [ 0, %.preheader.lr.ph.i130.i1508 ]
  %.01417.us.i138.i = phi ptr [ %i.ayu, %._crit_edge.us.i144.i ], [ %.sroa.01865.1, %.preheader.lr.ph.i130.i1508 ] ; 3 uses
  %i.ayn = load float, ptr %.01417.us.i138.i, align 4, !tbaa !23
  %i.ayo = fpext float %i.ayn to double
  %i.ayp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ayj, ptr noundef nonnull @.str.211, double noundef %i.ayo) #21 ; 0 uses
  br label %.peel.next.i139.i

.peel.next.i139.i:                                ; preds = %.peel.next.i139.i, %.preheader.us.i136.i
  %.016.us.i140.i = phi i32 [ %i.ayt, %.peel.next.i139.i ], [ 1, %.preheader.us.i136.i ]
  %.01417.us.pn.i141.i = phi ptr [ %.01215.us.i142.i, %.peel.next.i139.i ], [ %.01417.us.i138.i, %.preheader.us.i136.i ]
  %.01215.us.i142.i = getelementptr inbounds nuw i8, ptr %.01417.us.pn.i141.i, i64 4 ; 2 uses
  %i.ayq = load float, ptr %.01215.us.i142.i, align 4, !tbaa !23
  %i.ayr = fpext float %i.ayq to double
  %i.ays = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ayj, ptr noundef nonnull @.str.210, double noundef %i.ayr) #21 ; 0 uses
  %i.ayt = add nuw nsw i32 %.016.us.i140.i, 1     ; 2 uses
  %exitcond21.not.i143.i = icmp eq i32 %i.ayt, %i.atl
  br i1 %exitcond21.not.i143.i, label %._crit_edge.us.i144.i, label %.peel.next.i139.i, !llvm.loop !66

._crit_edge.us.i144.i:                            ; preds = %.peel.next.i139.i
  %fputc.us.i145.i = call i32 @fputc(i32 10, ptr %i.ayj) ; 0 uses
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %.01417.us.i138.i, i64 %i.aym
  %i.ayv = add nuw nsw i32 %.01318.us.i137.i, 1   ; 2 uses
  %exitcond23.not.i146.i = icmp eq i32 %i.ayv, %.sroa.271886.0
  br i1 %exitcond23.not.i146.i, label %.loopexit2339.thread, label %.preheader.us.i136.i, !llvm.loop !67

.loopexit2339.thread:                             ; preds = %._crit_edge.us.i144.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br i1 %i.vh, label %bb.tj, label %bb.tm

.preheader.i131.i1509:                            ; preds = %.preheader.lr.ph.i130.i1508, %.preheader.i131.i1509
  %.01318.i132.i1510 = phi i32 [ %i.ayw, %.preheader.i131.i1509 ], [ 0, %.preheader.lr.ph.i130.i1508 ]
  %fputc.i133.i1511 = call i32 @fputc(i32 10, ptr %i.ayj) ; 0 uses
  %i.ayw = add nuw nsw i32 %.01318.i132.i1510, 1  ; 2 uses
  %exitcond.not.i134.i1512 = icmp eq i32 %i.ayw, %.sroa.271886.0
  br i1 %exitcond.not.i134.i1512, label %.thread2259, label %.preheader.i131.i1509, !llvm.loop !67

bb.te:                                            ; preds = %.thread156.i1499.thread, %bb.sr, %.thread156.i1499, %.thread157.i1498, %bb.tb, %.noexc1513, %.noexc1514, %.noexc1515, %.noexc1516, %.noexc1517
  %.2.i1399 = phi ptr [ @.str.206, %bb.tb ], [ @.str.198, %.noexc1513 ], [ @.str.199, %.noexc1514 ], [ @.str.200, %.noexc1515 ], [ @.str.201, %.noexc1516 ], [ @.str.202, %.noexc1517 ], [ @.str.197, %bb.sr ], [ @.str.203, %.thread156.i1499 ], [ @.str.205, %.thread157.i1498 ], [ @.str.203, %.thread156.i1499.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  %i.ayx = load ptr, ptr @stderr, align 8, !tbaa !139
  %i.ayy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ayx, ptr noundef nonnull @.str.179, ptr noundef nonnull %.2.i1399) #24 ; 0 uses
  br label %.thread2246

bb.tf:                                            ; preds = %.thread155.i1500, %.thread154.i1501, %.thread153.i1503, %.thread152.i, %.thread.i1507
  %i.ayz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br label %bb.wr

.thread2259:                                      ; preds = %.preheader.i131.i1509, %bb.td, %.noexc1515, %.noexc1517
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br i1 %i.vh, label %bb.tj, label %bb.tm

.thread2262:                                      ; preds = %.noexc1513, %.noexc1514, %.noexc1516
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br label %bb.tg

.loopexit2339:                                    ; preds = %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1441, %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1398, %bb.tc, %bb.si
  %.182107.ph = phi i32 [ %.22091.jt2, %bb.si ], [ %.112100, %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1398 ], [ %.22091.jt2, %bb.tc ], [ %.12210149844987, %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1441 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  switch i32 %.182107.ph, label %_ZL12is8bitFormat6Format.exit1518 [
    i32 6, label %bb.tg
    i32 4, label %bb.tg
    i32 2, label %bb.tg
    i32 1, label %bb.tg
    i32 8, label %bb.tg
  ]

bb.tg:                                            ; preds = %.loopexit2339, %.loopexit2339, %.loopexit2339, %.loopexit2339, %.loopexit2339, %.thread2262
  %i.aza = icmp ne ptr %.1791.jt2, null
  %i.azb = icmp ne ptr %.1789.jt2, null
  %or.cond76 = select i1 %i.aza, i1 true, i1 %i.azb
  %or.cond78 = select i1 %or.cond76, i1 true, i1 %i.vh
  br i1 %or.cond78, label %bb.th, label %.thread2246

bb.th:                                            ; preds = %bb.tg
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  store ptr %.sroa.01865.1, ptr %41, align 8, !tbaa !182, !alias.scope !224
  %i.azc = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i32 %.sroa.171877.0, ptr %i.azc, align 8, !tbaa !184, !alias.scope !224
  %i.azd = getelementptr inbounds nuw i8, ptr %41, i64 12
  store i32 %.sroa.271886.0, ptr %i.azd, align 4, !tbaa !185, !alias.scope !224
  %i.aze = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i32 %i.atl, ptr %i.aze, align 8, !tbaa !186, !alias.scope !224
  %i.azf = getelementptr inbounds nuw i8, ptr %41, i64 20
  store i32 0, ptr %i.azf, align 4, !tbaa !187, !alias.scope !224
  invoke void @_ZN7msdfgen12simulate8bitERKNS_13BitmapSectionIfLi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %41)
          to label %.split4990 unwind label %bb.ti

.split4990:                                       ; preds = %bb.th
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br i1 %i.vh, label %bb.tj, label %bb.tm

bb.ti:                                            ; preds = %bb.th
  %i.azg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br label %bb.wr

_ZL12is8bitFormat6Format.exit1518:                ; preds = %.loopexit2339
  br i1 %i.vh, label %bb.tj, label %bb.tm

bb.tj:                                            ; preds = %.split4990, %.loopexit2339.thread, %.thread2259, %_ZL12is8bitFormat6Format.exit1518
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  store ptr %.sroa.01865.1, ptr %42, align 8, !tbaa !214, !alias.scope !225
  %i.azh = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i32 %.sroa.171877.0, ptr %i.azh, align 8, !tbaa !216, !alias.scope !225
  %i.azi = getelementptr inbounds nuw i8, ptr %42, i64 12
  store i32 %.sroa.271886.0, ptr %i.azi, align 4, !tbaa !217, !alias.scope !225
  %i.azj = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i32 %i.atl, ptr %i.azj, align 8, !tbaa !218, !alias.scope !225
  %i.azk = getelementptr inbounds nuw i8, ptr %42, i64 20
  store i32 0, ptr %i.azk, align 4, !tbaa !219, !alias.scope !225
  %i.azl = invoke noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 19, i32 noundef %.2778.jt2)
          to label %bb.tk unwind label %bb.tl

bb.tk:                                            ; preds = %bb.tj
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  %i.azm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.180, double noundef %i.azl) ; 0 uses
  br label %bb.tm

bb.tl:                                            ; preds = %bb.tj
end_hunk_0
begin_hunk_1_@main:bb.a

bb.um:                                            ; preds = %bb.ul
  %i.bcq = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.2783.jt2) #22
  %i.bcr = getelementptr inbounds nuw i8, ptr %.2783.jt2, i64 %i.bcq ; 4 uses
  br label %bb.un

bb.un:                                            ; preds = %bb.uo, %bb.um
  %.pn.i.i1616 = phi ptr [ %i.bcr, %bb.um ], [ %.014.i.i1619, %bb.uo ]
  %.pn17.i.i1617 = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.181, i64 4), %bb.um ], [ %.013.i.i1618, %bb.uo ]
  %.013.i.i1618 = getelementptr inbounds i8, ptr %.pn17.i.i1617, i64 -1 ; 3 uses
  %.014.i.i1619 = getelementptr inbounds i8, ptr %.pn.i.i1616, i64 -1 ; 3 uses
  %.not.i.i1620 = icmp ult ptr %.013.i.i1618, @.str.181 ; 2 uses
  %i.bcs = icmp ult ptr %.014.i.i1619, %.2783.jt2
  %or.cond.i.i1621 = select i1 %.not.i.i1620, i1 true, i1 %i.bcs
  br i1 %or.cond.i.i1621, label %_ZL12cmpExtensionPKcS0_.exit.i1665, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.bct = load i8, ptr %.014.i.i1619, align 1, !tbaa !17 ; 3 uses
  %i.bcu = add i8 %i.bct, -97
  %or.cond.i.i.i1622 = icmp ult i8 %i.bcu, 26
  %i.bcv = add nsw i8 %i.bct, -32
  %i.bcw = select i1 %or.cond.i.i.i1622, i8 %i.bcv, i8 %i.bct
  %i.bcx = load i8, ptr %.013.i.i1618, align 1, !tbaa !17 ; 3 uses
  %i.bcy = add i8 %i.bcx, -97
  %or.cond.i18.i.i1623 = icmp ult i8 %i.bcy, 26
  %i.bcz = add nsw i8 %i.bcx, -32
  %i.bda = select i1 %or.cond.i18.i.i1623, i8 %i.bcz, i8 %i.bcx
  %.not16.i.i1624 = icmp eq i8 %i.bcw, %i.bda
  br i1 %.not16.i.i1624, label %bb.un, label %_ZL12cmpExtensionPKcS0_.exit.thread.i1625.preheader, !llvm.loop !0

_ZL12cmpExtensionPKcS0_.exit.i1665:               ; preds = %bb.un
  br i1 %.not.i.i1620, label %.thread.i1666, label %_ZL12cmpExtensionPKcS0_.exit.thread.i1625.preheader

_ZL12cmpExtensionPKcS0_.exit.thread.i1625.preheader: ; preds = %bb.uo, %_ZL12cmpExtensionPKcS0_.exit.i1665
  br label %_ZL12cmpExtensionPKcS0_.exit.thread.i1625

_ZL12cmpExtensionPKcS0_.exit.thread.i1625:        ; preds = %_ZL12cmpExtensionPKcS0_.exit.thread.i1625.preheader, %bb.up
  %.pn.i84.i1626 = phi ptr [ %.014.i87.i1629, %bb.up ], [ %i.bcr, %_ZL12cmpExtensionPKcS0_.exit.thread.i1625.preheader ]
  %.pn17.i85.i1627 = phi ptr [ %.013.i86.i1628, %bb.up ], [ getelementptr inbounds nuw (i8, ptr @.str.190, i64 4), %_ZL12cmpExtensionPKcS0_.exit.thread.i1625.preheader ]
  %.013.i86.i1628 = getelementptr inbounds i8, ptr %.pn17.i85.i1627, i64 -1 ; 3 uses
  %.014.i87.i1629 = getelementptr inbounds i8, ptr %.pn.i84.i1626, i64 -1 ; 3 uses
  %.not.i88.i1630 = icmp ult ptr %.013.i86.i1628, @.str.190 ; 2 uses
  %i.bdb = icmp ult ptr %.014.i87.i1629, %.2783.jt2
  %or.cond.i89.i1631 = select i1 %.not.i88.i1630, i1 true, i1 %i.bdb
  br i1 %or.cond.i89.i1631, label %_ZL12cmpExtensionPKcS0_.exit94.i1663, label %bb.up

bb.up:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit.thread.i1625
  %i.bdc = load i8, ptr %.014.i87.i1629, align 1, !tbaa !17 ; 3 uses
  %i.bdd = add i8 %i.bdc, -97
  %or.cond.i.i90.i1632 = icmp ult i8 %i.bdd, 26
  %i.bde = add nsw i8 %i.bdc, -32
  %i.bdf = select i1 %or.cond.i.i90.i1632, i8 %i.bde, i8 %i.bdc
  %i.bdg = load i8, ptr %.013.i86.i1628, align 1, !tbaa !17 ; 3 uses
  %i.bdh = add i8 %i.bdg, -97
  %or.cond.i18.i91.i1633 = icmp ult i8 %i.bdh, 26
  %i.bdi = add nsw i8 %i.bdg, -32
  %i.bdj = select i1 %or.cond.i18.i91.i1633, i8 %i.bdi, i8 %i.bdg
  %.not16.i92.i1634 = icmp eq i8 %i.bdf, %i.bdj
  br i1 %.not16.i92.i1634, label %_ZL12cmpExtensionPKcS0_.exit.thread.i1625, label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1635.preheader, !llvm.loop !0

_ZL12cmpExtensionPKcS0_.exit94.i1663:             ; preds = %_ZL12cmpExtensionPKcS0_.exit.thread.i1625
  br i1 %.not.i88.i1630, label %.thread152.i1664, label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1635.preheader

_ZL12cmpExtensionPKcS0_.exit94.thread.i1635.preheader: ; preds = %bb.up, %_ZL12cmpExtensionPKcS0_.exit94.i1663
  br label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1635

_ZL12cmpExtensionPKcS0_.exit94.thread.i1635:      ; preds = %_ZL12cmpExtensionPKcS0_.exit94.thread.i1635.preheader, %bb.uq
  %.pn.i95.i1636 = phi ptr [ %.014.i98.i1639, %bb.uq ], [ %i.bcr, %_ZL12cmpExtensionPKcS0_.exit94.thread.i1635.preheader ]
  %.pn17.i96.i1637 = phi ptr [ %.013.i97.i1638, %bb.uq ], [ getelementptr inbounds nuw (i8, ptr @.str.191, i64 5), %_ZL12cmpExtensionPKcS0_.exit94.thread.i1635.preheader ]
  %.013.i97.i1638 = getelementptr inbounds i8, ptr %.pn17.i96.i1637, i64 -1 ; 3 uses
  %.014.i98.i1639 = getelementptr inbounds i8, ptr %.pn.i95.i1636, i64 -1 ; 3 uses
  %.not.i99.i1640 = icmp ult ptr %.013.i97.i1638, @.str.191 ; 2 uses
  %i.bdk = icmp ult ptr %.014.i98.i1639, %.2783.jt2
  %or.cond.i100.i1641 = select i1 %.not.i99.i1640, i1 true, i1 %i.bdk
  br i1 %or.cond.i100.i1641, label %_ZL12cmpExtensionPKcS0_.exit105.i1662, label %bb.uq

bb.uq:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit94.thread.i1635
  %i.bdl = load i8, ptr %.014.i98.i1639, align 1, !tbaa !17 ; 3 uses
  %i.bdm = add i8 %i.bdl, -97
  %or.cond.i.i101.i1642 = icmp ult i8 %i.bdm, 26
  %i.bdn = add nsw i8 %i.bdl, -32
  %i.bdo = select i1 %or.cond.i.i101.i1642, i8 %i.bdn, i8 %i.bdl
  %i.bdp = load i8, ptr %.013.i97.i1638, align 1, !tbaa !17 ; 3 uses
  %i.bdq = add i8 %i.bdp, -97
  %or.cond.i18.i102.i1643 = icmp ult i8 %i.bdq, 26
  %i.bdr = add nsw i8 %i.bdp, -32
  %i.bds = select i1 %or.cond.i18.i102.i1643, i8 %i.bdr, i8 %i.bdp
  %.not16.i103.i1644 = icmp eq i8 %i.bdo, %i.bds
  br i1 %.not16.i103.i1644, label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1635, label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1645.preheader, !llvm.loop !0

_ZL12cmpExtensionPKcS0_.exit105.i1662:            ; preds = %_ZL12cmpExtensionPKcS0_.exit94.thread.i1635
  br i1 %.not.i99.i1640, label %.thread153.i1661, label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1645.preheader

_ZL12cmpExtensionPKcS0_.exit105.thread.i1645.preheader: ; preds = %bb.uq, %_ZL12cmpExtensionPKcS0_.exit105.i1662
  br label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1645

_ZL12cmpExtensionPKcS0_.exit105.thread.i1645:     ; preds = %_ZL12cmpExtensionPKcS0_.exit105.thread.i1645.preheader, %bb.ur
  %.pn.i106.i1646 = phi ptr [ %.014.i109.i1649, %bb.ur ], [ %i.bcr, %_ZL12cmpExtensionPKcS0_.exit105.thread.i1645.preheader ]
  %.pn17.i107.i1647 = phi ptr [ %.013.i108.i1648, %bb.ur ], [ getelementptr inbounds nuw (i8, ptr @.str.192, i64 4), %_ZL12cmpExtensionPKcS0_.exit105.thread.i1645.preheader ]
  %.013.i108.i1648 = getelementptr inbounds i8, ptr %.pn17.i107.i1647, i64 -1 ; 3 uses
  %.014.i109.i1649 = getelementptr inbounds i8, ptr %.pn.i106.i1646, i64 -1 ; 3 uses
  %.not.i110.i1650 = icmp ult ptr %.013.i108.i1648, @.str.192 ; 2 uses
  %i.bdt = icmp ult ptr %.014.i109.i1649, %.2783.jt2
  %or.cond.i111.i1651 = select i1 %.not.i110.i1650, i1 true, i1 %i.bdt
  br i1 %or.cond.i111.i1651, label %_ZL12cmpExtensionPKcS0_.exit116.i1660, label %bb.ur

bb.ur:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit105.thread.i1645
  %i.bdu = load i8, ptr %.014.i109.i1649, align 1, !tbaa !17 ; 3 uses
  %i.bdv = add i8 %i.bdu, -97
  %or.cond.i.i112.i1652 = icmp ult i8 %i.bdv, 26
  %i.bdw = add nsw i8 %i.bdu, -32
  %i.bdx = select i1 %or.cond.i.i112.i1652, i8 %i.bdw, i8 %i.bdu
  %i.bdy = load i8, ptr %.013.i108.i1648, align 1, !tbaa !17 ; 3 uses
  %i.bdz = add i8 %i.bdy, -97
  %or.cond.i18.i113.i1653 = icmp ult i8 %i.bdz, 26
  %i.bea = add nsw i8 %i.bdy, -32
  %i.beb = select i1 %or.cond.i18.i113.i1653, i8 %i.bea, i8 %i.bdy
  %.not16.i114.i1654 = icmp eq i8 %i.bdx, %i.beb
  br i1 %.not16.i114.i1654, label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1645, label %_ZL12cmpExtensionPKcS0_.exit116.thread.i1655, !llvm.loop !0

_ZL12cmpExtensionPKcS0_.exit116.i1660:            ; preds = %_ZL12cmpExtensionPKcS0_.exit105.thread.i1645
  br i1 %.not.i110.i1650, label %.thread153.i1661, label %_ZL12cmpExtensionPKcS0_.exit116.thread.i1655

_ZL12cmpExtensionPKcS0_.exit116.thread.i1655:     ; preds = %bb.ur, %_ZL12cmpExtensionPKcS0_.exit116.i1660
  %i.bec = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.193)
  br i1 %i.bec, label %.thread154.i1659, label %bb.us

bb.us:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit116.thread.i1655
  %i.bed = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.194)
  br i1 %i.bed, label %.thread155.i1658, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  %i.bee = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.195)
  br i1 %i.bee, label %.thread156.i1657.thread, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.bef = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.196)
  br i1 %i.bef, label %.thread157.i1656, label %bb.vh

.thread.i1666:                                    ; preds = %_ZL12cmpExtensionPKcS0_.exit.i1665, %bb.ul
  %i.beg = invoke noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIfLi4EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.12") align 8 %49, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1684 unwind label %bb.vi

.noexc1684:                                       ; preds = %.thread.i1666
  br i1 %i.beg, label %.thread2284, label %bb.vh

.thread152.i1664:                                 ; preds = %_ZL12cmpExtensionPKcS0_.exit94.i1663, %bb.ul
  %i.beh = invoke noundef zeroext i1 @_ZN7msdfgen7saveBmpENS_18BitmapConstSectionIfLi4EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.12") align 8 %49, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1685 unwind label %bb.vi

.noexc1685:                                       ; preds = %.thread152.i1664
  br i1 %i.beh, label %.thread2284, label %bb.vh

.thread153.i1661:                                 ; preds = %_ZL12cmpExtensionPKcS0_.exit105.i1662, %_ZL12cmpExtensionPKcS0_.exit116.i1660, %bb.ul
  %i.bei = invoke noundef zeroext i1 @_ZN7msdfgen8saveTiffERKNS_18BitmapConstSectionIfLi4EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1686 unwind label %bb.vi

.noexc1686:                                       ; preds = %.thread153.i1661
  br i1 %i.bei, label %.thread2281, label %bb.vh

.thread154.i1659:                                 ; preds = %_ZL12cmpExtensionPKcS0_.exit116.thread.i1655, %bb.ul
  %i.bej = invoke noundef zeroext i1 @_ZN7msdfgen8saveRgbaENS_18BitmapConstSectionIfLi4EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.12") align 8 %49, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1687 unwind label %bb.vi

.noexc1687:                                       ; preds = %.thread154.i1659
  br i1 %i.bej, label %.thread2284, label %bb.vh

.thread155.i1658:                                 ; preds = %bb.us, %bb.ul
  %i.bek = invoke noundef zeroext i1 @_ZN7msdfgen8saveFl32ILi4EEEbNS_18BitmapConstSectionIfXT_EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.12") align 8 %49, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1688 unwind label %bb.vi

.noexc1688:                                       ; preds = %.thread155.i1658
  br i1 %i.bek, label %.thread2281, label %bb.vh

.thread156.i1657:                                 ; preds = %bb.ul, %bb.ul
  %i.bel = call noalias ptr @fopen(ptr noundef nonnull %.2783.jt2, ptr noundef nonnull @.str.165) ; 9 uses
  %.not83.i1597 = icmp eq ptr %i.bel, null
  br i1 %.not83.i1597, label %bb.vh, label %bb.uv

.thread156.i1657.thread:                          ; preds = %bb.ut
  %i.bem = call noalias ptr @fopen(ptr noundef nonnull %.2783.jt2, ptr noundef nonnull @.str.165) ; 2 uses
  %.not83.i15974992 = icmp eq ptr %i.bem, null
  br i1 %.not83.i15974992, label %bb.vh, label %.thread4994

bb.uv:                                            ; preds = %.thread156.i1657
  %i.ben = icmp eq i32 %.22091.jt2, 6
  br i1 %i.ben, label %.thread4994, label %bb.uw

.thread4994:                                      ; preds = %.thread156.i1657.thread, %bb.uv
  %i.beo = phi ptr [ %i.bel, %bb.uv ], [ %i.bem, %.thread156.i1657.thread ] ; 2 uses
  %i.bep = load ptr, ptr %49, align 8, !tbaa !233
  %i.beq = load i32, ptr %i.bcl, align 8, !tbaa !235
  %i.ber = shl nsw i32 %i.beq, 2
  %i.bes = load i32, ptr %i.bcm, align 4, !tbaa !236
  %i.bet = load i32, ptr %i.bcn, align 8, !tbaa !237
  call fastcc void @_ZL15writeTextBitmapP8_IO_FILEPKfiii(ptr noundef nonnull %i.beo, ptr noundef %i.bep, i32 noundef %i.ber, i32 noundef %i.bes, i32 noundef %i.bet)
  br label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1598

bb.uw:                                            ; preds = %bb.uv
  %i.beu = load i32, ptr %i.bcl, align 8, !tbaa !235 ; 2 uses
  %i.bev = shl nsw i32 %i.beu, 2
  %i.bew = load i32, ptr %i.bcm, align 4, !tbaa !236 ; 3 uses
  %i.bex = icmp sgt i32 %i.bew, 0
  br i1 %i.bex, label %.preheader.lr.ph.i.i1599, label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1598

.preheader.lr.ph.i.i1599:                         ; preds = %bb.uw
  %i.bey = load i32, ptr %i.bcn, align 8, !tbaa !237
  %i.bez = icmp sgt i32 %i.beu, 0
  %i.bfa = sext i32 %i.bey to i64
  br i1 %i.bez, label %.preheader.us.i.preheader.i1604, label %.preheader.i.i1600

.preheader.us.i.preheader.i1604:                  ; preds = %.preheader.lr.ph.i.i1599
  %i.bfb = load ptr, ptr %49, align 8, !tbaa !233
  br label %.preheader.us.i.i1605

.preheader.us.i.i1605:                            ; preds = %._crit_edge.us.i.i1613, %.preheader.us.i.preheader.i1604
  %.01318.us.i.i1606 = phi i32 [ %i.bfk, %._crit_edge.us.i.i1613 ], [ 0, %.preheader.us.i.preheader.i1604 ]
  %.01417.us.i.i1607 = phi ptr [ %i.bfj, %._crit_edge.us.i.i1613 ], [ %i.bfb, %.preheader.us.i.preheader.i1604 ] ; 3 uses
  %i.bfc = load float, ptr %.01417.us.i.i1607, align 4, !tbaa !23
  %i.bfd = fpext float %i.bfc to double
  %i.bfe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bel, ptr noundef nonnull @.str.211, double noundef %i.bfd) #21 ; 0 uses
  br label %.peel.next.i.i1608

.peel.next.i.i1608:                               ; preds = %.peel.next.i.i1608, %.preheader.us.i.i1605
  %.016.us.i.i1609 = phi i32 [ %i.bfi, %.peel.next.i.i1608 ], [ 1, %.preheader.us.i.i1605 ]
  %.01417.us.pn.i.i1610 = phi ptr [ %.01215.us.i.i1611, %.peel.next.i.i1608 ], [ %.01417.us.i.i1607, %.preheader.us.i.i1605 ]
  %.01215.us.i.i1611 = getelementptr inbounds nuw i8, ptr %.01417.us.pn.i.i1610, i64 4 ; 2 uses
  %i.bff = load float, ptr %.01215.us.i.i1611, align 4, !tbaa !23
  %i.bfg = fpext float %i.bff to double
  %i.bfh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bel, ptr noundef nonnull @.str.210, double noundef %i.bfg) #21 ; 0 uses
  %i.bfi = add nuw nsw i32 %.016.us.i.i1609, 1    ; 2 uses
  %exitcond21.not.i.i1612 = icmp eq i32 %i.bfi, %i.bev
  br i1 %exitcond21.not.i.i1612, label %._crit_edge.us.i.i1613, label %.peel.next.i.i1608, !llvm.loop !66

._crit_edge.us.i.i1613:                           ; preds = %.peel.next.i.i1608
  %fputc.us.i.i1614 = call i32 @fputc(i32 10, ptr nonnull %i.bel) ; 0 uses
  %i.bfj = getelementptr inbounds [4 x i8], ptr %.01417.us.i.i1607, i64 %i.bfa
  %i.bfk = add nuw nsw i32 %.01318.us.i.i1606, 1  ; 2 uses
  %exitcond23.not.i.i1615 = icmp eq i32 %i.bfk, %i.bew
  br i1 %exitcond23.not.i.i1615, label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1598, label %.preheader.us.i.i1605, !llvm.loop !67

.preheader.i.i1600:                               ; preds = %.preheader.lr.ph.i.i1599, %.preheader.i.i1600
  %.01318.i.i1601 = phi i32 [ %i.bfl, %.preheader.i.i1600 ], [ 0, %.preheader.lr.ph.i.i1599 ]
  %fputc.i.i1602 = call i32 @fputc(i32 10, ptr nonnull %i.bel) ; 0 uses
  %i.bfl = add nuw nsw i32 %.01318.i.i1601, 1     ; 2 uses
  %exitcond.not.i.i1603 = icmp eq i32 %i.bfl, %i.bew
  br i1 %exitcond.not.i.i1603, label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1598, label %.preheader.i.i1600, !llvm.loop !67

_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1598: ; preds = %.preheader.i.i1600, %._crit_edge.us.i.i1613, %bb.uw, %.thread4994
  %.20210949934996 = phi i32 [ %.22091.jt2, %._crit_edge.us.i.i1613 ], [ 6, %.thread4994 ], [ 7, %bb.uw ], [ 7, %.preheader.i.i1600 ]
  %i.bfm = phi ptr [ %i.bel, %._crit_edge.us.i.i1613 ], [ %i.beo, %.thread4994 ], [ %i.bel, %bb.uw ], [ %i.bel, %.preheader.i.i1600 ]
  %i.bfn = call i32 @fclose(ptr noundef nonnull %i.bfm) ; 0 uses
  br label %.loopexit2343

.thread157.i1656:                                 ; preds = %bb.uu, %bb.ul, %bb.ul, %bb.ul
  %.192108 = phi i32 [ %.22091.jt2, %bb.ul ], [ %.22091.jt2, %bb.ul ], [ %.22091.jt2, %bb.ul ], [ 8, %bb.uu ] ; 2 uses
  %i.bfo = call noalias ptr @fopen(ptr noundef nonnull %.2783.jt2, ptr noundef nonnull @.str.204) ; 8 uses
  %.not82.i1554 = icmp eq ptr %i.bfo, null
  br i1 %.not82.i1554, label %bb.vh, label %bb.ux

bb.ux:                                            ; preds = %.thread157.i1656
  switch i32 %.192108, label %default.unreachable2328 [
    i32 8, label %bb.uy
    i32 9, label %bb.va
    i32 10, label %bb.vc
  ]

bb.uy:                                            ; preds = %bb.ux
  %i.bfp = load i32, ptr %i.bcl, align 8, !tbaa !235 ; 2 uses
  %i.bfq = shl nsw i32 %i.bfp, 2
  %i.bfr = load i32, ptr %i.bcm, align 4, !tbaa !236 ; 2 uses
  %i.bfs = icmp sgt i32 %i.bfr, 0
  br i1 %i.bfs, label %.preheader.lr.ph.i117.i1583, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1555

.preheader.lr.ph.i117.i1583:                      ; preds = %bb.uy
  %i.bft = load i32, ptr %i.bcn, align 8, !tbaa !237
  %i.bfu = icmp sgt i32 %i.bfp, 0
  %i.bfv = sext i32 %i.bft to i64
  br i1 %i.bfu, label %.preheader.i118.preheader.i1584, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1555

.preheader.i118.preheader.i1584:                  ; preds = %.preheader.lr.ph.i117.i1583
  %i.bfw = load ptr, ptr %49, align 8, !tbaa !233
  br label %.preheader.i118.i1585

.preheader.i118.i1585:                            ; preds = %._crit_edge.i.i1595, %.preheader.i118.preheader.i1584
  %.01116.i.i1586 = phi i32 [ %i.bfy, %._crit_edge.i.i1595 ], [ 0, %.preheader.i118.preheader.i1584 ]
  %.01215.i.i1587 = phi ptr [ %i.bfx, %._crit_edge.i.i1595 ], [ %i.bfw, %.preheader.i118.preheader.i1584 ] ; 2 uses
  br label %bb.uz

._crit_edge.i.i1595:                              ; preds = %bb.uz
  %i.bfx = getelementptr inbounds [4 x i8], ptr %.01215.i.i1587, i64 %i.bfv
  %i.bfy = add nuw nsw i32 %.01116.i.i1586, 1     ; 2 uses
  %exitcond18.not.i.i1596 = icmp eq i32 %i.bfy, %i.bfr
  br i1 %exitcond18.not.i.i1596, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1555, label %.preheader.i118.i1585, !llvm.loop !68

bb.uz:                                            ; preds = %bb.uz, %.preheader.i118.i1585
  %.014.i119.i1588 = phi i32 [ 0, %.preheader.i118.i1585 ], [ %i.bgj, %bb.uz ]
  %.01013.i.i1589 = phi ptr [ %.01215.i.i1587, %.preheader.i118.i1585 ], [ %i.bfz, %bb.uz ] ; 2 uses
  %i.bfz = getelementptr inbounds nuw i8, ptr %.01013.i.i1589, i64 4
  %i.bga = load float, ptr %.01013.i.i1589, align 4, !tbaa !23 ; 4 uses
  %i.bgb = fcmp oge float %i.bga, 0.000000e+00
  %i.bgc = fcmp ole float %i.bga, 1.000000e+00
  %or.cond.i.i.i.i1590 = and i1 %i.bgb, %i.bgc
  %i.bgd = fcmp ogt float %i.bga, 0.000000e+00
  %i.bge = uitofp i1 %i.bgd to float
  %i.bgf = select i1 %or.cond.i.i.i.i1590, float %i.bga, float %i.bge
  %i.bgg = call float @llvm.fmuladd.f32(float %i.bgf, float -2.550000e+02, float 2.555000e+02)
  %i.bgh = fptosi float %i.bgg to i32
  %i.bgi = xor i32 %i.bgh, -1
  %sext.i.i1591 = shl i32 %i.bgi, 24
  %chari.i.i1592 = ashr exact i32 %sext.i.i1591, 24
  %fputc.i120.i1593 = call i32 @fputc(i32 %chari.i.i1592, ptr nonnull %i.bfo) ; 0 uses
  %i.bgj = add nuw nsw i32 %.014.i119.i1588, 1    ; 2 uses
  %exitcond.not.i121.i1594 = icmp eq i32 %i.bgj, %i.bfq
  br i1 %exitcond.not.i121.i1594, label %._crit_edge.i.i1595, label %bb.uz, !llvm.loop !69

bb.va:                                            ; preds = %bb.ux
  %i.bgk = load i32, ptr %i.bcm, align 4, !tbaa !236 ; 2 uses
  %i.bgl = icmp sgt i32 %i.bgk, 0
  br i1 %i.bgl, label %.lr.ph.i.i1579, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1555

.lr.ph.i.i1579:                                   ; preds = %bb.va
  %i.bgm = load i32, ptr %i.bcn, align 8, !tbaa !237
  %i.bgn = load i32, ptr %i.bcl, align 8, !tbaa !235
  %i.bgo = shl nsw i32 %i.bgn, 2
  %i.bgp = load ptr, ptr %49, align 8, !tbaa !233
  %i.bgq = sext i32 %i.bgo to i64
  %i.bgr = sext i32 %i.bgm to i64
  br label %bb.vb

bb.vb:                                            ; preds = %bb.vb, %.lr.ph.i.i1579
  %.09.i.i1580 = phi i32 [ 0, %.lr.ph.i.i1579 ], [ %i.bgu, %bb.vb ]
  %.078.i.i1581 = phi ptr [ %i.bgp, %.lr.ph.i.i1579 ], [ %i.bgt, %bb.vb ] ; 2 uses
  %i.bgs = call i64 @fwrite(ptr noundef %.078.i.i1581, i64 noundef 4, i64 noundef %i.bgq, ptr noundef nonnull %i.bfo) ; 0 uses
  %i.bgt = getelementptr inbounds [4 x i8], ptr %.078.i.i1581, i64 %i.bgr
  %i.bgu = add nuw nsw i32 %.09.i.i1580, 1        ; 2 uses
  %exitcond.not.i123.i1582 = icmp eq i32 %i.bgu, %i.bgk
  br i1 %exitcond.not.i123.i1582, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1555, label %bb.vb, !llvm.loop !70

bb.vc:                                            ; preds = %bb.ux
  %i.bgv = load i32, ptr %i.bcl, align 8, !tbaa !235 ; 2 uses
  %i.bgw = shl nsw i32 %i.bgv, 2
  %i.bgx = load i32, ptr %i.bcm, align 4, !tbaa !236 ; 2 uses
  %i.bgy = icmp sgt i32 %i.bgx, 0
  br i1 %i.bgy, label %.preheader.lr.ph.i124.i1557, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1555

.preheader.lr.ph.i124.i1557:                      ; preds = %bb.vc
  %i.bgz = load i32, ptr %i.bcn, align 8, !tbaa !237
  %i.bha = icmp sgt i32 %i.bgv, 0
  %i.bhb = sext i32 %i.bgz to i64
  br i1 %i.bha, label %.preheader.i125.preheader.i1558, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1555

.preheader.i125.preheader.i1558:                  ; preds = %.preheader.lr.ph.i124.i1557
  %i.bhc = load ptr, ptr %49, align 8, !tbaa !233
  br label %.preheader.i125.i1559

.preheader.i125.i1559:                            ; preds = %._crit_edge.i129.i1577, %.preheader.i125.preheader.i1558
  %.01521.i.i1560 = phi i32 [ %i.bhe, %._crit_edge.i129.i1577 ], [ 0, %.preheader.i125.preheader.i1558 ]
  %.01620.i.i1561 = phi ptr [ %i.bhd, %._crit_edge.i129.i1577 ], [ %i.bhc, %.preheader.i125.preheader.i1558 ] ; 2 uses
  br label %bb.vd

._crit_edge.i129.i1577:                           ; preds = %bb.vd
  %i.bhd = getelementptr inbounds [4 x i8], ptr %.01620.i.i1561, i64 %i.bhb
  %i.bhe = add nuw nsw i32 %.01521.i.i1560, 1     ; 2 uses
  %exitcond24.not.i.i1578 = icmp eq i32 %i.bhe, %i.bgx
  br i1 %exitcond24.not.i.i1578, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1555, label %.preheader.i125.i1559, !llvm.loop !71

bb.vd:                                            ; preds = %bb.vd, %.preheader.i125.i1559
  %.01319.i.i1562 = phi i32 [ 0, %.preheader.i125.i1559 ], [ %i.bhj, %bb.vd ]
  %.01418.i.i1563 = phi ptr [ %.01620.i.i1561, %.preheader.i125.i1559 ], [ %i.bhi, %bb.vd ] ; 5 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %.01418.i.i1563, i64 3
  %char.i.i1564 = load i8, ptr %i.bhf, align 1
  %chari.i126.i1565 = sext i8 %char.i.i1564 to i32
  %fputc.i127.i1566 = call i32 @fputc(i32 %chari.i126.i1565, ptr nonnull %i.bfo) ; 0 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %.01418.i.i1563, i64 2
  %char.1.i.i1567 = load i8, ptr %i.bhg, align 1
  %chari.1.i.i1568 = sext i8 %char.1.i.i1567 to i32
  %fputc.1.i.i1569 = call i32 @fputc(i32 %chari.1.i.i1568, ptr nonnull %i.bfo) ; 0 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %.01418.i.i1563, i64 1
  %char.2.i.i1570 = load i8, ptr %i.bhh, align 1
  %chari.2.i.i1571 = sext i8 %char.2.i.i1570 to i32
  %fputc.2.i.i1572 = call i32 @fputc(i32 %chari.2.i.i1571, ptr nonnull %i.bfo) ; 0 uses
  %char.3.i.i1573 = load i8, ptr %.01418.i.i1563, align 1
  %chari.3.i.i1574 = sext i8 %char.3.i.i1573 to i32
  %fputc.3.i.i1575 = call i32 @fputc(i32 %chari.3.i.i1574, ptr nonnull %i.bfo) ; 0 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %.01418.i.i1563, i64 4
  %i.bhj = add nuw nsw i32 %.01319.i.i1562, 1     ; 2 uses
  %exitcond.not.i128.i1576 = icmp eq i32 %i.bhj, %i.bgw
  br i1 %exitcond.not.i128.i1576, label %._crit_edge.i129.i1577, label %bb.vd, !llvm.loop !72

default.unreachable2328:                          ; preds = %bb.ux
  unreachable

_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1555:   ; preds = %._crit_edge.i129.i1577, %bb.vb, %._crit_edge.i.i1595, %.preheader.lr.ph.i124.i1557, %bb.vc, %bb.va, %.preheader.lr.ph.i117.i1583, %bb.uy
  %i.bhk = call i32 @fclose(ptr noundef nonnull %i.bfo) ; 0 uses
  br label %.loopexit2343

bb.ve:                                            ; preds = %bb.uk
  switch i32 %.22091.jt2, label %bb.vh [
    i32 0, label %bb.vf
    i32 6, label %bb.vf
    i32 7, label %bb.vg
  ]

bb.vf:                                            ; preds = %bb.ve, %bb.ve
  %i.bhl = load ptr, ptr @stdout, align 8, !tbaa !139
  call fastcc void @_ZL15writeTextBitmapP8_IO_FILEPKfiii(ptr noundef %i.bhl, ptr noundef %.sroa.01812.1, i32 noundef %i.bco, i32 noundef %.sroa.27.0, i32 noundef %i.bco)
  br label %.loopexit2343

bb.vg:                                            ; preds = %bb.ve
  %i.bhm = load ptr, ptr @stdout, align 8, !tbaa !139 ; 4 uses
  %i.bhn = icmp sgt i32 %.sroa.27.0, 0
  br i1 %i.bhn, label %.preheader.lr.ph.i130.i1667, label %.thread2281

.preheader.lr.ph.i130.i1667:                      ; preds = %bb.vg
  %i.bho = icmp sgt i32 %.sroa.171824.0, 0
  %i.bhp = sext i32 %i.bco to i64
  br i1 %i.bho, label %.preheader.us.i136.i1673, label %.preheader.i131.i1668

.preheader.us.i136.i1673:                         ; preds = %.preheader.lr.ph.i130.i1667, %._crit_edge.us.i144.i1681
  %.01318.us.i137.i1674 = phi i32 [ %i.bhy, %._crit_edge.us.i144.i1681 ], [ 0, %.preheader.lr.ph.i130.i1667 ]
  %.01417.us.i138.i1675 = phi ptr [ %i.bhx, %._crit_edge.us.i144.i1681 ], [ %.sroa.01812.1, %.preheader.lr.ph.i130.i1667 ] ; 3 uses
  %i.bhq = load float, ptr %.01417.us.i138.i1675, align 4, !tbaa !23
  %i.bhr = fpext float %i.bhq to double
  %i.bhs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bhm, ptr noundef nonnull @.str.211, double noundef %i.bhr) #21 ; 0 uses
  br label %.peel.next.i139.i1676

.peel.next.i139.i1676:                            ; preds = %.peel.next.i139.i1676, %.preheader.us.i136.i1673
  %.016.us.i140.i1677 = phi i32 [ %i.bhw, %.peel.next.i139.i1676 ], [ 1, %.preheader.us.i136.i1673 ]
  %.01417.us.pn.i141.i1678 = phi ptr [ %.01215.us.i142.i1679, %.peel.next.i139.i1676 ], [ %.01417.us.i138.i1675, %.preheader.us.i136.i1673 ]
  %.01215.us.i142.i1679 = getelementptr inbounds nuw i8, ptr %.01417.us.pn.i141.i1678, i64 4 ; 2 uses
  %i.bht = load float, ptr %.01215.us.i142.i1679, align 4, !tbaa !23
  %i.bhu = fpext float %i.bht to double
  %i.bhv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bhm, ptr noundef nonnull @.str.210, double noundef %i.bhu) #21 ; 0 uses
  %i.bhw = add nuw nsw i32 %.016.us.i140.i1677, 1 ; 2 uses
  %exitcond21.not.i143.i1680 = icmp eq i32 %i.bhw, %i.bco
  br i1 %exitcond21.not.i143.i1680, label %._crit_edge.us.i144.i1681, label %.peel.next.i139.i1676, !llvm.loop !66

._crit_edge.us.i144.i1681:                        ; preds = %.peel.next.i139.i1676
  %fputc.us.i145.i1682 = call i32 @fputc(i32 10, ptr %i.bhm) ; 0 uses
  %i.bhx = getelementptr inbounds nuw [4 x i8], ptr %.01417.us.i138.i1675, i64 %i.bhp
  %i.bhy = add nuw nsw i32 %.01318.us.i137.i1674, 1 ; 2 uses
  %exitcond23.not.i146.i1683 = icmp eq i32 %i.bhy, %.sroa.27.0
  br i1 %exitcond23.not.i146.i1683, label %.loopexit2343.thread, label %.preheader.us.i136.i1673, !llvm.loop !67

.loopexit2343.thread:                             ; preds = %._crit_edge.us.i144.i1681
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %_ZL12is8bitFormat6Format.exit1689

.preheader.i131.i1668:                            ; preds = %.preheader.lr.ph.i130.i1667, %.preheader.i131.i1668
  %.01318.i132.i1669 = phi i32 [ %i.bhz, %.preheader.i131.i1668 ], [ 0, %.preheader.lr.ph.i130.i1667 ]
  %fputc.i133.i1670 = call i32 @fputc(i32 10, ptr %i.bhm) ; 0 uses
  %i.bhz = add nuw nsw i32 %.01318.i132.i1669, 1  ; 2 uses
  %exitcond.not.i134.i1671 = icmp eq i32 %i.bhz, %.sroa.27.0
  br i1 %exitcond.not.i134.i1671, label %.thread2281, label %.preheader.i131.i1668, !llvm.loop !67

bb.vh:                                            ; preds = %.thread156.i1657.thread, %bb.uu, %.thread156.i1657, %.thread157.i1656, %bb.ve, %.noexc1684, %.noexc1685, %.noexc1686, %.noexc1687, %.noexc1688
  %.2.i1556 = phi ptr [ @.str.206, %bb.ve ], [ @.str.198, %.noexc1684 ], [ @.str.199, %.noexc1685 ], [ @.str.200, %.noexc1686 ], [ @.str.201, %.noexc1687 ], [ @.str.202, %.noexc1688 ], [ @.str.197, %bb.uu ], [ @.str.203, %.thread156.i1657 ], [ @.str.205, %.thread157.i1656 ], [ @.str.203, %.thread156.i1657.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  %i.bia = load ptr, ptr @stderr, align 8, !tbaa !139
  %i.bib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bia, ptr noundef nonnull @.str.179, ptr noundef nonnull %.2.i1556) #24 ; 0 uses
  br label %.thread2246

bb.vi:                                            ; preds = %.thread155.i1658, %.thread154.i1659, %.thread153.i1661, %.thread152.i1664, %.thread.i1666
  %i.bic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %bb.wr

.thread2281:                                      ; preds = %.preheader.i131.i1668, %bb.vg, %.noexc1686, %.noexc1688
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %_ZL12is8bitFormat6Format.exit1689

.thread2284:                                      ; preds = %.noexc1684, %.noexc1685, %.noexc1687
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %bb.vj

.loopexit2343:                                    ; preds = %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1598, %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1555, %bb.vf, %bb.ul
  %.262114.ph = phi i32 [ %.22091.jt2, %bb.ul ], [ %.192108, %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1555 ], [ %.22091.jt2, %bb.vf ], [ %.20210949934996, %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1598 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  switch i32 %.262114.ph, label %_ZL12is8bitFormat6Format.exit1689 [
    i32 6, label %bb.vj
    i32 4, label %bb.vj
    i32 2, label %bb.vj
    i32 1, label %bb.vj
    i32 8, label %bb.vj
  ]

bb.vj:                                            ; preds = %.loopexit2343, %.loopexit2343, %.loopexit2343, %.loopexit2343, %.loopexit2343, %.thread2284
  %i.bid = icmp ne ptr %.1791.jt2, null
  %i.bie = icmp ne ptr %.1789.jt2, null
  %or.cond80 = select i1 %i.bid, i1 true, i1 %i.bie
  %or.cond82 = select i1 %or.cond80, i1 true, i1 %i.vh
  br i1 %or.cond82, label %bb.vk, label %.thread2246

bb.vk:                                            ; preds = %bb.vj
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  store ptr %.sroa.01812.1, ptr %50, align 8, !tbaa !190, !alias.scope !239
  %i.bif = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i32 %.sroa.171824.0, ptr %i.bif, align 8, !tbaa !192, !alias.scope !239
  %i.big = getelementptr inbounds nuw i8, ptr %50, i64 12
  store i32 %.sroa.27.0, ptr %i.big, align 4, !tbaa !193, !alias.scope !239
  %i.bih = getelementptr inbounds nuw i8, ptr %50, i64 16
  store i32 %i.bco, ptr %i.bih, align 8, !tbaa !194, !alias.scope !239
  %i.bii = getelementptr inbounds nuw i8, ptr %50, i64 20
  store i32 0, ptr %i.bii, align 4, !tbaa !195, !alias.scope !239
  invoke void @_ZN7msdfgen12simulate8bitERKNS_13BitmapSectionIfLi4EEE(ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %bb.vl unwind label %bb.vm

bb.vl:                                            ; preds = %bb.vk
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br label %_ZL12is8bitFormat6Format.exit1689

bb.vm:                                            ; preds = %bb.vk
  %i.bij = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br label %bb.wr

_ZL12is8bitFormat6Format.exit1689:                ; preds = %.loopexit2343.thread, %.thread2281, %.loopexit2343, %bb.vl
  br i1 %i.vh, label %bb.vn, label %bb.vq

bb.vn:                                            ; preds = %_ZL12is8bitFormat6Format.exit1689
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  store ptr %.sroa.01812.1, ptr %51, align 8, !tbaa !233, !alias.scope !240
  %i.bik = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i32 %.sroa.171824.0, ptr %i.bik, align 8, !tbaa !235, !alias.scope !240
  %i.bil = getelementptr inbounds nuw i8, ptr %51, i64 12
  store i32 %.sroa.27.0, ptr %i.bil, align 4, !tbaa !236, !alias.scope !240
  %i.bim = getelementptr inbounds nuw i8, ptr %51, i64 16
  store i32 %i.bco, ptr %i.bim, align 8, !tbaa !237, !alias.scope !240
  %i.bin = getelementptr inbounds nuw i8, ptr %51, i64 20
  store i32 0, ptr %i.bin, align 4, !tbaa !238, !alias.scope !240
  %i.bio = invoke noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 19, i32 noundef %.2778.jt2)
          to label %bb.vo unwind label %bb.vp

bb.vo:                                            ; preds = %bb.vn
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  %i.bip = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.180, double noundef %i.bio) ; 0 uses
  br label %bb.vq

bb.vp:                                            ; preds = %bb.vn
end_hunk_1
