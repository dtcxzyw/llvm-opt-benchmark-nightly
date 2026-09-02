Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/main?download=true
inline.NumInlined: 364
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a

bb.sj:                                            ; preds = %bb.si
  %i.avo = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.2783.jt2) #22
  %i.avp = getelementptr inbounds nuw i8, ptr %.2783.jt2, i64 %i.avo ; 4 uses
  br label %bb.sk

bb.sk:                                            ; preds = %bb.sl, %bb.sj
  %.pn.i.i1398 = phi ptr [ %i.avp, %bb.sj ], [ %.014.i.i1401, %bb.sl ]
  %.pn17.i.i1399 = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.181, i64 4), %bb.sj ], [ %.013.i.i1400, %bb.sl ]
  %.013.i.i1400 = getelementptr inbounds i8, ptr %.pn17.i.i1399, i64 -1 ; 3 uses
  %.014.i.i1401 = getelementptr inbounds i8, ptr %.pn.i.i1398, i64 -1 ; 3 uses
  %.not.i.i1402 = icmp ult ptr %.013.i.i1400, @.str.181 ; 2 uses
  %i.avq = icmp ult ptr %.014.i.i1401, %.2783.jt2
  %or.cond.i.i1403 = select i1 %.not.i.i1402, i1 true, i1 %i.avq
  br i1 %or.cond.i.i1403, label %_ZL12cmpExtensionPKcS0_.exit.i1446, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.avr = load i8, ptr %.014.i.i1401, align 1, !tbaa !26 ; 3 uses
  %i.avs = add i8 %i.avr, -97
  %or.cond.i.i.i1404 = icmp ult i8 %i.avs, 26
  %i.avt = add nsw i8 %i.avr, -32
  %i.avu = select i1 %or.cond.i.i.i1404, i8 %i.avt, i8 %i.avr
  %i.avv = load i8, ptr %.013.i.i1400, align 1, !tbaa !26 ; 3 uses
  %i.avw = add i8 %i.avv, -97
  %or.cond.i18.i.i1405 = icmp ult i8 %i.avw, 26
  %i.avx = add nsw i8 %i.avv, -32
  %i.avy = select i1 %or.cond.i18.i.i1405, i8 %i.avx, i8 %i.avv
  %.not16.i.i1406 = icmp eq i8 %i.avu, %i.avy
  br i1 %.not16.i.i1406, label %bb.sk, label %_ZL12cmpExtensionPKcS0_.exit.thread.i1407.preheader, !llvm.loop !136

_ZL12cmpExtensionPKcS0_.exit.i1446:               ; preds = %bb.sk
  br i1 %.not.i.i1402, label %.thread.i1447, label %_ZL12cmpExtensionPKcS0_.exit.thread.i1407.preheader

_ZL12cmpExtensionPKcS0_.exit.thread.i1407.preheader: ; preds = %bb.sl, %_ZL12cmpExtensionPKcS0_.exit.i1446
  br label %_ZL12cmpExtensionPKcS0_.exit.thread.i1407

_ZL12cmpExtensionPKcS0_.exit.thread.i1407:        ; preds = %_ZL12cmpExtensionPKcS0_.exit.thread.i1407.preheader, %bb.sm
  %.pn.i84.i1408 = phi ptr [ %.014.i87.i1411, %bb.sm ], [ %i.avp, %_ZL12cmpExtensionPKcS0_.exit.thread.i1407.preheader ]
  %.pn17.i85.i1409 = phi ptr [ %.013.i86.i1410, %bb.sm ], [ getelementptr inbounds nuw (i8, ptr @.str.190, i64 4), %_ZL12cmpExtensionPKcS0_.exit.thread.i1407.preheader ]
  %.013.i86.i1410 = getelementptr inbounds i8, ptr %.pn17.i85.i1409, i64 -1 ; 3 uses
  %.014.i87.i1411 = getelementptr inbounds i8, ptr %.pn.i84.i1408, i64 -1 ; 3 uses
  %.not.i88.i1412 = icmp ult ptr %.013.i86.i1410, @.str.190 ; 2 uses
  %i.avz = icmp ult ptr %.014.i87.i1411, %.2783.jt2
  %or.cond.i89.i1413 = select i1 %.not.i88.i1412, i1 true, i1 %i.avz
  br i1 %or.cond.i89.i1413, label %_ZL12cmpExtensionPKcS0_.exit94.i1445, label %bb.sm

bb.sm:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit.thread.i1407
  %i.awa = load i8, ptr %.014.i87.i1411, align 1, !tbaa !26 ; 3 uses
  %i.awb = add i8 %i.awa, -97
  %or.cond.i.i90.i1414 = icmp ult i8 %i.awb, 26
  %i.awc = add nsw i8 %i.awa, -32
  %i.awd = select i1 %or.cond.i.i90.i1414, i8 %i.awc, i8 %i.awa
  %i.awe = load i8, ptr %.013.i86.i1410, align 1, !tbaa !26 ; 3 uses
  %i.awf = add i8 %i.awe, -97
  %or.cond.i18.i91.i1415 = icmp ult i8 %i.awf, 26
  %i.awg = add nsw i8 %i.awe, -32
  %i.awh = select i1 %or.cond.i18.i91.i1415, i8 %i.awg, i8 %i.awe
  %.not16.i92.i1416 = icmp eq i8 %i.awd, %i.awh
  br i1 %.not16.i92.i1416, label %_ZL12cmpExtensionPKcS0_.exit.thread.i1407, label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1417.preheader, !llvm.loop !136

_ZL12cmpExtensionPKcS0_.exit94.i1445:             ; preds = %_ZL12cmpExtensionPKcS0_.exit.thread.i1407
  br i1 %.not.i88.i1412, label %.thread152.i, label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1417.preheader

_ZL12cmpExtensionPKcS0_.exit94.thread.i1417.preheader: ; preds = %bb.sm, %_ZL12cmpExtensionPKcS0_.exit94.i1445
  br label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1417

_ZL12cmpExtensionPKcS0_.exit94.thread.i1417:      ; preds = %_ZL12cmpExtensionPKcS0_.exit94.thread.i1417.preheader, %bb.sn
  %.pn.i95.i1418 = phi ptr [ %.014.i98.i1421, %bb.sn ], [ %i.avp, %_ZL12cmpExtensionPKcS0_.exit94.thread.i1417.preheader ]
  %.pn17.i96.i1419 = phi ptr [ %.013.i97.i1420, %bb.sn ], [ getelementptr inbounds nuw (i8, ptr @.str.191, i64 5), %_ZL12cmpExtensionPKcS0_.exit94.thread.i1417.preheader ]
  %.013.i97.i1420 = getelementptr inbounds i8, ptr %.pn17.i96.i1419, i64 -1 ; 3 uses
  %.014.i98.i1421 = getelementptr inbounds i8, ptr %.pn.i95.i1418, i64 -1 ; 3 uses
  %.not.i99.i1422 = icmp ult ptr %.013.i97.i1420, @.str.191 ; 2 uses
  %i.awi = icmp ult ptr %.014.i98.i1421, %.2783.jt2
  %or.cond.i100.i1423 = select i1 %.not.i99.i1422, i1 true, i1 %i.awi
  br i1 %or.cond.i100.i1423, label %_ZL12cmpExtensionPKcS0_.exit105.i1444, label %bb.sn

bb.sn:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit94.thread.i1417
  %i.awj = load i8, ptr %.014.i98.i1421, align 1, !tbaa !26 ; 3 uses
  %i.awk = add i8 %i.awj, -97
  %or.cond.i.i101.i1424 = icmp ult i8 %i.awk, 26
  %i.awl = add nsw i8 %i.awj, -32
  %i.awm = select i1 %or.cond.i.i101.i1424, i8 %i.awl, i8 %i.awj
  %i.awn = load i8, ptr %.013.i97.i1420, align 1, !tbaa !26 ; 3 uses
  %i.awo = add i8 %i.awn, -97
  %or.cond.i18.i102.i1425 = icmp ult i8 %i.awo, 26
  %i.awp = add nsw i8 %i.awn, -32
  %i.awq = select i1 %or.cond.i18.i102.i1425, i8 %i.awp, i8 %i.awn
  %.not16.i103.i1426 = icmp eq i8 %i.awm, %i.awq
  br i1 %.not16.i103.i1426, label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1417, label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1427.preheader, !llvm.loop !136

_ZL12cmpExtensionPKcS0_.exit105.i1444:            ; preds = %_ZL12cmpExtensionPKcS0_.exit94.thread.i1417
  br i1 %.not.i99.i1422, label %.thread153.i1443, label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1427.preheader

_ZL12cmpExtensionPKcS0_.exit105.thread.i1427.preheader: ; preds = %bb.sn, %_ZL12cmpExtensionPKcS0_.exit105.i1444
  br label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1427

_ZL12cmpExtensionPKcS0_.exit105.thread.i1427:     ; preds = %_ZL12cmpExtensionPKcS0_.exit105.thread.i1427.preheader, %bb.so
  %.pn.i106.i1428 = phi ptr [ %.014.i109.i1431, %bb.so ], [ %i.avp, %_ZL12cmpExtensionPKcS0_.exit105.thread.i1427.preheader ]
  %.pn17.i107.i1429 = phi ptr [ %.013.i108.i1430, %bb.so ], [ getelementptr inbounds nuw (i8, ptr @.str.192, i64 4), %_ZL12cmpExtensionPKcS0_.exit105.thread.i1427.preheader ]
  %.013.i108.i1430 = getelementptr inbounds i8, ptr %.pn17.i107.i1429, i64 -1 ; 3 uses
  %.014.i109.i1431 = getelementptr inbounds i8, ptr %.pn.i106.i1428, i64 -1 ; 3 uses
  %.not.i110.i1432 = icmp ult ptr %.013.i108.i1430, @.str.192 ; 2 uses
  %i.awr = icmp ult ptr %.014.i109.i1431, %.2783.jt2
  %or.cond.i111.i1433 = select i1 %.not.i110.i1432, i1 true, i1 %i.awr
  br i1 %or.cond.i111.i1433, label %_ZL12cmpExtensionPKcS0_.exit116.i1442, label %bb.so

bb.so:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit105.thread.i1427
  %i.aws = load i8, ptr %.014.i109.i1431, align 1, !tbaa !26 ; 3 uses
  %i.awt = add i8 %i.aws, -97
  %or.cond.i.i112.i1434 = icmp ult i8 %i.awt, 26
  %i.awu = add nsw i8 %i.aws, -32
  %i.awv = select i1 %or.cond.i.i112.i1434, i8 %i.awu, i8 %i.aws
  %i.aww = load i8, ptr %.013.i108.i1430, align 1, !tbaa !26 ; 3 uses
  %i.awx = add i8 %i.aww, -97
  %or.cond.i18.i113.i1435 = icmp ult i8 %i.awx, 26
  %i.awy = add nsw i8 %i.aww, -32
  %i.awz = select i1 %or.cond.i18.i113.i1435, i8 %i.awy, i8 %i.aww
  %.not16.i114.i1436 = icmp eq i8 %i.awv, %i.awz
  br i1 %.not16.i114.i1436, label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1427, label %_ZL12cmpExtensionPKcS0_.exit116.thread.i1437, !llvm.loop !136

_ZL12cmpExtensionPKcS0_.exit116.i1442:            ; preds = %_ZL12cmpExtensionPKcS0_.exit105.thread.i1427
  br i1 %.not.i110.i1432, label %.thread153.i1443, label %_ZL12cmpExtensionPKcS0_.exit116.thread.i1437

_ZL12cmpExtensionPKcS0_.exit116.thread.i1437:     ; preds = %bb.so, %_ZL12cmpExtensionPKcS0_.exit116.i1442
  %i.axa = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.193)
  br i1 %i.axa, label %.thread154.i1441, label %bb.sp

bb.sp:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit116.thread.i1437
  %i.axb = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.194)
  br i1 %i.axb, label %.thread155.i1440, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.axc = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.195)
  br i1 %i.axc, label %.thread156.i1439.thread, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.axd = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.196)
  br i1 %i.axd, label %.thread157.i1438, label %bb.te

.thread.i1447:                                    ; preds = %_ZL12cmpExtensionPKcS0_.exit.i1446, %bb.si
  %i.axe = invoke noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIfLi3EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.11") align 8 %40, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1453 unwind label %bb.tf

.noexc1453:                                       ; preds = %.thread.i1447
  br i1 %i.axe, label %.thread2202, label %bb.te

.thread152.i:                                     ; preds = %_ZL12cmpExtensionPKcS0_.exit94.i1445, %bb.si
  %i.axf = invoke noundef zeroext i1 @_ZN7msdfgen7saveBmpENS_18BitmapConstSectionIfLi3EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.11") align 8 %40, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1454 unwind label %bb.tf

.noexc1454:                                       ; preds = %.thread152.i
  br i1 %i.axf, label %.thread2202, label %bb.te

.thread153.i1443:                                 ; preds = %_ZL12cmpExtensionPKcS0_.exit105.i1444, %_ZL12cmpExtensionPKcS0_.exit116.i1442, %bb.si
  %i.axg = invoke noundef zeroext i1 @_ZN7msdfgen8saveTiffERKNS_18BitmapConstSectionIfLi3EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1455 unwind label %bb.tf

.noexc1455:                                       ; preds = %.thread153.i1443
  br i1 %i.axg, label %.thread2199, label %bb.te

.thread154.i1441:                                 ; preds = %_ZL12cmpExtensionPKcS0_.exit116.thread.i1437, %bb.si
  %i.axh = invoke noundef zeroext i1 @_ZN7msdfgen8saveRgbaENS_18BitmapConstSectionIfLi3EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.11") align 8 %40, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1456 unwind label %bb.tf

.noexc1456:                                       ; preds = %.thread154.i1441
  br i1 %i.axh, label %.thread2202, label %bb.te

.thread155.i1440:                                 ; preds = %bb.sp, %bb.si
  %i.axi = invoke noundef zeroext i1 @_ZN7msdfgen8saveFl32ILi3EEEbNS_18BitmapConstSectionIfXT_EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.11") align 8 %40, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1457 unwind label %bb.tf

.noexc1457:                                       ; preds = %.thread155.i1440
  br i1 %i.axi, label %.thread2199, label %bb.te

.thread156.i1439:                                 ; preds = %bb.si, %bb.si
  %i.axj = call noalias ptr @fopen(ptr noundef nonnull %.2783.jt2, ptr noundef nonnull @.str.165) ; 9 uses
  %.not83.i1380 = icmp eq ptr %i.axj, null
  br i1 %.not83.i1380, label %bb.te, label %bb.ss

.thread156.i1439.thread:                          ; preds = %bb.sq
  %i.axk = call noalias ptr @fopen(ptr noundef nonnull %.2783.jt2, ptr noundef nonnull @.str.165) ; 2 uses
  %.not83.i13804923 = icmp eq ptr %i.axk, null
  br i1 %.not83.i13804923, label %bb.te, label %.thread4925

bb.ss:                                            ; preds = %.thread156.i1439
  %i.axl = icmp eq i32 %.22031.jt2, 6
  br i1 %i.axl, label %.thread4925, label %bb.st

.thread4925:                                      ; preds = %.thread156.i1439.thread, %bb.ss
  %i.axm = phi ptr [ %i.axj, %bb.ss ], [ %i.axk, %.thread156.i1439.thread ] ; 2 uses
  %i.axn = load ptr, ptr %40, align 8, !tbaa !159
  %i.axo = load i32, ptr %i.avj, align 8, !tbaa !164
  %i.axp = mul nsw i32 %i.axo, 3
  %i.axq = load i32, ptr %i.avk, align 4, !tbaa !165
  %i.axr = load i32, ptr %i.avl, align 8, !tbaa !166
  call fastcc void @_ZL15writeTextBitmapP8_IO_FILEPKfiii(ptr noundef nonnull %i.axm, ptr noundef %i.axn, i32 noundef %i.axp, i32 noundef %i.axq, i32 noundef %i.axr)
  br label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1381

bb.st:                                            ; preds = %bb.ss
  %i.axs = load i32, ptr %i.avj, align 8, !tbaa !164 ; 2 uses
  %i.axt = mul nsw i32 %i.axs, 3
  %i.axu = load i32, ptr %i.avk, align 4, !tbaa !165 ; 3 uses
  %i.axv = icmp sgt i32 %i.axu, 0
  br i1 %i.axv, label %.preheader.lr.ph.i.i1382, label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1381

.preheader.lr.ph.i.i1382:                         ; preds = %bb.st
  %i.axw = load i32, ptr %i.avl, align 8, !tbaa !166
  %i.axx = icmp sgt i32 %i.axs, 0
  %i.axy = sext i32 %i.axw to i64
  br i1 %i.axx, label %.preheader.us.i.preheader.i, label %.preheader.i.i1383

.preheader.us.i.preheader.i:                      ; preds = %.preheader.lr.ph.i.i1382
  %i.axz = load ptr, ptr %40, align 8, !tbaa !159
  br label %.preheader.us.i.i1387

.preheader.us.i.i1387:                            ; preds = %._crit_edge.us.i.i1395, %.preheader.us.i.preheader.i
  %.01318.us.i.i1388 = phi i32 [ %i.ayi, %._crit_edge.us.i.i1395 ], [ 0, %.preheader.us.i.preheader.i ]
  %.01417.us.i.i1389 = phi ptr [ %i.ayh, %._crit_edge.us.i.i1395 ], [ %i.axz, %.preheader.us.i.preheader.i ] ; 3 uses
  %i.aya = load float, ptr %.01417.us.i.i1389, align 4, !tbaa !137
  %i.ayb = fpext float %i.aya to double
  %i.ayc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.axj, ptr noundef nonnull @.str.211, double noundef %i.ayb) #21 ; 0 uses
  br label %.peel.next.i.i1390

.peel.next.i.i1390:                               ; preds = %.peel.next.i.i1390, %.preheader.us.i.i1387
  %.016.us.i.i1391 = phi i32 [ %i.ayg, %.peel.next.i.i1390 ], [ 1, %.preheader.us.i.i1387 ]
  %.01417.us.pn.i.i1392 = phi ptr [ %.01215.us.i.i1393, %.peel.next.i.i1390 ], [ %.01417.us.i.i1389, %.preheader.us.i.i1387 ]
  %.01215.us.i.i1393 = getelementptr inbounds nuw i8, ptr %.01417.us.pn.i.i1392, i64 4 ; 2 uses
  %i.ayd = load float, ptr %.01215.us.i.i1393, align 4, !tbaa !137
  %i.aye = fpext float %i.ayd to double
  %i.ayf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.axj, ptr noundef nonnull @.str.210, double noundef %i.aye) #21 ; 0 uses
  %i.ayg = add nuw nsw i32 %.016.us.i.i1391, 1    ; 2 uses
  %exitcond21.not.i.i1394 = icmp eq i32 %i.ayg, %i.axt
  br i1 %exitcond21.not.i.i1394, label %._crit_edge.us.i.i1395, label %.peel.next.i.i1390, !llvm.loop !139

._crit_edge.us.i.i1395:                           ; preds = %.peel.next.i.i1390
  %fputc.us.i.i1396 = call i32 @fputc(i32 10, ptr nonnull %i.axj) ; 0 uses
  %i.ayh = getelementptr inbounds [4 x i8], ptr %.01417.us.i.i1389, i64 %i.axy
  %i.ayi = add nuw nsw i32 %.01318.us.i.i1388, 1  ; 2 uses
  %exitcond23.not.i.i1397 = icmp eq i32 %i.ayi, %i.axu
  br i1 %exitcond23.not.i.i1397, label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1381, label %.preheader.us.i.i1387, !llvm.loop !141

.preheader.i.i1383:                               ; preds = %.preheader.lr.ph.i.i1382, %.preheader.i.i1383
  %.01318.i.i1384 = phi i32 [ %i.ayj, %.preheader.i.i1383 ], [ 0, %.preheader.lr.ph.i.i1382 ]
  %fputc.i.i1385 = call i32 @fputc(i32 10, ptr nonnull %i.axj) ; 0 uses
  %i.ayj = add nuw nsw i32 %.01318.i.i1384, 1     ; 2 uses
  %exitcond.not.i.i1386 = icmp eq i32 %i.ayj, %i.axu
  br i1 %exitcond.not.i.i1386, label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1381, label %.preheader.i.i1383, !llvm.loop !141

_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1381: ; preds = %.preheader.i.i1383, %._crit_edge.us.i.i1395, %bb.st, %.thread4925
  %.12204149244927 = phi i32 [ %.22031.jt2, %._crit_edge.us.i.i1395 ], [ 6, %.thread4925 ], [ 7, %bb.st ], [ 7, %.preheader.i.i1383 ]
  %i.ayk = phi ptr [ %i.axj, %._crit_edge.us.i.i1395 ], [ %i.axm, %.thread4925 ], [ %i.axj, %bb.st ], [ %i.axj, %.preheader.i.i1383 ]
  %i.ayl = call i32 @fclose(ptr noundef nonnull %i.ayk) ; 0 uses
  br label %.loopexit2279

.thread157.i1438:                                 ; preds = %bb.sr, %bb.si, %bb.si, %bb.si
  %.112040 = phi i32 [ %.22031.jt2, %bb.si ], [ %.22031.jt2, %bb.si ], [ %.22031.jt2, %bb.si ], [ 8, %bb.sr ] ; 2 uses
  %i.aym = call noalias ptr @fopen(ptr noundef nonnull %.2783.jt2, ptr noundef nonnull @.str.204) ; 8 uses
  %.not82.i1337 = icmp eq ptr %i.aym, null
  br i1 %.not82.i1337, label %bb.te, label %bb.su

bb.su:                                            ; preds = %.thread157.i1438
  switch i32 %.112040, label %default.unreachable2266 [
    i32 8, label %bb.sv
    i32 9, label %bb.sx
    i32 10, label %bb.sz
  ]

bb.sv:                                            ; preds = %bb.su
  %i.ayn = load i32, ptr %i.avj, align 8, !tbaa !164 ; 2 uses
  %i.ayo = mul nsw i32 %i.ayn, 3
  %i.ayp = load i32, ptr %i.avk, align 4, !tbaa !165 ; 2 uses
  %i.ayq = icmp sgt i32 %i.ayp, 0
  br i1 %i.ayq, label %.preheader.lr.ph.i117.i1366, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1338

.preheader.lr.ph.i117.i1366:                      ; preds = %bb.sv
  %i.ayr = load i32, ptr %i.avl, align 8, !tbaa !166
  %i.ays = icmp sgt i32 %i.ayn, 0
  %i.ayt = sext i32 %i.ayr to i64
  br i1 %i.ays, label %.preheader.i118.preheader.i1367, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1338

.preheader.i118.preheader.i1367:                  ; preds = %.preheader.lr.ph.i117.i1366
  %i.ayu = load ptr, ptr %40, align 8, !tbaa !159
  br label %.preheader.i118.i1368

.preheader.i118.i1368:                            ; preds = %._crit_edge.i.i1378, %.preheader.i118.preheader.i1367
  %.01116.i.i1369 = phi i32 [ %i.ayw, %._crit_edge.i.i1378 ], [ 0, %.preheader.i118.preheader.i1367 ]
  %.01215.i.i1370 = phi ptr [ %i.ayv, %._crit_edge.i.i1378 ], [ %i.ayu, %.preheader.i118.preheader.i1367 ] ; 2 uses
  br label %bb.sw

._crit_edge.i.i1378:                              ; preds = %bb.sw
  %i.ayv = getelementptr inbounds [4 x i8], ptr %.01215.i.i1370, i64 %i.ayt
  %i.ayw = add nuw nsw i32 %.01116.i.i1369, 1     ; 2 uses
  %exitcond18.not.i.i1379 = icmp eq i32 %i.ayw, %i.ayp
  br i1 %exitcond18.not.i.i1379, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1338, label %.preheader.i118.i1368, !llvm.loop !142

bb.sw:                                            ; preds = %bb.sw, %.preheader.i118.i1368
  %.014.i119.i1371 = phi i32 [ 0, %.preheader.i118.i1368 ], [ %i.azh, %bb.sw ]
  %.01013.i.i1372 = phi ptr [ %.01215.i.i1370, %.preheader.i118.i1368 ], [ %i.ayx, %bb.sw ] ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %.01013.i.i1372, i64 4
  %i.ayy = load float, ptr %.01013.i.i1372, align 4, !tbaa !137 ; 4 uses
  %i.ayz = fcmp oge float %i.ayy, 0.000000e+00
  %i.aza = fcmp ole float %i.ayy, 1.000000e+00
  %or.cond.i.i.i.i1373 = and i1 %i.ayz, %i.aza
  %i.azb = fcmp ogt float %i.ayy, 0.000000e+00
  %i.azc = uitofp i1 %i.azb to float
  %i.azd = select i1 %or.cond.i.i.i.i1373, float %i.ayy, float %i.azc
  %i.aze = call float @llvm.fmuladd.f32(float %i.azd, float -2.550000e+02, float 2.555000e+02)
  %i.azf = fptosi float %i.aze to i32
  %i.azg = xor i32 %i.azf, -1
  %sext.i.i1374 = shl i32 %i.azg, 24
  %chari.i.i1375 = ashr exact i32 %sext.i.i1374, 24
  %fputc.i120.i1376 = call i32 @fputc(i32 %chari.i.i1375, ptr nonnull %i.aym) ; 0 uses
  %i.azh = add nuw nsw i32 %.014.i119.i1371, 1    ; 2 uses
  %exitcond.not.i121.i1377 = icmp eq i32 %i.azh, %i.ayo
  br i1 %exitcond.not.i121.i1377, label %._crit_edge.i.i1378, label %bb.sw, !llvm.loop !143

bb.sx:                                            ; preds = %bb.su
  %i.azi = load i32, ptr %i.avk, align 4, !tbaa !165 ; 2 uses
  %i.azj = icmp sgt i32 %i.azi, 0
  br i1 %i.azj, label %.lr.ph.i.i1362, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1338

.lr.ph.i.i1362:                                   ; preds = %bb.sx
  %i.azk = load i32, ptr %i.avl, align 8, !tbaa !166
  %i.azl = load i32, ptr %i.avj, align 8, !tbaa !164
  %i.azm = mul nsw i32 %i.azl, 3
  %i.azn = load ptr, ptr %40, align 8, !tbaa !159
  %i.azo = sext i32 %i.azm to i64
  %i.azp = sext i32 %i.azk to i64
  br label %bb.sy

bb.sy:                                            ; preds = %bb.sy, %.lr.ph.i.i1362
  %.09.i.i1363 = phi i32 [ 0, %.lr.ph.i.i1362 ], [ %i.azs, %bb.sy ]
  %.078.i.i1364 = phi ptr [ %i.azn, %.lr.ph.i.i1362 ], [ %i.azr, %bb.sy ] ; 2 uses
  %i.azq = call i64 @fwrite(ptr noundef %.078.i.i1364, i64 noundef 4, i64 noundef %i.azo, ptr noundef nonnull %i.aym) ; 0 uses
  %i.azr = getelementptr inbounds [4 x i8], ptr %.078.i.i1364, i64 %i.azp
  %i.azs = add nuw nsw i32 %.09.i.i1363, 1        ; 2 uses
  %exitcond.not.i123.i1365 = icmp eq i32 %i.azs, %i.azi
  br i1 %exitcond.not.i123.i1365, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1338, label %bb.sy, !llvm.loop !144

bb.sz:                                            ; preds = %bb.su
  %i.azt = load i32, ptr %i.avj, align 8, !tbaa !164 ; 2 uses
  %i.azu = mul nsw i32 %i.azt, 3
  %i.azv = load i32, ptr %i.avk, align 4, !tbaa !165 ; 2 uses
  %i.azw = icmp sgt i32 %i.azv, 0
  br i1 %i.azw, label %.preheader.lr.ph.i124.i1340, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1338

.preheader.lr.ph.i124.i1340:                      ; preds = %bb.sz
  %i.azx = load i32, ptr %i.avl, align 8, !tbaa !166
  %i.azy = icmp sgt i32 %i.azt, 0
  %i.azz = sext i32 %i.azx to i64
  br i1 %i.azy, label %.preheader.i125.preheader.i1341, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1338

.preheader.i125.preheader.i1341:                  ; preds = %.preheader.lr.ph.i124.i1340
  %i.baa = load ptr, ptr %40, align 8, !tbaa !159
  br label %.preheader.i125.i1342

.preheader.i125.i1342:                            ; preds = %._crit_edge.i129.i1360, %.preheader.i125.preheader.i1341
  %.01521.i.i1343 = phi i32 [ %i.bac, %._crit_edge.i129.i1360 ], [ 0, %.preheader.i125.preheader.i1341 ]
  %.01620.i.i1344 = phi ptr [ %i.bab, %._crit_edge.i129.i1360 ], [ %i.baa, %.preheader.i125.preheader.i1341 ] ; 2 uses
  br label %bb.ta

._crit_edge.i129.i1360:                           ; preds = %bb.ta
  %i.bab = getelementptr inbounds [4 x i8], ptr %.01620.i.i1344, i64 %i.azz
  %i.bac = add nuw nsw i32 %.01521.i.i1343, 1     ; 2 uses
  %exitcond24.not.i.i1361 = icmp eq i32 %i.bac, %i.azv
  br i1 %exitcond24.not.i.i1361, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1338, label %.preheader.i125.i1342, !llvm.loop !145

bb.ta:                                            ; preds = %bb.ta, %.preheader.i125.i1342
  %.01319.i.i1345 = phi i32 [ 0, %.preheader.i125.i1342 ], [ %i.bah, %bb.ta ]
  %.01418.i.i1346 = phi ptr [ %.01620.i.i1344, %.preheader.i125.i1342 ], [ %i.bag, %bb.ta ] ; 5 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %.01418.i.i1346, i64 3
  %char.i.i1347 = load i8, ptr %i.bad, align 1
  %chari.i126.i1348 = sext i8 %char.i.i1347 to i32
  %fputc.i127.i1349 = call i32 @fputc(i32 %chari.i126.i1348, ptr nonnull %i.aym) ; 0 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %.01418.i.i1346, i64 2
  %char.1.i.i1350 = load i8, ptr %i.bae, align 1
  %chari.1.i.i1351 = sext i8 %char.1.i.i1350 to i32
  %fputc.1.i.i1352 = call i32 @fputc(i32 %chari.1.i.i1351, ptr nonnull %i.aym) ; 0 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %.01418.i.i1346, i64 1
  %char.2.i.i1353 = load i8, ptr %i.baf, align 1
  %chari.2.i.i1354 = sext i8 %char.2.i.i1353 to i32
  %fputc.2.i.i1355 = call i32 @fputc(i32 %chari.2.i.i1354, ptr nonnull %i.aym) ; 0 uses
  %char.3.i.i1356 = load i8, ptr %.01418.i.i1346, align 1
  %chari.3.i.i1357 = sext i8 %char.3.i.i1356 to i32
  %fputc.3.i.i1358 = call i32 @fputc(i32 %chari.3.i.i1357, ptr nonnull %i.aym) ; 0 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %.01418.i.i1346, i64 4
  %i.bah = add nuw nsw i32 %.01319.i.i1345, 1     ; 2 uses
  %exitcond.not.i128.i1359 = icmp eq i32 %i.bah, %i.azu
  br i1 %exitcond.not.i128.i1359, label %._crit_edge.i129.i1360, label %bb.ta, !llvm.loop !146

default.unreachable2266:                          ; preds = %bb.su
  unreachable

_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1338:   ; preds = %._crit_edge.i129.i1360, %bb.sy, %._crit_edge.i.i1378, %.preheader.lr.ph.i124.i1340, %bb.sz, %bb.sx, %.preheader.lr.ph.i117.i1366, %bb.sv
  %i.bai = call i32 @fclose(ptr noundef nonnull %i.aym) ; 0 uses
  br label %.loopexit2279

bb.tb:                                            ; preds = %bb.sh
  switch i32 %.22031.jt2, label %bb.te [
    i32 0, label %bb.tc
    i32 6, label %bb.tc
    i32 7, label %bb.td
  ]

bb.tc:                                            ; preds = %bb.tb, %bb.tb
  %i.baj = load ptr, ptr @stdout, align 8, !tbaa !30
  call fastcc void @_ZL15writeTextBitmapP8_IO_FILEPKfiii(ptr noundef %i.baj, ptr noundef %.sroa.01805.1, i32 noundef %i.avm, i32 noundef %.sroa.271826.0, i32 noundef %i.avm)
  br label %.loopexit2279

bb.td:                                            ; preds = %bb.tb
  %i.bak = load ptr, ptr @stdout, align 8, !tbaa !30 ; 4 uses
  %i.bal = icmp sgt i32 %.sroa.271826.0, 0
  br i1 %i.bal, label %.preheader.lr.ph.i130.i1448, label %.thread2199

.preheader.lr.ph.i130.i1448:                      ; preds = %bb.td
  %i.bam = icmp sgt i32 %.sroa.171817.0, 0
  %i.ban = sext i32 %i.avm to i64
  br i1 %i.bam, label %.preheader.us.i136.i, label %.preheader.i131.i1449

.preheader.us.i136.i:                             ; preds = %.preheader.lr.ph.i130.i1448, %._crit_edge.us.i144.i
  %.01318.us.i137.i = phi i32 [ %i.baw, %._crit_edge.us.i144.i ], [ 0, %.preheader.lr.ph.i130.i1448 ]
  %.01417.us.i138.i = phi ptr [ %i.bav, %._crit_edge.us.i144.i ], [ %.sroa.01805.1, %.preheader.lr.ph.i130.i1448 ] ; 3 uses
  %i.bao = load float, ptr %.01417.us.i138.i, align 4, !tbaa !137
  %i.bap = fpext float %i.bao to double
  %i.baq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bak, ptr noundef nonnull @.str.211, double noundef %i.bap) #21 ; 0 uses
  br label %.peel.next.i139.i

.peel.next.i139.i:                                ; preds = %.peel.next.i139.i, %.preheader.us.i136.i
  %.016.us.i140.i = phi i32 [ %i.bau, %.peel.next.i139.i ], [ 1, %.preheader.us.i136.i ]
  %.01417.us.pn.i141.i = phi ptr [ %.01215.us.i142.i, %.peel.next.i139.i ], [ %.01417.us.i138.i, %.preheader.us.i136.i ]
  %.01215.us.i142.i = getelementptr inbounds nuw i8, ptr %.01417.us.pn.i141.i, i64 4 ; 2 uses
  %i.bar = load float, ptr %.01215.us.i142.i, align 4, !tbaa !137
  %i.bas = fpext float %i.bar to double
  %i.bat = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bak, ptr noundef nonnull @.str.210, double noundef %i.bas) #21 ; 0 uses
  %i.bau = add nuw nsw i32 %.016.us.i140.i, 1     ; 2 uses
  %exitcond21.not.i143.i = icmp eq i32 %i.bau, %i.avm
  br i1 %exitcond21.not.i143.i, label %._crit_edge.us.i144.i, label %.peel.next.i139.i, !llvm.loop !139

._crit_edge.us.i144.i:                            ; preds = %.peel.next.i139.i
  %fputc.us.i145.i = call i32 @fputc(i32 10, ptr %i.bak) ; 0 uses
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %.01417.us.i138.i, i64 %i.ban
  %i.baw = add nuw nsw i32 %.01318.us.i137.i, 1   ; 2 uses
  %exitcond23.not.i146.i = icmp eq i32 %i.baw, %.sroa.271826.0
  br i1 %exitcond23.not.i146.i, label %.loopexit2279.thread, label %.preheader.us.i136.i, !llvm.loop !141

.loopexit2279.thread:                             ; preds = %._crit_edge.us.i144.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br i1 %i.wg, label %bb.tj, label %bb.tm

.preheader.i131.i1449:                            ; preds = %.preheader.lr.ph.i130.i1448, %.preheader.i131.i1449
  %.01318.i132.i1450 = phi i32 [ %i.bax, %.preheader.i131.i1449 ], [ 0, %.preheader.lr.ph.i130.i1448 ]
  %fputc.i133.i1451 = call i32 @fputc(i32 10, ptr %i.bak) ; 0 uses
  %i.bax = add nuw nsw i32 %.01318.i132.i1450, 1  ; 2 uses
  %exitcond.not.i134.i1452 = icmp eq i32 %i.bax, %.sroa.271826.0
  br i1 %exitcond.not.i134.i1452, label %.thread2199, label %.preheader.i131.i1449, !llvm.loop !141

bb.te:                                            ; preds = %.thread156.i1439.thread, %bb.sr, %.thread156.i1439, %.thread157.i1438, %bb.tb, %.noexc1453, %.noexc1454, %.noexc1455, %.noexc1456, %.noexc1457
  %.2.i1339 = phi ptr [ @.str.206, %bb.tb ], [ @.str.198, %.noexc1453 ], [ @.str.199, %.noexc1454 ], [ @.str.200, %.noexc1455 ], [ @.str.201, %.noexc1456 ], [ @.str.202, %.noexc1457 ], [ @.str.197, %bb.sr ], [ @.str.203, %.thread156.i1439 ], [ @.str.205, %.thread157.i1438 ], [ @.str.203, %.thread156.i1439.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  %i.bay = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.baz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bay, ptr noundef nonnull @.str.179, ptr noundef nonnull %.2.i1339) #24 ; 0 uses
  br label %.thread2186

bb.tf:                                            ; preds = %.thread155.i1440, %.thread154.i1441, %.thread153.i1443, %.thread152.i, %.thread.i1447
  %i.bba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br label %bb.wr

.thread2199:                                      ; preds = %.preheader.i131.i1449, %bb.td, %.noexc1455, %.noexc1457
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br i1 %i.wg, label %bb.tj, label %bb.tm

.thread2202:                                      ; preds = %.noexc1453, %.noexc1454, %.noexc1456
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br label %bb.tg

.loopexit2279:                                    ; preds = %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1381, %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1338, %bb.tc, %bb.si
  %.182047.ph = phi i32 [ %.22031.jt2, %bb.si ], [ %.112040, %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1338 ], [ %.22031.jt2, %bb.tc ], [ %.12204149244927, %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1381 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  switch i32 %.182047.ph, label %_ZL12is8bitFormat6Format.exit1458 [
    i32 6, label %bb.tg
    i32 4, label %bb.tg
    i32 2, label %bb.tg
    i32 1, label %bb.tg
    i32 8, label %bb.tg
  ]

bb.tg:                                            ; preds = %.loopexit2279, %.loopexit2279, %.loopexit2279, %.loopexit2279, %.loopexit2279, %.thread2202
  %i.bbb = icmp ne ptr %.1791.jt2, null
  %i.bbc = icmp ne ptr %.1789.jt2, null
  %or.cond76 = select i1 %i.bbb, i1 true, i1 %i.bbc
  %or.cond78 = select i1 %or.cond76, i1 true, i1 %i.wg
  br i1 %or.cond78, label %bb.th, label %.thread2186

bb.th:                                            ; preds = %bb.tg
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  store ptr %.sroa.01805.1, ptr %41, align 8, !tbaa !88, !alias.scope !180
  %i.bbd = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i32 %.sroa.171817.0, ptr %i.bbd, align 8, !tbaa !93, !alias.scope !180
  %i.bbe = getelementptr inbounds nuw i8, ptr %41, i64 12
  store i32 %.sroa.271826.0, ptr %i.bbe, align 4, !tbaa !94, !alias.scope !180
  %i.bbf = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i32 %i.avm, ptr %i.bbf, align 8, !tbaa !95, !alias.scope !180
  %i.bbg = getelementptr inbounds nuw i8, ptr %41, i64 20
  store i32 0, ptr %i.bbg, align 4, !tbaa !96, !alias.scope !180
  invoke void @_ZN7msdfgen12simulate8bitERKNS_13BitmapSectionIfLi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %41)
          to label %.split4930 unwind label %bb.ti

.split4930:                                       ; preds = %bb.th
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br i1 %i.wg, label %bb.tj, label %bb.tm

bb.ti:                                            ; preds = %bb.th
  %i.bbh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br label %bb.wr

_ZL12is8bitFormat6Format.exit1458:                ; preds = %.loopexit2279
  br i1 %i.wg, label %bb.tj, label %bb.tm

bb.tj:                                            ; preds = %.split4930, %.loopexit2279.thread, %.thread2199, %_ZL12is8bitFormat6Format.exit1458
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  store ptr %.sroa.01805.1, ptr %42, align 8, !tbaa !159, !alias.scope !183
  %i.bbi = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i32 %.sroa.171817.0, ptr %i.bbi, align 8, !tbaa !164, !alias.scope !183
  %i.bbj = getelementptr inbounds nuw i8, ptr %42, i64 12
  store i32 %.sroa.271826.0, ptr %i.bbj, align 4, !tbaa !165, !alias.scope !183
  %i.bbk = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i32 %i.avm, ptr %i.bbk, align 8, !tbaa !166, !alias.scope !183
  %i.bbl = getelementptr inbounds nuw i8, ptr %42, i64 20
  store i32 0, ptr %i.bbl, align 4, !tbaa !167, !alias.scope !183
  %i.bbm = invoke noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 19, i32 noundef %.2778.jt2)
          to label %bb.tk unwind label %bb.tl

bb.tk:                                            ; preds = %bb.tj
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  %i.bbn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.180, double noundef %i.bbm) ; 0 uses
  br label %bb.tm

bb.tl:                                            ; preds = %bb.tj
end_hunk_0
begin_hunk_1_@main:bb.a

bb.um:                                            ; preds = %bb.ul
  %i.bev = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.2783.jt2) #22
  %i.bew = getelementptr inbounds nuw i8, ptr %.2783.jt2, i64 %i.bev ; 4 uses
  br label %bb.un

bb.un:                                            ; preds = %bb.uo, %bb.um
  %.pn.i.i1556 = phi ptr [ %i.bew, %bb.um ], [ %.014.i.i1559, %bb.uo ]
  %.pn17.i.i1557 = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.181, i64 4), %bb.um ], [ %.013.i.i1558, %bb.uo ]
  %.013.i.i1558 = getelementptr inbounds i8, ptr %.pn17.i.i1557, i64 -1 ; 3 uses
  %.014.i.i1559 = getelementptr inbounds i8, ptr %.pn.i.i1556, i64 -1 ; 3 uses
  %.not.i.i1560 = icmp ult ptr %.013.i.i1558, @.str.181 ; 2 uses
  %i.bex = icmp ult ptr %.014.i.i1559, %.2783.jt2
  %or.cond.i.i1561 = select i1 %.not.i.i1560, i1 true, i1 %i.bex
  br i1 %or.cond.i.i1561, label %_ZL12cmpExtensionPKcS0_.exit.i1605, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.bey = load i8, ptr %.014.i.i1559, align 1, !tbaa !26 ; 3 uses
  %i.bez = add i8 %i.bey, -97
  %or.cond.i.i.i1562 = icmp ult i8 %i.bez, 26
  %i.bfa = add nsw i8 %i.bey, -32
  %i.bfb = select i1 %or.cond.i.i.i1562, i8 %i.bfa, i8 %i.bey
  %i.bfc = load i8, ptr %.013.i.i1558, align 1, !tbaa !26 ; 3 uses
  %i.bfd = add i8 %i.bfc, -97
  %or.cond.i18.i.i1563 = icmp ult i8 %i.bfd, 26
  %i.bfe = add nsw i8 %i.bfc, -32
  %i.bff = select i1 %or.cond.i18.i.i1563, i8 %i.bfe, i8 %i.bfc
  %.not16.i.i1564 = icmp eq i8 %i.bfb, %i.bff
  br i1 %.not16.i.i1564, label %bb.un, label %_ZL12cmpExtensionPKcS0_.exit.thread.i1565.preheader, !llvm.loop !136

_ZL12cmpExtensionPKcS0_.exit.i1605:               ; preds = %bb.un
  br i1 %.not.i.i1560, label %.thread.i1606, label %_ZL12cmpExtensionPKcS0_.exit.thread.i1565.preheader

_ZL12cmpExtensionPKcS0_.exit.thread.i1565.preheader: ; preds = %bb.uo, %_ZL12cmpExtensionPKcS0_.exit.i1605
  br label %_ZL12cmpExtensionPKcS0_.exit.thread.i1565

_ZL12cmpExtensionPKcS0_.exit.thread.i1565:        ; preds = %_ZL12cmpExtensionPKcS0_.exit.thread.i1565.preheader, %bb.up
  %.pn.i84.i1566 = phi ptr [ %.014.i87.i1569, %bb.up ], [ %i.bew, %_ZL12cmpExtensionPKcS0_.exit.thread.i1565.preheader ]
  %.pn17.i85.i1567 = phi ptr [ %.013.i86.i1568, %bb.up ], [ getelementptr inbounds nuw (i8, ptr @.str.190, i64 4), %_ZL12cmpExtensionPKcS0_.exit.thread.i1565.preheader ]
  %.013.i86.i1568 = getelementptr inbounds i8, ptr %.pn17.i85.i1567, i64 -1 ; 3 uses
  %.014.i87.i1569 = getelementptr inbounds i8, ptr %.pn.i84.i1566, i64 -1 ; 3 uses
  %.not.i88.i1570 = icmp ult ptr %.013.i86.i1568, @.str.190 ; 2 uses
  %i.bfg = icmp ult ptr %.014.i87.i1569, %.2783.jt2
  %or.cond.i89.i1571 = select i1 %.not.i88.i1570, i1 true, i1 %i.bfg
  br i1 %or.cond.i89.i1571, label %_ZL12cmpExtensionPKcS0_.exit94.i1603, label %bb.up

bb.up:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit.thread.i1565
  %i.bfh = load i8, ptr %.014.i87.i1569, align 1, !tbaa !26 ; 3 uses
  %i.bfi = add i8 %i.bfh, -97
  %or.cond.i.i90.i1572 = icmp ult i8 %i.bfi, 26
  %i.bfj = add nsw i8 %i.bfh, -32
  %i.bfk = select i1 %or.cond.i.i90.i1572, i8 %i.bfj, i8 %i.bfh
  %i.bfl = load i8, ptr %.013.i86.i1568, align 1, !tbaa !26 ; 3 uses
  %i.bfm = add i8 %i.bfl, -97
  %or.cond.i18.i91.i1573 = icmp ult i8 %i.bfm, 26
  %i.bfn = add nsw i8 %i.bfl, -32
  %i.bfo = select i1 %or.cond.i18.i91.i1573, i8 %i.bfn, i8 %i.bfl
  %.not16.i92.i1574 = icmp eq i8 %i.bfk, %i.bfo
  br i1 %.not16.i92.i1574, label %_ZL12cmpExtensionPKcS0_.exit.thread.i1565, label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1575.preheader, !llvm.loop !136

_ZL12cmpExtensionPKcS0_.exit94.i1603:             ; preds = %_ZL12cmpExtensionPKcS0_.exit.thread.i1565
  br i1 %.not.i88.i1570, label %.thread152.i1604, label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1575.preheader

_ZL12cmpExtensionPKcS0_.exit94.thread.i1575.preheader: ; preds = %bb.up, %_ZL12cmpExtensionPKcS0_.exit94.i1603
  br label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1575

_ZL12cmpExtensionPKcS0_.exit94.thread.i1575:      ; preds = %_ZL12cmpExtensionPKcS0_.exit94.thread.i1575.preheader, %bb.uq
  %.pn.i95.i1576 = phi ptr [ %.014.i98.i1579, %bb.uq ], [ %i.bew, %_ZL12cmpExtensionPKcS0_.exit94.thread.i1575.preheader ]
  %.pn17.i96.i1577 = phi ptr [ %.013.i97.i1578, %bb.uq ], [ getelementptr inbounds nuw (i8, ptr @.str.191, i64 5), %_ZL12cmpExtensionPKcS0_.exit94.thread.i1575.preheader ]
  %.013.i97.i1578 = getelementptr inbounds i8, ptr %.pn17.i96.i1577, i64 -1 ; 3 uses
  %.014.i98.i1579 = getelementptr inbounds i8, ptr %.pn.i95.i1576, i64 -1 ; 3 uses
  %.not.i99.i1580 = icmp ult ptr %.013.i97.i1578, @.str.191 ; 2 uses
  %i.bfp = icmp ult ptr %.014.i98.i1579, %.2783.jt2
  %or.cond.i100.i1581 = select i1 %.not.i99.i1580, i1 true, i1 %i.bfp
  br i1 %or.cond.i100.i1581, label %_ZL12cmpExtensionPKcS0_.exit105.i1602, label %bb.uq

bb.uq:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit94.thread.i1575
  %i.bfq = load i8, ptr %.014.i98.i1579, align 1, !tbaa !26 ; 3 uses
  %i.bfr = add i8 %i.bfq, -97
  %or.cond.i.i101.i1582 = icmp ult i8 %i.bfr, 26
  %i.bfs = add nsw i8 %i.bfq, -32
  %i.bft = select i1 %or.cond.i.i101.i1582, i8 %i.bfs, i8 %i.bfq
  %i.bfu = load i8, ptr %.013.i97.i1578, align 1, !tbaa !26 ; 3 uses
  %i.bfv = add i8 %i.bfu, -97
  %or.cond.i18.i102.i1583 = icmp ult i8 %i.bfv, 26
  %i.bfw = add nsw i8 %i.bfu, -32
  %i.bfx = select i1 %or.cond.i18.i102.i1583, i8 %i.bfw, i8 %i.bfu
  %.not16.i103.i1584 = icmp eq i8 %i.bft, %i.bfx
  br i1 %.not16.i103.i1584, label %_ZL12cmpExtensionPKcS0_.exit94.thread.i1575, label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1585.preheader, !llvm.loop !136

_ZL12cmpExtensionPKcS0_.exit105.i1602:            ; preds = %_ZL12cmpExtensionPKcS0_.exit94.thread.i1575
  br i1 %.not.i99.i1580, label %.thread153.i1601, label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1585.preheader

_ZL12cmpExtensionPKcS0_.exit105.thread.i1585.preheader: ; preds = %bb.uq, %_ZL12cmpExtensionPKcS0_.exit105.i1602
  br label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1585

_ZL12cmpExtensionPKcS0_.exit105.thread.i1585:     ; preds = %_ZL12cmpExtensionPKcS0_.exit105.thread.i1585.preheader, %bb.ur
  %.pn.i106.i1586 = phi ptr [ %.014.i109.i1589, %bb.ur ], [ %i.bew, %_ZL12cmpExtensionPKcS0_.exit105.thread.i1585.preheader ]
  %.pn17.i107.i1587 = phi ptr [ %.013.i108.i1588, %bb.ur ], [ getelementptr inbounds nuw (i8, ptr @.str.192, i64 4), %_ZL12cmpExtensionPKcS0_.exit105.thread.i1585.preheader ]
  %.013.i108.i1588 = getelementptr inbounds i8, ptr %.pn17.i107.i1587, i64 -1 ; 3 uses
  %.014.i109.i1589 = getelementptr inbounds i8, ptr %.pn.i106.i1586, i64 -1 ; 3 uses
  %.not.i110.i1590 = icmp ult ptr %.013.i108.i1588, @.str.192 ; 2 uses
  %i.bfy = icmp ult ptr %.014.i109.i1589, %.2783.jt2
  %or.cond.i111.i1591 = select i1 %.not.i110.i1590, i1 true, i1 %i.bfy
  br i1 %or.cond.i111.i1591, label %_ZL12cmpExtensionPKcS0_.exit116.i1600, label %bb.ur

bb.ur:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit105.thread.i1585
  %i.bfz = load i8, ptr %.014.i109.i1589, align 1, !tbaa !26 ; 3 uses
  %i.bga = add i8 %i.bfz, -97
  %or.cond.i.i112.i1592 = icmp ult i8 %i.bga, 26
  %i.bgb = add nsw i8 %i.bfz, -32
  %i.bgc = select i1 %or.cond.i.i112.i1592, i8 %i.bgb, i8 %i.bfz
  %i.bgd = load i8, ptr %.013.i108.i1588, align 1, !tbaa !26 ; 3 uses
  %i.bge = add i8 %i.bgd, -97
  %or.cond.i18.i113.i1593 = icmp ult i8 %i.bge, 26
  %i.bgf = add nsw i8 %i.bgd, -32
  %i.bgg = select i1 %or.cond.i18.i113.i1593, i8 %i.bgf, i8 %i.bgd
  %.not16.i114.i1594 = icmp eq i8 %i.bgc, %i.bgg
  br i1 %.not16.i114.i1594, label %_ZL12cmpExtensionPKcS0_.exit105.thread.i1585, label %_ZL12cmpExtensionPKcS0_.exit116.thread.i1595, !llvm.loop !136

_ZL12cmpExtensionPKcS0_.exit116.i1600:            ; preds = %_ZL12cmpExtensionPKcS0_.exit105.thread.i1585
  br i1 %.not.i110.i1590, label %.thread153.i1601, label %_ZL12cmpExtensionPKcS0_.exit116.thread.i1595

_ZL12cmpExtensionPKcS0_.exit116.thread.i1595:     ; preds = %bb.ur, %_ZL12cmpExtensionPKcS0_.exit116.i1600
  %i.bgh = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.193)
  br i1 %i.bgh, label %.thread154.i1599, label %bb.us

bb.us:                                            ; preds = %_ZL12cmpExtensionPKcS0_.exit116.thread.i1595
  %i.bgi = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.194)
  br i1 %i.bgi, label %.thread155.i1598, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  %i.bgj = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.195)
  br i1 %i.bgj, label %.thread156.i1597.thread, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.bgk = call fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr noundef %.2783.jt2, ptr noundef nonnull @.str.196)
  br i1 %i.bgk, label %.thread157.i1596, label %bb.vh

.thread.i1606:                                    ; preds = %_ZL12cmpExtensionPKcS0_.exit.i1605, %bb.ul
  %i.bgl = invoke noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIfLi4EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.12") align 8 %49, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1624 unwind label %bb.vi

.noexc1624:                                       ; preds = %.thread.i1606
  br i1 %i.bgl, label %.thread2224, label %bb.vh

.thread152.i1604:                                 ; preds = %_ZL12cmpExtensionPKcS0_.exit94.i1603, %bb.ul
  %i.bgm = invoke noundef zeroext i1 @_ZN7msdfgen7saveBmpENS_18BitmapConstSectionIfLi4EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.12") align 8 %49, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1625 unwind label %bb.vi

.noexc1625:                                       ; preds = %.thread152.i1604
  br i1 %i.bgm, label %.thread2224, label %bb.vh

.thread153.i1601:                                 ; preds = %_ZL12cmpExtensionPKcS0_.exit105.i1602, %_ZL12cmpExtensionPKcS0_.exit116.i1600, %bb.ul
  %i.bgn = invoke noundef zeroext i1 @_ZN7msdfgen8saveTiffERKNS_18BitmapConstSectionIfLi4EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1626 unwind label %bb.vi

.noexc1626:                                       ; preds = %.thread153.i1601
  br i1 %i.bgn, label %.thread2221, label %bb.vh

.thread154.i1599:                                 ; preds = %_ZL12cmpExtensionPKcS0_.exit116.thread.i1595, %bb.ul
  %i.bgo = invoke noundef zeroext i1 @_ZN7msdfgen8saveRgbaENS_18BitmapConstSectionIfLi4EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.12") align 8 %49, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1627 unwind label %bb.vi

.noexc1627:                                       ; preds = %.thread154.i1599
  br i1 %i.bgo, label %.thread2224, label %bb.vh

.thread155.i1598:                                 ; preds = %bb.us, %bb.ul
  %i.bgp = invoke noundef zeroext i1 @_ZN7msdfgen8saveFl32ILi4EEEbNS_18BitmapConstSectionIfXT_EEEPKc(ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.12") align 8 %49, ptr noundef nonnull %.2783.jt2)
          to label %.noexc1628 unwind label %bb.vi

.noexc1628:                                       ; preds = %.thread155.i1598
  br i1 %i.bgp, label %.thread2221, label %bb.vh

.thread156.i1597:                                 ; preds = %bb.ul, %bb.ul
  %i.bgq = call noalias ptr @fopen(ptr noundef nonnull %.2783.jt2, ptr noundef nonnull @.str.165) ; 9 uses
  %.not83.i1537 = icmp eq ptr %i.bgq, null
  br i1 %.not83.i1537, label %bb.vh, label %bb.uv

.thread156.i1597.thread:                          ; preds = %bb.ut
  %i.bgr = call noalias ptr @fopen(ptr noundef nonnull %.2783.jt2, ptr noundef nonnull @.str.165) ; 2 uses
  %.not83.i15374932 = icmp eq ptr %i.bgr, null
  br i1 %.not83.i15374932, label %bb.vh, label %.thread4934

bb.uv:                                            ; preds = %.thread156.i1597
  %i.bgs = icmp eq i32 %.22031.jt2, 6
  br i1 %i.bgs, label %.thread4934, label %bb.uw

.thread4934:                                      ; preds = %.thread156.i1597.thread, %bb.uv
  %i.bgt = phi ptr [ %i.bgq, %bb.uv ], [ %i.bgr, %.thread156.i1597.thread ] ; 2 uses
  %i.bgu = load ptr, ptr %49, align 8, !tbaa !204
  %i.bgv = load i32, ptr %i.beq, align 8, !tbaa !209
  %i.bgw = shl nsw i32 %i.bgv, 2
  %i.bgx = load i32, ptr %i.ber, align 4, !tbaa !210
  %i.bgy = load i32, ptr %i.bes, align 8, !tbaa !211
  call fastcc void @_ZL15writeTextBitmapP8_IO_FILEPKfiii(ptr noundef nonnull %i.bgt, ptr noundef %i.bgu, i32 noundef %i.bgw, i32 noundef %i.bgx, i32 noundef %i.bgy)
  br label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1538

bb.uw:                                            ; preds = %bb.uv
  %i.bgz = load i32, ptr %i.beq, align 8, !tbaa !209 ; 2 uses
  %i.bha = shl nsw i32 %i.bgz, 2
  %i.bhb = load i32, ptr %i.ber, align 4, !tbaa !210 ; 3 uses
  %i.bhc = icmp sgt i32 %i.bhb, 0
  br i1 %i.bhc, label %.preheader.lr.ph.i.i1539, label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1538

.preheader.lr.ph.i.i1539:                         ; preds = %bb.uw
  %i.bhd = load i32, ptr %i.bes, align 8, !tbaa !211
  %i.bhe = icmp sgt i32 %i.bgz, 0
  %i.bhf = sext i32 %i.bhd to i64
  br i1 %i.bhe, label %.preheader.us.i.preheader.i1544, label %.preheader.i.i1540

.preheader.us.i.preheader.i1544:                  ; preds = %.preheader.lr.ph.i.i1539
  %i.bhg = load ptr, ptr %49, align 8, !tbaa !204
  br label %.preheader.us.i.i1545

.preheader.us.i.i1545:                            ; preds = %._crit_edge.us.i.i1553, %.preheader.us.i.preheader.i1544
  %.01318.us.i.i1546 = phi i32 [ %i.bhp, %._crit_edge.us.i.i1553 ], [ 0, %.preheader.us.i.preheader.i1544 ]
  %.01417.us.i.i1547 = phi ptr [ %i.bho, %._crit_edge.us.i.i1553 ], [ %i.bhg, %.preheader.us.i.preheader.i1544 ] ; 3 uses
  %i.bhh = load float, ptr %.01417.us.i.i1547, align 4, !tbaa !137
  %i.bhi = fpext float %i.bhh to double
  %i.bhj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bgq, ptr noundef nonnull @.str.211, double noundef %i.bhi) #21 ; 0 uses
  br label %.peel.next.i.i1548

.peel.next.i.i1548:                               ; preds = %.peel.next.i.i1548, %.preheader.us.i.i1545
  %.016.us.i.i1549 = phi i32 [ %i.bhn, %.peel.next.i.i1548 ], [ 1, %.preheader.us.i.i1545 ]
  %.01417.us.pn.i.i1550 = phi ptr [ %.01215.us.i.i1551, %.peel.next.i.i1548 ], [ %.01417.us.i.i1547, %.preheader.us.i.i1545 ]
  %.01215.us.i.i1551 = getelementptr inbounds nuw i8, ptr %.01417.us.pn.i.i1550, i64 4 ; 2 uses
  %i.bhk = load float, ptr %.01215.us.i.i1551, align 4, !tbaa !137
  %i.bhl = fpext float %i.bhk to double
  %i.bhm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bgq, ptr noundef nonnull @.str.210, double noundef %i.bhl) #21 ; 0 uses
  %i.bhn = add nuw nsw i32 %.016.us.i.i1549, 1    ; 2 uses
  %exitcond21.not.i.i1552 = icmp eq i32 %i.bhn, %i.bha
  br i1 %exitcond21.not.i.i1552, label %._crit_edge.us.i.i1553, label %.peel.next.i.i1548, !llvm.loop !139

._crit_edge.us.i.i1553:                           ; preds = %.peel.next.i.i1548
  %fputc.us.i.i1554 = call i32 @fputc(i32 10, ptr nonnull %i.bgq) ; 0 uses
  %i.bho = getelementptr inbounds [4 x i8], ptr %.01417.us.i.i1547, i64 %i.bhf
  %i.bhp = add nuw nsw i32 %.01318.us.i.i1546, 1  ; 2 uses
  %exitcond23.not.i.i1555 = icmp eq i32 %i.bhp, %i.bhb
  br i1 %exitcond23.not.i.i1555, label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1538, label %.preheader.us.i.i1545, !llvm.loop !141

.preheader.i.i1540:                               ; preds = %.preheader.lr.ph.i.i1539, %.preheader.i.i1540
  %.01318.i.i1541 = phi i32 [ %i.bhq, %.preheader.i.i1540 ], [ 0, %.preheader.lr.ph.i.i1539 ]
  %fputc.i.i1542 = call i32 @fputc(i32 10, ptr nonnull %i.bgq) ; 0 uses
  %i.bhq = add nuw nsw i32 %.01318.i.i1541, 1     ; 2 uses
  %exitcond.not.i.i1543 = icmp eq i32 %i.bhq, %i.bhb
  br i1 %exitcond.not.i.i1543, label %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1538, label %.preheader.i.i1540, !llvm.loop !141

_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1538: ; preds = %.preheader.i.i1540, %._crit_edge.us.i.i1553, %bb.uw, %.thread4934
  %.20204949334936 = phi i32 [ %.22031.jt2, %._crit_edge.us.i.i1553 ], [ 6, %.thread4934 ], [ 7, %bb.uw ], [ 7, %.preheader.i.i1540 ]
  %i.bhr = phi ptr [ %i.bgq, %._crit_edge.us.i.i1553 ], [ %i.bgt, %.thread4934 ], [ %i.bgq, %bb.uw ], [ %i.bgq, %.preheader.i.i1540 ]
  %i.bhs = call i32 @fclose(ptr noundef nonnull %i.bhr) ; 0 uses
  br label %.loopexit2283

.thread157.i1596:                                 ; preds = %bb.uu, %bb.ul, %bb.ul, %bb.ul
  %.192048 = phi i32 [ %.22031.jt2, %bb.ul ], [ %.22031.jt2, %bb.ul ], [ %.22031.jt2, %bb.ul ], [ 8, %bb.uu ] ; 2 uses
  %i.bht = call noalias ptr @fopen(ptr noundef nonnull %.2783.jt2, ptr noundef nonnull @.str.204) ; 8 uses
  %.not82.i1494 = icmp eq ptr %i.bht, null
  br i1 %.not82.i1494, label %bb.vh, label %bb.ux

bb.ux:                                            ; preds = %.thread157.i1596
  switch i32 %.192048, label %default.unreachable2268 [
    i32 8, label %bb.uy
    i32 9, label %bb.va
    i32 10, label %bb.vc
  ]

bb.uy:                                            ; preds = %bb.ux
  %i.bhu = load i32, ptr %i.beq, align 8, !tbaa !209 ; 2 uses
  %i.bhv = shl nsw i32 %i.bhu, 2
  %i.bhw = load i32, ptr %i.ber, align 4, !tbaa !210 ; 2 uses
  %i.bhx = icmp sgt i32 %i.bhw, 0
  br i1 %i.bhx, label %.preheader.lr.ph.i117.i1523, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1495

.preheader.lr.ph.i117.i1523:                      ; preds = %bb.uy
  %i.bhy = load i32, ptr %i.bes, align 8, !tbaa !211
  %i.bhz = icmp sgt i32 %i.bhu, 0
  %i.bia = sext i32 %i.bhy to i64
  br i1 %i.bhz, label %.preheader.i118.preheader.i1524, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1495

.preheader.i118.preheader.i1524:                  ; preds = %.preheader.lr.ph.i117.i1523
  %i.bib = load ptr, ptr %49, align 8, !tbaa !204
  br label %.preheader.i118.i1525

.preheader.i118.i1525:                            ; preds = %._crit_edge.i.i1535, %.preheader.i118.preheader.i1524
  %.01116.i.i1526 = phi i32 [ %i.bid, %._crit_edge.i.i1535 ], [ 0, %.preheader.i118.preheader.i1524 ]
  %.01215.i.i1527 = phi ptr [ %i.bic, %._crit_edge.i.i1535 ], [ %i.bib, %.preheader.i118.preheader.i1524 ] ; 2 uses
  br label %bb.uz

._crit_edge.i.i1535:                              ; preds = %bb.uz
  %i.bic = getelementptr inbounds [4 x i8], ptr %.01215.i.i1527, i64 %i.bia
  %i.bid = add nuw nsw i32 %.01116.i.i1526, 1     ; 2 uses
  %exitcond18.not.i.i1536 = icmp eq i32 %i.bid, %i.bhw
  br i1 %exitcond18.not.i.i1536, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1495, label %.preheader.i118.i1525, !llvm.loop !142

bb.uz:                                            ; preds = %bb.uz, %.preheader.i118.i1525
  %.014.i119.i1528 = phi i32 [ 0, %.preheader.i118.i1525 ], [ %i.bio, %bb.uz ]
  %.01013.i.i1529 = phi ptr [ %.01215.i.i1527, %.preheader.i118.i1525 ], [ %i.bie, %bb.uz ] ; 2 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %.01013.i.i1529, i64 4
  %i.bif = load float, ptr %.01013.i.i1529, align 4, !tbaa !137 ; 4 uses
  %i.big = fcmp oge float %i.bif, 0.000000e+00
  %i.bih = fcmp ole float %i.bif, 1.000000e+00
  %or.cond.i.i.i.i1530 = and i1 %i.big, %i.bih
  %i.bii = fcmp ogt float %i.bif, 0.000000e+00
  %i.bij = uitofp i1 %i.bii to float
  %i.bik = select i1 %or.cond.i.i.i.i1530, float %i.bif, float %i.bij
  %i.bil = call float @llvm.fmuladd.f32(float %i.bik, float -2.550000e+02, float 2.555000e+02)
  %i.bim = fptosi float %i.bil to i32
  %i.bin = xor i32 %i.bim, -1
  %sext.i.i1531 = shl i32 %i.bin, 24
  %chari.i.i1532 = ashr exact i32 %sext.i.i1531, 24
  %fputc.i120.i1533 = call i32 @fputc(i32 %chari.i.i1532, ptr nonnull %i.bht) ; 0 uses
  %i.bio = add nuw nsw i32 %.014.i119.i1528, 1    ; 2 uses
  %exitcond.not.i121.i1534 = icmp eq i32 %i.bio, %i.bhv
  br i1 %exitcond.not.i121.i1534, label %._crit_edge.i.i1535, label %bb.uz, !llvm.loop !143

bb.va:                                            ; preds = %bb.ux
  %i.bip = load i32, ptr %i.ber, align 4, !tbaa !210 ; 2 uses
  %i.biq = icmp sgt i32 %i.bip, 0
  br i1 %i.biq, label %.lr.ph.i.i1519, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1495

.lr.ph.i.i1519:                                   ; preds = %bb.va
  %i.bir = load i32, ptr %i.bes, align 8, !tbaa !211
  %i.bis = load i32, ptr %i.beq, align 8, !tbaa !209
  %i.bit = shl nsw i32 %i.bis, 2
  %i.biu = load ptr, ptr %49, align 8, !tbaa !204
  %i.biv = sext i32 %i.bit to i64
  %i.biw = sext i32 %i.bir to i64
  br label %bb.vb

bb.vb:                                            ; preds = %bb.vb, %.lr.ph.i.i1519
  %.09.i.i1520 = phi i32 [ 0, %.lr.ph.i.i1519 ], [ %i.biz, %bb.vb ]
  %.078.i.i1521 = phi ptr [ %i.biu, %.lr.ph.i.i1519 ], [ %i.biy, %bb.vb ] ; 2 uses
  %i.bix = call i64 @fwrite(ptr noundef %.078.i.i1521, i64 noundef 4, i64 noundef %i.biv, ptr noundef nonnull %i.bht) ; 0 uses
  %i.biy = getelementptr inbounds [4 x i8], ptr %.078.i.i1521, i64 %i.biw
  %i.biz = add nuw nsw i32 %.09.i.i1520, 1        ; 2 uses
  %exitcond.not.i123.i1522 = icmp eq i32 %i.biz, %i.bip
  br i1 %exitcond.not.i123.i1522, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1495, label %bb.vb, !llvm.loop !144

bb.vc:                                            ; preds = %bb.ux
  %i.bja = load i32, ptr %i.beq, align 8, !tbaa !209 ; 2 uses
  %i.bjb = shl nsw i32 %i.bja, 2
  %i.bjc = load i32, ptr %i.ber, align 4, !tbaa !210 ; 2 uses
  %i.bjd = icmp sgt i32 %i.bjc, 0
  br i1 %i.bjd, label %.preheader.lr.ph.i124.i1497, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1495

.preheader.lr.ph.i124.i1497:                      ; preds = %bb.vc
  %i.bje = load i32, ptr %i.bes, align 8, !tbaa !211
  %i.bjf = icmp sgt i32 %i.bja, 0
  %i.bjg = sext i32 %i.bje to i64
  br i1 %i.bjf, label %.preheader.i125.preheader.i1498, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1495

.preheader.i125.preheader.i1498:                  ; preds = %.preheader.lr.ph.i124.i1497
  %i.bjh = load ptr, ptr %49, align 8, !tbaa !204
  br label %.preheader.i125.i1499

.preheader.i125.i1499:                            ; preds = %._crit_edge.i129.i1517, %.preheader.i125.preheader.i1498
  %.01521.i.i1500 = phi i32 [ %i.bjj, %._crit_edge.i129.i1517 ], [ 0, %.preheader.i125.preheader.i1498 ]
  %.01620.i.i1501 = phi ptr [ %i.bji, %._crit_edge.i129.i1517 ], [ %i.bjh, %.preheader.i125.preheader.i1498 ] ; 2 uses
  br label %bb.vd

._crit_edge.i129.i1517:                           ; preds = %bb.vd
  %i.bji = getelementptr inbounds [4 x i8], ptr %.01620.i.i1501, i64 %i.bjg
  %i.bjj = add nuw nsw i32 %.01521.i.i1500, 1     ; 2 uses
  %exitcond24.not.i.i1518 = icmp eq i32 %i.bjj, %i.bjc
  br i1 %exitcond24.not.i.i1518, label %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1495, label %.preheader.i125.i1499, !llvm.loop !145

bb.vd:                                            ; preds = %bb.vd, %.preheader.i125.i1499
  %.01319.i.i1502 = phi i32 [ 0, %.preheader.i125.i1499 ], [ %i.bjo, %bb.vd ]
  %.01418.i.i1503 = phi ptr [ %.01620.i.i1501, %.preheader.i125.i1499 ], [ %i.bjn, %bb.vd ] ; 5 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %.01418.i.i1503, i64 3
  %char.i.i1504 = load i8, ptr %i.bjk, align 1
  %chari.i126.i1505 = sext i8 %char.i.i1504 to i32
  %fputc.i127.i1506 = call i32 @fputc(i32 %chari.i126.i1505, ptr nonnull %i.bht) ; 0 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %.01418.i.i1503, i64 2
  %char.1.i.i1507 = load i8, ptr %i.bjl, align 1
  %chari.1.i.i1508 = sext i8 %char.1.i.i1507 to i32
  %fputc.1.i.i1509 = call i32 @fputc(i32 %chari.1.i.i1508, ptr nonnull %i.bht) ; 0 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %.01418.i.i1503, i64 1
  %char.2.i.i1510 = load i8, ptr %i.bjm, align 1
  %chari.2.i.i1511 = sext i8 %char.2.i.i1510 to i32
  %fputc.2.i.i1512 = call i32 @fputc(i32 %chari.2.i.i1511, ptr nonnull %i.bht) ; 0 uses
  %char.3.i.i1513 = load i8, ptr %.01418.i.i1503, align 1
  %chari.3.i.i1514 = sext i8 %char.3.i.i1513 to i32
  %fputc.3.i.i1515 = call i32 @fputc(i32 %chari.3.i.i1514, ptr nonnull %i.bht) ; 0 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %.01418.i.i1503, i64 4
  %i.bjo = add nuw nsw i32 %.01319.i.i1502, 1     ; 2 uses
  %exitcond.not.i128.i1516 = icmp eq i32 %i.bjo, %i.bjb
  br i1 %exitcond.not.i128.i1516, label %._crit_edge.i129.i1517, label %bb.vd, !llvm.loop !146

default.unreachable2268:                          ; preds = %bb.ux
  unreachable

_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1495:   ; preds = %._crit_edge.i129.i1517, %bb.vb, %._crit_edge.i.i1535, %.preheader.lr.ph.i124.i1497, %bb.vc, %bb.va, %.preheader.lr.ph.i117.i1523, %bb.uy
  %i.bjp = call i32 @fclose(ptr noundef nonnull %i.bht) ; 0 uses
  br label %.loopexit2283

bb.ve:                                            ; preds = %bb.uk
  switch i32 %.22031.jt2, label %bb.vh [
    i32 0, label %bb.vf
    i32 6, label %bb.vf
    i32 7, label %bb.vg
  ]

bb.vf:                                            ; preds = %bb.ve, %bb.ve
  %i.bjq = load ptr, ptr @stdout, align 8, !tbaa !30
  call fastcc void @_ZL15writeTextBitmapP8_IO_FILEPKfiii(ptr noundef %i.bjq, ptr noundef %.sroa.01752.1, i32 noundef %i.bet, i32 noundef %.sroa.27.0, i32 noundef %i.bet)
  br label %.loopexit2283

bb.vg:                                            ; preds = %bb.ve
  %i.bjr = load ptr, ptr @stdout, align 8, !tbaa !30 ; 4 uses
  %i.bjs = icmp sgt i32 %.sroa.27.0, 0
  br i1 %i.bjs, label %.preheader.lr.ph.i130.i1607, label %.thread2221

.preheader.lr.ph.i130.i1607:                      ; preds = %bb.vg
  %i.bjt = icmp sgt i32 %.sroa.171764.0, 0
  %i.bju = sext i32 %i.bet to i64
  br i1 %i.bjt, label %.preheader.us.i136.i1613, label %.preheader.i131.i1608

.preheader.us.i136.i1613:                         ; preds = %.preheader.lr.ph.i130.i1607, %._crit_edge.us.i144.i1621
  %.01318.us.i137.i1614 = phi i32 [ %i.bkd, %._crit_edge.us.i144.i1621 ], [ 0, %.preheader.lr.ph.i130.i1607 ]
  %.01417.us.i138.i1615 = phi ptr [ %i.bkc, %._crit_edge.us.i144.i1621 ], [ %.sroa.01752.1, %.preheader.lr.ph.i130.i1607 ] ; 3 uses
  %i.bjv = load float, ptr %.01417.us.i138.i1615, align 4, !tbaa !137
  %i.bjw = fpext float %i.bjv to double
  %i.bjx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bjr, ptr noundef nonnull @.str.211, double noundef %i.bjw) #21 ; 0 uses
  br label %.peel.next.i139.i1616

.peel.next.i139.i1616:                            ; preds = %.peel.next.i139.i1616, %.preheader.us.i136.i1613
  %.016.us.i140.i1617 = phi i32 [ %i.bkb, %.peel.next.i139.i1616 ], [ 1, %.preheader.us.i136.i1613 ]
  %.01417.us.pn.i141.i1618 = phi ptr [ %.01215.us.i142.i1619, %.peel.next.i139.i1616 ], [ %.01417.us.i138.i1615, %.preheader.us.i136.i1613 ]
  %.01215.us.i142.i1619 = getelementptr inbounds nuw i8, ptr %.01417.us.pn.i141.i1618, i64 4 ; 2 uses
  %i.bjy = load float, ptr %.01215.us.i142.i1619, align 4, !tbaa !137
  %i.bjz = fpext float %i.bjy to double
  %i.bka = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bjr, ptr noundef nonnull @.str.210, double noundef %i.bjz) #21 ; 0 uses
  %i.bkb = add nuw nsw i32 %.016.us.i140.i1617, 1 ; 2 uses
  %exitcond21.not.i143.i1620 = icmp eq i32 %i.bkb, %i.bet
  br i1 %exitcond21.not.i143.i1620, label %._crit_edge.us.i144.i1621, label %.peel.next.i139.i1616, !llvm.loop !139

._crit_edge.us.i144.i1621:                        ; preds = %.peel.next.i139.i1616
  %fputc.us.i145.i1622 = call i32 @fputc(i32 10, ptr %i.bjr) ; 0 uses
  %i.bkc = getelementptr inbounds nuw [4 x i8], ptr %.01417.us.i138.i1615, i64 %i.bju
  %i.bkd = add nuw nsw i32 %.01318.us.i137.i1614, 1 ; 2 uses
  %exitcond23.not.i146.i1623 = icmp eq i32 %i.bkd, %.sroa.27.0
  br i1 %exitcond23.not.i146.i1623, label %.loopexit2283.thread, label %.preheader.us.i136.i1613, !llvm.loop !141

.loopexit2283.thread:                             ; preds = %._crit_edge.us.i144.i1621
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %_ZL12is8bitFormat6Format.exit1629

.preheader.i131.i1608:                            ; preds = %.preheader.lr.ph.i130.i1607, %.preheader.i131.i1608
  %.01318.i132.i1609 = phi i32 [ %i.bke, %.preheader.i131.i1608 ], [ 0, %.preheader.lr.ph.i130.i1607 ]
  %fputc.i133.i1610 = call i32 @fputc(i32 10, ptr %i.bjr) ; 0 uses
  %i.bke = add nuw nsw i32 %.01318.i132.i1609, 1  ; 2 uses
  %exitcond.not.i134.i1611 = icmp eq i32 %i.bke, %.sroa.27.0
  br i1 %exitcond.not.i134.i1611, label %.thread2221, label %.preheader.i131.i1608, !llvm.loop !141

bb.vh:                                            ; preds = %.thread156.i1597.thread, %bb.uu, %.thread156.i1597, %.thread157.i1596, %bb.ve, %.noexc1624, %.noexc1625, %.noexc1626, %.noexc1627, %.noexc1628
  %.2.i1496 = phi ptr [ @.str.206, %bb.ve ], [ @.str.198, %.noexc1624 ], [ @.str.199, %.noexc1625 ], [ @.str.200, %.noexc1626 ], [ @.str.201, %.noexc1627 ], [ @.str.202, %.noexc1628 ], [ @.str.197, %bb.uu ], [ @.str.203, %.thread156.i1597 ], [ @.str.205, %.thread157.i1596 ], [ @.str.203, %.thread156.i1597.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  %i.bkf = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.bkg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bkf, ptr noundef nonnull @.str.179, ptr noundef nonnull %.2.i1496) #24 ; 0 uses
  br label %.thread2186

bb.vi:                                            ; preds = %.thread155.i1598, %.thread154.i1599, %.thread153.i1601, %.thread152.i1604, %.thread.i1606
  %i.bkh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %bb.wr

.thread2221:                                      ; preds = %.preheader.i131.i1608, %bb.vg, %.noexc1626, %.noexc1628
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %_ZL12is8bitFormat6Format.exit1629

.thread2224:                                      ; preds = %.noexc1624, %.noexc1625, %.noexc1627
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  br label %bb.vj

.loopexit2283:                                    ; preds = %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1538, %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1495, %bb.vf, %bb.ul
  %.262054.ph = phi i32 [ %.22031.jt2, %bb.ul ], [ %.192048, %_ZL14writeBinBitmapP8_IO_FILEPKfiii.exit.i1495 ], [ %.22031.jt2, %bb.vf ], [ %.20204949334936, %_ZL20writeTextBitmapFloatP8_IO_FILEPKfiii.exit.i1538 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  switch i32 %.262054.ph, label %_ZL12is8bitFormat6Format.exit1629 [
    i32 6, label %bb.vj
    i32 4, label %bb.vj
    i32 2, label %bb.vj
    i32 1, label %bb.vj
    i32 8, label %bb.vj
  ]

bb.vj:                                            ; preds = %.loopexit2283, %.loopexit2283, %.loopexit2283, %.loopexit2283, %.loopexit2283, %.thread2224
  %i.bki = icmp ne ptr %.1791.jt2, null
  %i.bkj = icmp ne ptr %.1789.jt2, null
  %or.cond80 = select i1 %i.bki, i1 true, i1 %i.bkj
  %or.cond82 = select i1 %or.cond80, i1 true, i1 %i.wg
  br i1 %or.cond82, label %bb.vk, label %.thread2186

bb.vk:                                            ; preds = %bb.vj
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  store ptr %.sroa.01752.1, ptr %50, align 8, !tbaa !100, !alias.scope !213
  %i.bkk = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i32 %.sroa.171764.0, ptr %i.bkk, align 8, !tbaa !105, !alias.scope !213
  %i.bkl = getelementptr inbounds nuw i8, ptr %50, i64 12
  store i32 %.sroa.27.0, ptr %i.bkl, align 4, !tbaa !106, !alias.scope !213
  %i.bkm = getelementptr inbounds nuw i8, ptr %50, i64 16
  store i32 %i.bet, ptr %i.bkm, align 8, !tbaa !107, !alias.scope !213
  %i.bkn = getelementptr inbounds nuw i8, ptr %50, i64 20
  store i32 0, ptr %i.bkn, align 4, !tbaa !108, !alias.scope !213
  invoke void @_ZN7msdfgen12simulate8bitERKNS_13BitmapSectionIfLi4EEE(ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %bb.vl unwind label %bb.vm

bb.vl:                                            ; preds = %bb.vk
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br label %_ZL12is8bitFormat6Format.exit1629

bb.vm:                                            ; preds = %bb.vk
  %i.bko = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br label %bb.wr

_ZL12is8bitFormat6Format.exit1629:                ; preds = %.loopexit2283.thread, %.thread2221, %.loopexit2283, %bb.vl
  br i1 %i.wg, label %bb.vn, label %bb.vq

bb.vn:                                            ; preds = %_ZL12is8bitFormat6Format.exit1629
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  store ptr %.sroa.01752.1, ptr %51, align 8, !tbaa !204, !alias.scope !216
  %i.bkp = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i32 %.sroa.171764.0, ptr %i.bkp, align 8, !tbaa !209, !alias.scope !216
  %i.bkq = getelementptr inbounds nuw i8, ptr %51, i64 12
  store i32 %.sroa.27.0, ptr %i.bkq, align 4, !tbaa !210, !alias.scope !216
  %i.bkr = getelementptr inbounds nuw i8, ptr %51, i64 16
  store i32 %i.bet, ptr %i.bkr, align 8, !tbaa !211, !alias.scope !216
  %i.bks = getelementptr inbounds nuw i8, ptr %51, i64 20
  store i32 0, ptr %i.bks, align 4, !tbaa !212, !alias.scope !216
  %i.bkt = invoke noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 19, i32 noundef %.2778.jt2)
          to label %bb.vo unwind label %bb.vp

bb.vo:                                            ; preds = %bb.vn
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  %i.bku = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.180, double noundef %i.bkt) ; 0 uses
  br label %bb.vq

bb.vp:                                            ; preds = %bb.vn
end_hunk_1
