begin_hunk_0_@__local_laplacian:entry
  %i.akn = shl <4 x i32> %i.akm, <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ako = shufflevector <4 x i32> %i.akn, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op1569 = add <4 x i32> %i.akk, %i.ako
  %n.vec1370 = and i64 %i.akl, 4294967292         ; 4 uses
  %.cast1374 = trunc nuw i64 %n.vec1370 to i32    ; 2 uses
  %i.akp = shl i32 %.cast1374, 1                  ; 4 uses
  %i.akq = shl nuw nsw i64 %n.vec1370, 2
  %i.akr = sub i32 %i.aiy, %.cast1374
  %cmp.n1411 = icmp eq i64 %n.vec1370, %i.akl
  br label %"for f76.s0.v4"

end_hunk_0
begin_hunk_1_@__local_laplacian:entry
  br i1 %i.ald, label %"for f76.s0.v3.preheader", label %vector.ph1368

vector.ph1368:                                    ; preds = %vector.scevcheck
  %i.ale = add i32 %lsr.iv474, %i.akp
  %i.alf = add i32 %lsr.iv470, %i.akp
  %i.alg = add i32 %lsr.iv466, %i.akp
  %i.alh = add i32 %lsr.iv462, %i.akp
  %i.ali = getelementptr i8, ptr %lsr.iv456, i64 %i.akq
  %invariant.op = add i32 %lsr.iv474, %i.bh
end_hunk_1
begin_hunk_2_@__local_laplacian:entry
  br label %vector.body1376

vector.body1376:                                  ; preds = %vector.body1376, %vector.ph1368
  %index1377 = phi i64 [ 0, %vector.ph1368 ], [ %index.next1409, %vector.body1376 ] ; 3 uses
  %.cast1384 = trunc i64 %index1377 to i32
  %i.alj = shl i32 %.cast1384, 1                  ; 4 uses
  %offset.idx1386 = shl i64 %index1377, 2
  %next.gep = getelementptr i8, ptr %lsr.iv456, i64 %offset.idx1386
  %.reass = add i32 %i.alj, %invariant.op
  %.reass1564 = add i32 %i.alj, %invariant.op1563
  %.reass1566 = add i32 %i.alj, %invariant.op1565
  %.reass1568 = add i32 %i.alj, %invariant.op1567
  %i.alk = sext i32 %.reass1568 to i64
  %i.all = getelementptr [4 x i8], ptr %i.afu, i64 %i.alk ; 2 uses
end_hunk_2
begin_hunk_3_@__local_laplacian:entry
  %i.ati = shl <4 x i32> %i.ath, <i32 1, i32 poison, i32 poison, i32 poison>
  %i.atj = shufflevector <4 x i32> %i.ati, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op1579 = add <4 x i32> %i.atf, %i.atj
  %n.vec1437 = and i64 %i.atg, 4294967292         ; 4 uses
  %.cast1441 = trunc nuw i64 %n.vec1437 to i32    ; 2 uses
  %i.atk = shl i32 %.cast1441, 1                  ; 4 uses
  %i.atl = shl nuw nsw i64 %n.vec1437, 2
  %i.atm = sub i32 %i.art, %.cast1441
  %cmp.n1481 = icmp eq i64 %n.vec1437, %i.atg
  br label %"for f77.s0.v4.us"

end_hunk_3
begin_hunk_4_@__local_laplacian:entry
  br i1 %i.aty, label %"for f77.s0.v3.us.preheader", label %vector.ph1435

vector.ph1435:                                    ; preds = %vector.scevcheck1418
  %i.atz = add i32 %lsr.iv449.us, %i.atk
  %i.aua = add i32 %lsr.iv445.us, %i.atk
  %i.aub = add i32 %lsr.iv441.us, %i.atk
  %i.auc = add i32 %lsr.iv437.us, %i.atk
  %i.aud = getelementptr i8, ptr %lsr.iv431.us, i64 %i.atl
  %invariant.op1571 = add i32 %lsr.iv449.us, %i.ax
end_hunk_4
begin_hunk_5_@__local_laplacian:entry
  br label %vector.body1443

vector.body1443:                                  ; preds = %vector.body1443, %vector.ph1435
  %index1444 = phi i64 [ 0, %vector.ph1435 ], [ %index.next1479, %vector.body1443 ] ; 3 uses
  %.cast1451 = trunc i64 %index1444 to i32
  %i.aue = shl i32 %.cast1451, 1                  ; 4 uses
  %offset.idx1453 = shl i64 %index1444, 2
  %next.gep1454 = getelementptr i8, ptr %lsr.iv431.us, i64 %offset.idx1453
  %.reass1572 = add i32 %i.aue, %invariant.op1571
  %.reass1574 = add i32 %i.aue, %invariant.op1573
  %.reass1576 = add i32 %i.aue, %invariant.op1575
  %.reass1578 = add i32 %i.aue, %invariant.op1577
  %i.auf = sext i32 %.reass1578 to i64
  %i.aug = getelementptr [4 x i8], ptr %i.aiv, i64 %i.auf ; 2 uses
end_hunk_5
begin_hunk_6_@__local_laplacian:entry
  %i.baa = shl nsw <4 x i32> %i.azz, <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bab = shufflevector <4 x i32> %i.baa, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op1591 = add <4 x i32> %i.azx, %i.bab
  %n.vec1507 = and i64 %i.azy, 2147483644         ; 4 uses
  %.cast1511 = trunc nuw nsw i64 %n.vec1507 to i32 ; 2 uses
  %i.bac = shl nuw i32 %.cast1511, 1              ; 4 uses
  %i.bad = add nsw i64 %n.vec1507, %i.ayr
  %i.bae = sub nsw i32 %i.apm, %.cast1511
  %cmp.n1550 = icmp eq i64 %n.vec1507, %i.azy
  br label %"for f78.s0.v4"

end_hunk_6
begin_hunk_7_@__local_laplacian:entry
  br i1 %i.bat, label %"for f78.s0.v3.preheader", label %vector.ph1505

vector.ph1505:                                    ; preds = %vector.scevcheck1488
  %i.bau = add i32 %lsr.iv422, %i.bac
  %i.bav = add i32 %lsr.iv418, %i.bac
  %i.baw = add i32 %lsr.iv414, %i.bac
  %i.bax = add i32 %lsr.iv410, %i.bac
  %invariant.op1581 = add i32 %lsr.iv422, %i.ak
  %invariant.op1583 = add i32 %lsr.iv418, %i.ak
end_hunk_7
begin_hunk_8_@__local_laplacian:entry
  br label %vector.body1513

vector.body1513:                                  ; preds = %vector.body1513, %vector.ph1505
  %index1514 = phi i64 [ 0, %vector.ph1505 ], [ %index.next1548, %vector.body1513 ] ; 3 uses
  %.cast1521 = trunc i64 %index1514 to i32
  %i.bay = shl i32 %.cast1521, 1                  ; 4 uses
  %.reass1582 = add i32 %i.bay, %invariant.op1581
  %.reass1584 = add i32 %i.bay, %invariant.op1583
  %.reass1586 = add i32 %i.bay, %invariant.op1585
  %.reass1588 = add i32 %i.bay, %invariant.op1587
  %i.baz = sext i32 %.reass1588 to i64
  %i.bba = getelementptr [4 x i8], ptr %i.arq, i64 %i.baz ; 2 uses
end_hunk_8
begin_hunk_9_@par_for___local_laplacian_f8.s0.v6:entry
  %i.cc = shufflevector <4 x i32> %i.cb, <4 x i32> poison, <4 x i32> zeroinitializer
  %mul.overflow7 = icmp slt i32 %i.as, 0
  %invariant.op60 = add <4 x i32> %i.bw, %i.cc
  %n.vec = and i64 %i.bz, 8589934588              ; 4 uses
  %.cast16 = trunc i64 %n.vec to i32              ; 2 uses
  %i.cd = shl i32 %.cast16, 1                     ; 4 uses
  %i.ce = shl nuw nsw i64 %n.vec, 2
  %i.cf = sub i32 %i.m, %.cast16
  %invariant.op54 = add i32 2, %i.p
  %invariant.op56 = add i32 4, %i.p
  %invariant.op58 = add i32 6, %i.p
end_hunk_9
begin_hunk_10_@par_for___local_laplacian_f8.s0.v6:entry
  br i1 %i.cs, label %"for f8.s0.v3.us.preheader", label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.ct = add i32 %lsr.iv19.us, %i.cd
  %i.cu = add i32 %lsr.iv15.us, %i.cd
  %i.cv = add i32 %lsr.iv10.us, %i.cd
  %i.cw = add i32 %lsr.iv6.us, %i.cd
  %i.cx = getelementptr i8, ptr %lsr.iv1.us, i64 %i.ce
  %invariant.op = add i32 %lsr.iv19.us, %i.p
end_hunk_10
begin_hunk_11_@par_for___local_laplacian_f8.s0.v6:entry
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %.cast23 = trunc i64 %index to i32
  %i.cy = shl i32 %.cast23, 1                     ; 4 uses
  %offset.idx24 = add i32 %lsr.iv6.us, %i.cy      ; 4 uses
  %offset.idx25 = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %lsr.iv1.us, i64 %offset.idx25
  %.reass = add i32 %i.cy, %invariant.op
  %.reass51 = add i32 %i.cy, %invariant.op50
  %.reass53 = add i32 %i.cy, %invariant.op52
  %i.cz = add i32 %offset.idx24, %i.p
  %.reass55 = add i32 %offset.idx24, %invariant.op54
  %.reass57 = add i32 %offset.idx24, %invariant.op56
end_hunk_11
begin_hunk_12_@par_for___local_laplacian_f9.s0.v6:entry
  %i.cb = shufflevector <4 x i32> %i.ca, <4 x i32> poison, <4 x i32> zeroinitializer
  %mul.overflow7 = icmp slt i32 %i.aq, 0
  %invariant.op59 = add <4 x i32> %i.bv, %i.cb
  %n.vec = and i64 %i.by, 8589934588              ; 4 uses
  %.cast16 = trunc i64 %n.vec to i32              ; 2 uses
  %i.cc = shl i32 %.cast16, 1                     ; 4 uses
  %i.cd = shl nuw nsw i64 %n.vec, 2
  %i.ce = sub i32 %i.o, %.cast16
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br label %"for f9.s0.v4.us"

end_hunk_12
begin_hunk_13_@par_for___local_laplacian_f9.s0.v6:entry
  br i1 %i.cr, label %"for f9.s0.v3.us.preheader", label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.cs = add i32 %lsr.iv19.us, %i.cc
  %i.ct = add i32 %lsr.iv15.us, %i.cc
  %i.cu = add i32 %lsr.iv10.us, %i.cc
  %i.cv = add i32 %lsr.iv6.us, %i.cc
  %i.cw = getelementptr i8, ptr %lsr.iv1.us, i64 %i.cd
  %invariant.op = add i32 %lsr.iv19.us, %i.v
end_hunk_13
begin_hunk_14_@par_for___local_laplacian_f9.s0.v6:entry
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %.cast23 = trunc i64 %index to i32
  %i.cx = shl i32 %.cast23, 1                     ; 4 uses
  %offset.idx25 = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %lsr.iv1.us, i64 %offset.idx25
  %.reass = add i32 %i.cx, %invariant.op
  %.reass54 = add i32 %i.cx, %invariant.op53
  %.reass56 = add i32 %i.cx, %invariant.op55
  %.reass58 = add i32 %i.cx, %invariant.op57
  %i.cy = sext i32 %.reass58 to i64
  %i.cz = getelementptr [4 x i8], ptr %f8.host, i64 %i.cy ; 2 uses
end_hunk_14
begin_hunk_15_@par_for___local_laplacian_f10.s0.v6:entry
  %i.br = shl nuw <4 x i32> %i.bq, <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op60 = add <4 x i32> %i.bo, %i.bs
  %n.vec = and i64 %i.bp, 4294967292              ; 4 uses
  %.cast17 = trunc nuw i64 %n.vec to i32          ; 2 uses
  %i.bt = shl i32 %.cast17, 1                     ; 4 uses
  %i.bu = add i64 %i.ae, %n.vec
  %i.bv = sub i32 %i.r, %.cast17
  %cmp.n = icmp eq i64 %n.vec, %i.bp
  br label %"for f10.s0.v4.us"

end_hunk_15
begin_hunk_16_@par_for___local_laplacian_f10.s0.v6:entry
  br i1 %.not, label %vector.ph, label %"for f10.s0.v3.us.preheader"

vector.ph:                                        ; preds = %vector.scevcheck
  %i.cf = add i32 %lsr.iv17.us, %i.bt
  %i.cg = add i32 %lsr.iv13.us, %i.bt
  %i.ch = add i32 %lsr.iv9.us, %i.bt
  %i.ci = add i32 %lsr.iv5.us, %i.bt
  %invariant.op = add i32 %lsr.iv17.us, %i.ah
  %invariant.op54 = add i32 %lsr.iv13.us, %i.ah
end_hunk_16
begin_hunk_17_@par_for___local_laplacian_f10.s0.v6:entry
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %.cast24 = trunc i64 %index to i32
  %i.ck = shl i32 %.cast24, 1                     ; 4 uses
  %.reass = add i32 %i.ck, %invariant.op
  %.reass55 = add i32 %i.ck, %invariant.op54
  %.reass57 = add i32 %i.ck, %invariant.op56
  %.reass59 = add i32 %i.ck, %invariant.op58
  %i.cl = sext i32 %.reass59 to i64
  %i.cm = getelementptr [4 x i8], ptr %f9.host, i64 %i.cl ; 2 uses
end_hunk_17
