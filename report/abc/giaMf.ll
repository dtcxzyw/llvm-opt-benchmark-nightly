Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMf?download=true
inline.NumInlined: 878
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 38
begin_hunk_0_@Mf_ObjMergeOrder:bb.a
  %i.awb = getelementptr inbounds nuw [144 x i8], ptr @s_PPMasks, i64 %i.awa
  %i.awc = getelementptr inbounds [24 x i8], ptr %i.awb, i64 %indvars.iv.next.i120.i.us.us.us ; 3 uses
  %i.awd = load i64, ptr %i.awc, align 8, !tbaa !8 ; 4 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awc, i64 8
  %i.awf = load i64, ptr %i.awe, align 8, !tbaa !8 ; 4 uses
  %i.awg = zext i32 %i.avz to i64                 ; 7 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awc, i64 16
  %i.awi = load i64, ptr %i.awh, align 8, !tbaa !8 ; 4 uses
  br i1 %min.iters.check1542, label %scalar.ph1541, label %vector.ph1543

vector.ph1543:                                    ; preds = %.lr.ph.i544.us.us.us
  %broadcast.splatinsert1545 = insertelement <2 x i64> poison, i64 %i.awd, i64 0
  %broadcast.splat1546 = shufflevector <2 x i64> %broadcast.splatinsert1545, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1547 = insertelement <2 x i64> poison, i64 %i.awf, i64 0
  %broadcast.splat1548 = shufflevector <2 x i64> %broadcast.splatinsert1547, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1549 = insertelement <2 x i64> poison, i64 %i.awg, i64 0
  %broadcast.splat1550 = shufflevector <2 x i64> %broadcast.splatinsert1549, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1551 = insertelement <2 x i64> poison, i64 %i.awi, i64 0
  %broadcast.splat1552 = shufflevector <2 x i64> %broadcast.splatinsert1551, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1553

vector.body1553:                                  ; preds = %vector.body1553, %vector.ph1543
  %index1554 = phi i64 [ 0, %vector.ph1543 ], [ %index.next1557, %vector.body1553 ] ; 2 uses
  %i.awj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index1554 ; 3 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 16 ; 2 uses
  %wide.load1555 = load <2 x i64>, ptr %i.awj, align 16, !tbaa !8 ; 3 uses
  %wide.load1556 = load <2 x i64>, ptr %i.awk, align 16, !tbaa !8 ; 3 uses
  %i.awl = and <2 x i64> %wide.load1555, %broadcast.splat1546
  %i.awm = and <2 x i64> %wide.load1556, %broadcast.splat1546
  %i.awn = and <2 x i64> %wide.load1555, %broadcast.splat1548
  %i.awo = and <2 x i64> %wide.load1556, %broadcast.splat1548
  %i.awp = shl <2 x i64> %i.awn, %broadcast.splat1550
  %i.awq = shl <2 x i64> %i.awo, %broadcast.splat1550
  %i.awr = or <2 x i64> %i.awp, %i.awl
  %i.aws = or <2 x i64> %i.awq, %i.awm
  %i.awt = and <2 x i64> %wide.load1555, %broadcast.splat1552
  %i.awu = and <2 x i64> %wide.load1556, %broadcast.splat1552
  %i.awv = lshr <2 x i64> %i.awt, %broadcast.splat1550
  %i.aww = lshr <2 x i64> %i.awu, %broadcast.splat1550
  %i.awx = or <2 x i64> %i.awr, %i.awv
  %i.awy = or <2 x i64> %i.aws, %i.aww
  store <2 x i64> %i.awx, ptr %i.awj, align 16, !tbaa !8
  store <2 x i64> %i.awy, ptr %i.awk, align 16, !tbaa !8
  %index.next1557 = add nuw i64 %index1554, 4     ; 2 uses
  %i.awz = icmp eq i64 %index.next1557, %n.vec1544
  br i1 %i.awz, label %Abc_TtSwapVars.exit.us.us.us, label %vector.body1553, !llvm.loop !229

scalar.ph1541:                                    ; preds = %.lr.ph.i544.us.us.us
  %i.axa = load i64, ptr %i.o, align 16, !tbaa !8 ; 3 uses
  %i.axb = and i64 %i.axa, %i.awd
  %i.axc = and i64 %i.axa, %i.awf
  %i.axd = shl i64 %i.axc, %i.awg
  %i.axe = or i64 %i.axd, %i.axb
  %i.axf = and i64 %i.axa, %i.awi
  %i.axg = lshr i64 %i.axf, %i.awg
  %i.axh = or i64 %i.axe, %i.axg
  store i64 %i.axh, ptr %i.o, align 16, !tbaa !8
  br i1 %exitcond150.not.i.us.us.us, label %Abc_TtSwapVars.exit.us.us.us, label %scalar.ph1541.1

scalar.ph1541.1:                                  ; preds = %scalar.ph1541
  %i.axi = load i64, ptr %i.yo, align 8, !tbaa !8 ; 3 uses
  %i.axj = and i64 %i.axi, %i.awd
  %i.axk = and i64 %i.axi, %i.awf
  %i.axl = shl i64 %i.axk, %i.awg
  %i.axm = or i64 %i.axl, %i.axj
  %i.axn = and i64 %i.axi, %i.awi
  %i.axo = lshr i64 %i.axn, %i.awg
  %i.axp = or i64 %i.axm, %i.axo
  store i64 %i.axp, ptr %i.yo, align 8, !tbaa !8
  br i1 %exitcond150.not.i.us.us.us.1, label %Abc_TtSwapVars.exit.us.us.us, label %scalar.ph1541.2

scalar.ph1541.2:                                  ; preds = %scalar.ph1541.1
  %i.axq = load i64, ptr %i.yp, align 16, !tbaa !8 ; 3 uses
  %i.axr = and i64 %i.axq, %i.awd
  %i.axs = and i64 %i.axq, %i.awf
  %i.axt = shl i64 %i.axs, %i.awg
  %i.axu = or i64 %i.axt, %i.axr
  %i.axv = and i64 %i.axq, %i.awi
  %i.axw = lshr i64 %i.axv, %i.awg
  %i.axx = or i64 %i.axu, %i.axw
  store i64 %i.axx, ptr %i.yp, align 16, !tbaa !8
  br label %Abc_TtSwapVars.exit.us.us.us

Abc_TtSwapVars.exit.us.us.us:                     ; preds = %bb.bl, %middle.block1576, %vector.body1553, %scalar.ph1541, %scalar.ph1541.1, %scalar.ph1541.2, %bb.bn, %bb.bm, %bb.bk, %bb.bh
  %i.axy = add nsw i32 %.017.i119.i.us.us.us, -1
  br label %bb.bo

bb.bo:                                            ; preds = %Abc_TtSwapVars.exit.us.us.us, %.lr.ph.i117.i.us.us.us
  %.1.i121.i.us.us.us = phi i32 [ %.017.i119.i.us.us.us, %.lr.ph.i117.i.us.us.us ], [ %i.axy, %Abc_TtSwapVars.exit.us.us.us ] ; 2 uses
  %i.axz = icmp samesign ugt i64 %indvars.iv.i118.i.us.us.us, 1
  %i.aya = icmp sgt i32 %.1.i121.i.us.us.us, -1
  %i.ayb = select i1 %i.axz, i1 %i.aya, i1 false
  br i1 %i.ayb, label %.lr.ph.i117.i.us.us.us, label %Abc_TtExpand.exit122.i.us.us.us, !llvm.loop !209

Abc_TtExpand.exit122.i.us.us.us:                  ; preds = %bb.bo, %Abc_TtExpand.exit115.i.us.us.us
  br i1 %.not179.i.us.us.us, label %Abc_TtMinBase.exit.us.us.us, label %.lr.ph.preheader.i123.i.us.us.us

.lr.ph.preheader.i123.i.us.us.us:                 ; preds = %Abc_TtExpand.exit122.i.us.us.us
  %wide.trip.count.i124.i.us.us.us = zext nneg i32 %i.acm to i64 ; 7 uses
  %min.iters.check1526 = icmp ult i32 %i.acl, 2
  br i1 %min.iters.check1526, label %.lr.ph.i125.i.us.us.us, label %vector.ph1527

vector.ph1527:                                    ; preds = %.lr.ph.preheader.i123.i.us.us.us
  %n.vec1528 = and i64 %wide.trip.count.i124.i.us.us.us, 2147483644
  br label %vector.body1529

vector.body1529:                                  ; preds = %vector.body1529, %vector.ph1527
  %index1530 = phi i64 [ 0, %vector.ph1527 ], [ %index.next1537, %vector.body1529 ] ; 5 uses
  %i.ayc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index1530 ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 16
  %wide.load1531 = load <2 x i64>, ptr %i.ayc, align 16, !tbaa !8 ; 2 uses
  %wide.load1532 = load <2 x i64>, ptr %i.ayd, align 16, !tbaa !8 ; 2 uses
  %i.aye = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index1530 ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 16
  %wide.load1533 = load <2 x i64>, ptr %i.aye, align 16, !tbaa !8
  %wide.load1534 = load <2 x i64>, ptr %i.ayf, align 16, !tbaa !8
  %i.ayg = and <2 x i64> %wide.load1533, %wide.load1531
  %i.ayh = and <2 x i64> %wide.load1534, %wide.load1532
  %i.ayi = xor <2 x i64> %wide.load1531, splat (i64 -1)
  %i.ayj = xor <2 x i64> %wide.load1532, splat (i64 -1)
  %i.ayk = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index1530 ; 2 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 16
  %wide.load1535 = load <2 x i64>, ptr %i.ayk, align 16, !tbaa !8
  %wide.load1536 = load <2 x i64>, ptr %i.ayl, align 16, !tbaa !8
  %i.aym = and <2 x i64> %wide.load1535, %i.ayi
  %i.ayn = and <2 x i64> %wide.load1536, %i.ayj
  %i.ayo = or <2 x i64> %i.aym, %i.ayg
  %i.ayp = or <2 x i64> %i.ayn, %i.ayh
  %i.ayq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index1530 ; 2 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 16
  store <2 x i64> %i.ayo, ptr %i.ayq, align 16, !tbaa !8
  store <2 x i64> %i.ayp, ptr %i.ayr, align 16, !tbaa !8
  %index.next1537 = add nuw i64 %index1530, 4     ; 2 uses
  %i.ays = icmp eq i64 %index.next1537, %n.vec1528
  br i1 %i.ays, label %Abc_TtMux.exit.i.us.us.us, label %vector.body1529, !llvm.loop !230

.lr.ph.i125.i.us.us.us:                           ; preds = %.lr.ph.preheader.i123.i.us.us.us, %.lr.ph.i125.i.us.us.us
  %indvars.iv.i126.i.us.us.us = phi i64 [ %indvars.iv.next.i127.i.us.us.us, %.lr.ph.i125.i.us.us.us ], [ 0, %.lr.ph.preheader.i123.i.us.us.us ] ; 5 uses
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i126.i.us.us.us
  %i.ayu = load i64, ptr %i.ayt, align 8, !tbaa !8 ; 2 uses
  %i.ayv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i126.i.us.us.us
  %i.ayw = load i64, ptr %i.ayv, align 8, !tbaa !8
  %i.ayx = and i64 %i.ayw, %i.ayu
  %i.ayy = xor i64 %i.ayu, -1
  %i.ayz = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i126.i.us.us.us
  %i.aza = load i64, ptr %i.ayz, align 8, !tbaa !8
  %i.azb = and i64 %i.aza, %i.ayy
  %i.azc = or i64 %i.azb, %i.ayx
  %i.azd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i126.i.us.us.us
  store i64 %i.azc, ptr %i.azd, align 8, !tbaa !8
  %indvars.iv.next.i127.i.us.us.us = add nuw nsw i64 %indvars.iv.i126.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i128.i.us.us.us = icmp eq i64 %indvars.iv.next.i127.i.us.us.us, %wide.trip.count.i124.i.us.us.us
  br i1 %exitcond.not.i128.i.us.us.us, label %Abc_TtMux.exit.i.us.us.us, label %.lr.ph.i125.i.us.us.us, !llvm.loop !231

Abc_TtMux.exit.i.us.us.us:                        ; preds = %vector.body1529, %.lr.ph.i125.i.us.us.us
  %i.aze = load i64, ptr %i.l, align 16, !tbaa !8 ; 2 uses
  %.not.i287.us.us.us = trunc i64 %i.aze to i1
  %i.azf = trunc i64 %i.aze to i32
  %.mux.i.us.us.us = and i32 %i.azf, 1
  br i1 %.not.i287.us.us.us, label %.lr.ph.i131.i.us.us.us.preheader, label %Abc_TtNot.exit.i.us.us.us

.lr.ph.i131.i.us.us.us.preheader:                 ; preds = %Abc_TtMux.exit.i.us.us.us
  %min.iters.check1514 = icmp ult i32 %i.acl, 2
  br i1 %min.iters.check1514, label %.lr.ph.i131.i.us.us.us, label %vector.ph1515

vector.ph1515:                                    ; preds = %.lr.ph.i131.i.us.us.us.preheader
  %n.vec1516 = and i64 %wide.trip.count.i124.i.us.us.us, 2147483644
  br label %vector.body1517

vector.body1517:                                  ; preds = %vector.body1517, %vector.ph1515
  %index1518 = phi i64 [ 0, %vector.ph1515 ], [ %index.next1521, %vector.body1517 ] ; 2 uses
  %i.azg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index1518 ; 3 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 16 ; 2 uses
  %wide.load1519 = load <2 x i64>, ptr %i.azg, align 16, !tbaa !8
  %wide.load1520 = load <2 x i64>, ptr %i.azh, align 16, !tbaa !8
  %i.azi = xor <2 x i64> %wide.load1519, splat (i64 -1)
  %i.azj = xor <2 x i64> %wide.load1520, splat (i64 -1)
  store <2 x i64> %i.azi, ptr %i.azg, align 16, !tbaa !8
  store <2 x i64> %i.azj, ptr %i.azh, align 16, !tbaa !8
  %index.next1521 = add nuw i64 %index1518, 4     ; 2 uses
  %i.azk = icmp eq i64 %index.next1521, %n.vec1516
  br i1 %i.azk, label %Abc_TtNot.exit.i.us.us.us, label %vector.body1517, !llvm.loop !232

.lr.ph.i131.i.us.us.us:                           ; preds = %.lr.ph.i131.i.us.us.us.preheader, %.lr.ph.i131.i.us.us.us
  %indvars.iv.i132.i.us.us.us = phi i64 [ %indvars.iv.next.i133.i.us.us.us, %.lr.ph.i131.i.us.us.us ], [ 0, %.lr.ph.i131.i.us.us.us.preheader ] ; 2 uses
  %i.azl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i132.i.us.us.us ; 2 uses
  %i.azm = load i64, ptr %i.azl, align 8, !tbaa !8
  %i.azn = xor i64 %i.azm, -1
  store i64 %i.azn, ptr %i.azl, align 8, !tbaa !8
  %indvars.iv.next.i133.i.us.us.us = add nuw nsw i64 %indvars.iv.i132.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i134.i.us.us.us = icmp eq i64 %indvars.iv.next.i133.i.us.us.us, %wide.trip.count.i124.i.us.us.us
  br i1 %exitcond.not.i134.i.us.us.us, label %Abc_TtNot.exit.i.us.us.us, label %.lr.ph.i131.i.us.us.us, !llvm.loop !233

Abc_TtNot.exit.i.us.us.us:                        ; preds = %vector.body1517, %.lr.ph.i131.i.us.us.us, %Abc_TtMux.exit.i.us.us.us
  %i.azo = phi i32 [ %.mux.i.us.us.us, %Abc_TtMux.exit.i.us.us.us ], [ 1, %.lr.ph.i131.i.us.us.us ], [ 1, %vector.body1517 ] ; 2 uses
  %.not.i521.us.us.us = icmp eq i32 %i.ack, 0
  br i1 %.not.i521.us.us.us, label %Abc_TtMinBase.exit.us.us.us, label %.lr.ph.split.i523.us.us.us

.lr.ph.split.i523.us.us.us:                       ; preds = %Abc_TtNot.exit.i.us.us.us
  %i.azp = sext i32 %i.acm to i64
  %.idx.i.i.us.us.us = shl nsw i64 %i.azp, 3
  %i.azq = getelementptr inbounds i8, ptr %i.l, i64 %.idx.i.i.us.us.us ; 3 uses
  %wide.trip.count.i525.us.us.us = zext nneg i32 %i.ack to i64
  %min.iters.check1463 = icmp ult i32 %i.acl, 2
  %n.vec1465 = and i64 %wide.trip.count.i124.i.us.us.us, 2147483644
  br label %.lr.ph.split.split.split.i.us.us.us

.lr.ph.split.split.split.i.us.us.us:              ; preds = %Abc_TtHasVar.exit.thread.i.us.us.us, %.lr.ph.split.i523.us.us.us
  %indvars.iv.i526.us.us.us = phi i64 [ 0, %.lr.ph.split.i523.us.us.us ], [ %indvars.iv.next.i531.us.us.us, %Abc_TtHasVar.exit.thread.i.us.us.us ] ; 6 uses
  %.038.i.us.us.us = phi i32 [ 0, %.lr.ph.split.i523.us.us.us ], [ %.1.i530.us.us.us, %Abc_TtHasVar.exit.thread.i.us.us.us ] ; 7 uses
  %i.azr = icmp samesign ult i64 %indvars.iv.i526.us.us.us, 6
  %i.azs = trunc i64 %indvars.iv.i526.us.us.us to i32 ; 5 uses
  br i1 %i.azr, label %.lr.ph.i.i537.us.us.us, label %.preheader.lr.ph.i.i.us.us.us

.preheader.lr.ph.i.i.us.us.us:                    ; preds = %.lr.ph.split.split.split.i.us.us.us
  %i.azt = add i32 %i.azs, -6                     ; 2 uses
  %i.azu = shl nuw nsw i32 1, %i.azt
  %i.azv = shl nuw nsw i32 2, %i.azt
  %i.azw = zext nneg i32 %i.azv to i64
  %i.azx = zext nneg i32 %i.azu to i64            ; 2 uses
  br label %.preheader.i.i527.us.us.us

.preheader.i.i527.us.us.us:                       ; preds = %bb.br, %.preheader.lr.ph.i.i.us.us.us
  %.03343.i.i.us.us.us = phi ptr [ %i.l, %.preheader.lr.ph.i.i.us.us.us ], [ %i.bab, %bb.br ] ; 3 uses
  %invariant.gep.i.i.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.03343.i.i.us.us.us, i64 %i.azx
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bq, %.preheader.i.i527.us.us.us
  %indvars.iv.i.i528.us.us.us = phi i64 [ 0, %.preheader.i.i527.us.us.us ], [ %indvars.iv.next.i.i535.us.us.us, %bb.bq ] ; 3 uses
  %i.azy = getelementptr inbounds nuw [8 x i8], ptr %.03343.i.i.us.us.us, i64 %indvars.iv.i.i528.us.us.us
  %i.azz = load i64, ptr %i.azy, align 8, !tbaa !8
  %gep.i.i.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %indvars.iv.i.i528.us.us.us
  %i.baa = load i64, ptr %gep.i.i.us.us.us, align 8, !tbaa !8
  %.not.i.i529.us.us.us = icmp eq i64 %i.azz, %i.baa
  br i1 %.not.i.i529.us.us.us, label %bb.bq, label %Abc_TtHasVar.exit.thread30.i.us.us.us

bb.bq:                                            ; preds = %bb.bp
  %indvars.iv.next.i.i535.us.us.us = add nuw nsw i64 %indvars.iv.i.i528.us.us.us, 1 ; 2 uses
  %exitcond.not.i.i536.us.us.us = icmp eq i64 %indvars.iv.next.i.i535.us.us.us, %i.azx
  br i1 %exitcond.not.i.i536.us.us.us, label %bb.br, label %bb.bp, !llvm.loop !234

bb.br:                                            ; preds = %bb.bq
  %i.bab = getelementptr inbounds nuw [8 x i8], ptr %.03343.i.i.us.us.us, i64 %i.azw ; 2 uses
  %i.bac = icmp ult ptr %i.bab, %i.azq
  br i1 %i.bac, label %.preheader.i.i527.us.us.us, label %Abc_TtHasVar.exit.thread.i.us.us.us, !llvm.loop !235

.lr.ph.i.i537.us.us.us:                           ; preds = %.lr.ph.split.split.split.i.us.us.us
  %i.bad = shl nuw nsw i32 1, %i.azs
  %i.bae = zext nneg i32 %i.bad to i64
  %i.baf = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i526.us.us.us
  %i.bag = load i64, ptr %i.baf, align 8, !tbaa !8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.lr.ph.i.i537.us.us.us
  %indvars.iv52.i.i.us.us.us = phi i64 [ 0, %.lr.ph.i.i537.us.us.us ], [ %indvars.iv.next53.i.i.us.us.us, %bb.bt ] ; 2 uses
  %i.bah = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv52.i.i.us.us.us
  %i.bai = load i64, ptr %i.bah, align 8, !tbaa !8 ; 2 uses
  %i.baj = lshr i64 %i.bai, %i.bae
  %i.bak = xor i64 %i.baj, %i.bai
  %i.bal = and i64 %i.bak, %i.bag
  %.not39.i.i.us.us.us = icmp eq i64 %i.bal, 0
  br i1 %.not39.i.i.us.us.us, label %bb.bt, label %Abc_TtHasVar.exit.thread30.i.us.us.us

bb.bt:                                            ; preds = %bb.bs
  %indvars.iv.next53.i.i.us.us.us = add nuw nsw i64 %indvars.iv52.i.i.us.us.us, 1 ; 2 uses
  %exitcond56.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next53.i.i.us.us.us, %wide.trip.count.i124.i.us.us.us
  br i1 %exitcond56.not.i.i.us.us.us, label %Abc_TtHasVar.exit.thread.i.us.us.us, label %bb.bs, !llvm.loop !236

Abc_TtHasVar.exit.thread30.i.us.us.us:            ; preds = %bb.bs, %bb.bp
  %i.bam = sext i32 %.038.i.us.us.us to i64       ; 2 uses
  %i.ban = icmp sgt i64 %indvars.iv.i526.us.us.us, %i.bam
  br i1 %i.ban, label %bb.bu, label %Abc_TtSwapVars.exit766.us.us.us

bb.bu:                                            ; preds = %Abc_TtHasVar.exit.thread30.i.us.us.us
  %i.bao = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %indvars.iv.i526.us.us.us
  %i.bap = load i32, ptr %i.bao, align 4, !tbaa !15
  %i.baq = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %i.bam
  store i32 %i.bap, ptr %i.baq, align 4, !tbaa !15
  %i.bar = icmp eq i32 %.038.i.us.us.us, %i.azs
  br i1 %i.bar, label %Abc_TtSwapVars.exit766.us.us.us, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %spec.select.i732.us.us.us = call i32 @llvm.smax.i32(i32 range(i32 -2147483648, 31) %i.azs, i32 range(i32 -2147483648, 30) %.038.i.us.us.us) ; 5 uses
  %spec.select117.i733.us.us.us = call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 31) %i.azs, i32 range(i32 -2147483648, 30) %.038.i.us.us.us) ; 8 uses
  %i.bas = icmp slt i32 %spec.select.i732.us.us.us, 6
  br i1 %i.bas, label %.lr.ph.i758.us.us.us, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.bat = icmp slt i32 %spec.select117.i733.us.us.us, 6
  %i.bau = add nsw i32 %spec.select.i732.us.us.us, -6 ; 4 uses
  %i.bav = shl nuw nsw i32 1, %i.bau              ; 3 uses
  br i1 %i.bat, label %.preheader.lr.ph.i749.us.us.us, label %.preheader120.lr.ph.i736.us.us.us

.preheader120.lr.ph.i736.us.us.us:                ; preds = %bb.bw
  %i.baw = add nsw i32 %spec.select117.i733.us.us.us, -6 ; 5 uses
  %i.bax = shl nuw nsw i32 1, %i.baw
  %i.bay = shl nuw nsw i32 2, %i.baw              ; 2 uses
  %i.baz = shl nuw nsw i32 2, %i.bau
  %i.bba = zext nneg i32 %i.baz to i64
  %i.bbb = zext nneg i32 %i.bay to i64            ; 3 uses
  %i.bbc = zext nneg i32 %i.bax to i64            ; 6 uses
  %i.bbd = zext nneg i32 %i.bav to i64            ; 4 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.bbb, i64 %i.bbd)
  %i.bbe = icmp samesign ult i32 %i.bay, %i.bav
  %umin = zext i1 %i.bbe to i64                   ; 2 uses
  %i.bbf = or disjoint i64 %umin, %i.bbb
  %i.bbg = sub nsw i64 %umax, %i.bbf
  %i.bbh = add nsw i32 %spec.select117.i733.us.us.us, -5
  %i.bbi = zext nneg i32 %i.bbh to i64
  %i.bbj = lshr i64 %i.bbg, %i.bbi
  %i.bbk = add i64 %i.bbj, %umin
  %i.bbl = shl i64 %i.bbk, 3
  %i.bbm = add nsw i32 %spec.select117.i733.us.us.us, -5
  %i.bbn = zext nneg i32 %i.bbm to i64
  %i.bbo = shl i64 %i.bbl, %i.bbn                 ; 2 uses
  %i.bbp = shl nuw nsw i64 %i.bbc, 4
  %i.bbq = add nuw nsw i64 %i.bbd, %i.bbc
  %i.bbr = shl nuw nsw i64 %i.bbq, 3
  %i.bbs = add nsw i32 %spec.select.i732.us.us.us, -5
  %i.bbt = zext i32 %i.bbs to i64
  %i.bbu = add nuw nsw i64 %i.bbt, 3
  %i.bbv = getelementptr i8, ptr %i.l, i64 %i.bbo
  %i.bbw = getelementptr i8, ptr %i.bbv, i64 %i.bbp
  %i.bbx = getelementptr i8, ptr %i.l, i64 %i.bbr
  %i.bby = getelementptr i8, ptr %i.bbx, i64 %i.bbo
  %min.iters.check1500 = icmp ult i32 %i.baw, 2
  %n.vec1502 = and i64 %i.bbc, 2147483644
  %xtraiter2138 = and i64 %i.bbc, 1
  %i.bbz = icmp eq i32 %i.baw, 0
  %unroll_iter2141 = and i64 %i.bbc, 2147483646
  %lcmp.mod2139.not = icmp eq i64 %xtraiter2138, 0
  %lcmp.mod2140 = icmp eq i32 %i.baw, 0
  br label %.preheader120.i737.us.us.us

.preheader120.i737.us.us.us:                      ; preds = %bb.bx, %.preheader120.lr.ph.i736.us.us.us
  %indvar = phi i64 [ %indvar.next, %bb.bx ], [ 0, %.preheader120.lr.ph.i736.us.us.us ] ; 2 uses
  %.1124.i738.us.us.us = phi ptr [ %i.bct, %bb.bx ], [ %i.l, %.preheader120.lr.ph.i736.us.us.us ] ; 3 uses
  %i.bca = shl i64 %indvar, %i.bbu                ; 2 uses
  %invariant.gep.i739.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.1124.i738.us.us.us, i64 %i.bbc ; 2 uses
  %invariant.gep157.i740.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.1124.i738.us.us.us, i64 %i.bbd ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bbw, i64 %i.bca
  %scevgep1498 = getelementptr i8, ptr %i.bby, i64 %i.bca
  %bound0 = icmp ult ptr %invariant.gep.i739.us.us.us, %scevgep1498
  %bound1 = icmp ult ptr %invariant.gep157.i740.us.us.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader119.i741.us.us.us

.preheader119.i741.us.us.us:                      ; preds = %middle.block1510, %.preheader120.i737.us.us.us
  %indvars.iv138.i742.us.us.us = phi i64 [ 0, %.preheader120.i737.us.us.us ], [ %indvars.iv.next139.i748.us.us.us, %middle.block1510 ] ; 3 uses
  %gep.i743.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i739.us.us.us, i64 %indvars.iv138.i742.us.us.us ; 4 uses
  %gep158.i744.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i740.us.us.us, i64 %indvars.iv138.i742.us.us.us ; 4 uses
  %brmerge2232 = select i1 %min.iters.check1500, i1 true, i1 %found.conflict
  br i1 %brmerge2232, label %scalar.ph1499.preheader, label %vector.body1503

scalar.ph1499.preheader:                          ; preds = %.preheader119.i741.us.us.us
  br i1 %i.bbz, label %scalar.ph1499.epil.preheader, label %scalar.ph1499

vector.body1503:                                  ; preds = %.preheader119.i741.us.us.us, %vector.body1503
  %index1504 = phi i64 [ %index.next1509, %vector.body1503 ], [ 0, %.preheader119.i741.us.us.us ] ; 3 uses
  %i.bcb = getelementptr inbounds nuw [8 x i8], ptr %gep.i743.us.us.us, i64 %index1504 ; 3 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bcb, i64 16 ; 2 uses
  %wide.load1505 = load <2 x i64>, ptr %i.bcb, align 8, !tbaa !8, !alias.scope !237, !noalias !240
  %wide.load1506 = load <2 x i64>, ptr %i.bcc, align 8, !tbaa !8, !alias.scope !237, !noalias !240
  %i.bcd = getelementptr inbounds nuw [8 x i8], ptr %gep158.i744.us.us.us, i64 %index1504 ; 3 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 16 ; 2 uses
  %wide.load1507 = load <2 x i64>, ptr %i.bcd, align 8, !tbaa !8, !alias.scope !240
  %wide.load1508 = load <2 x i64>, ptr %i.bce, align 8, !tbaa !8, !alias.scope !240
  store <2 x i64> %wide.load1507, ptr %i.bcb, align 8, !tbaa !8, !alias.scope !237, !noalias !240
  store <2 x i64> %wide.load1508, ptr %i.bcc, align 8, !tbaa !8, !alias.scope !237, !noalias !240
  store <2 x i64> %wide.load1505, ptr %i.bcd, align 8, !tbaa !8, !alias.scope !240
  store <2 x i64> %wide.load1506, ptr %i.bce, align 8, !tbaa !8, !alias.scope !240
  %index.next1509 = add nuw i64 %index1504, 4     ; 2 uses
  %i.bcf = icmp eq i64 %index.next1509, %n.vec1502
  br i1 %i.bcf, label %middle.block1510, label %vector.body1503, !llvm.loop !242

scalar.ph1499:                                    ; preds = %scalar.ph1499.preheader, %scalar.ph1499
  %indvars.iv.i745.us.us.us = phi i64 [ %indvars.iv.next.i746.us.us.us.1, %scalar.ph1499 ], [ 0, %scalar.ph1499.preheader ] ; 4 uses
  %niter2142 = phi i64 [ %niter2142.next.1, %scalar.ph1499 ], [ 0, %scalar.ph1499.preheader ]
  %i.bcg = getelementptr inbounds nuw [8 x i8], ptr %gep.i743.us.us.us, i64 %indvars.iv.i745.us.us.us ; 2 uses
  %i.bch = load i64, ptr %i.bcg, align 8, !tbaa !8
  %i.bci = getelementptr inbounds nuw [8 x i8], ptr %gep158.i744.us.us.us, i64 %indvars.iv.i745.us.us.us ; 2 uses
  %i.bcj = load i64, ptr %i.bci, align 8, !tbaa !8
  store i64 %i.bcj, ptr %i.bcg, align 8, !tbaa !8
  store i64 %i.bch, ptr %i.bci, align 8, !tbaa !8
  %indvars.iv.next.i746.us.us.us = or disjoint i64 %indvars.iv.i745.us.us.us, 1 ; 2 uses
  %i.bck = getelementptr inbounds nuw [8 x i8], ptr %gep.i743.us.us.us, i64 %indvars.iv.next.i746.us.us.us ; 2 uses
  %i.bcl = load i64, ptr %i.bck, align 8, !tbaa !8
  %i.bcm = getelementptr inbounds nuw [8 x i8], ptr %gep158.i744.us.us.us, i64 %indvars.iv.next.i746.us.us.us ; 2 uses
  %i.bcn = load i64, ptr %i.bcm, align 8, !tbaa !8
  store i64 %i.bcn, ptr %i.bck, align 8, !tbaa !8
  store i64 %i.bcl, ptr %i.bcm, align 8, !tbaa !8
  %indvars.iv.next.i746.us.us.us.1 = add nuw nsw i64 %indvars.iv.i745.us.us.us, 2 ; 2 uses
  %niter2142.next.1 = add i64 %niter2142, 2       ; 2 uses
  %niter2142.ncmp.1 = icmp eq i64 %niter2142.next.1, %unroll_iter2141
  br i1 %niter2142.ncmp.1, label %middle.block1510.loopexit.unr-lcssa, label %scalar.ph1499, !llvm.loop !243

middle.block1510.loopexit.unr-lcssa:              ; preds = %scalar.ph1499
  br i1 %lcmp.mod2139.not, label %middle.block1510, label %scalar.ph1499.epil.preheader

scalar.ph1499.epil.preheader:                     ; preds = %middle.block1510.loopexit.unr-lcssa, %scalar.ph1499.preheader
  %indvars.iv.i745.us.us.us.epil.init = phi i64 [ 0, %scalar.ph1499.preheader ], [ %indvars.iv.next.i746.us.us.us.1, %middle.block1510.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2140)
end_hunk_0
