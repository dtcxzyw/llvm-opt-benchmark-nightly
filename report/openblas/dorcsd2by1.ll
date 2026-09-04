Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dorcsd2by1?download=true
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dorcsd2by1_:bb.a
vector.main.loop.iter.check1605:                  ; preds = %iter.check1616
  %min.iters.check1606 = icmp ult i64 %i.yj, 16
  br i1 %min.iters.check1606, label %vec.epilog.ph1620, label %vector.ph1607

vector.ph1607:                                    ; preds = %vector.main.loop.iter.check1605
  %i.yk = and i64 %i.yj, 12
  %n.vec1608 = and i64 %i.yj, -16                 ; 4 uses
  %i.yl = or disjoint i64 %n.vec1608, 2
  br label %vector.body1609

vector.body1609:                                  ; preds = %vector.body1609, %vector.ph1607
  %index1610 = phi i64 [ 0, %vector.ph1607 ], [ %index.next1611, %vector.body1609 ] ; 2 uses
  %i.ym = getelementptr [8 x i8], ptr %i.w, i64 %index1610 ; 4 uses
  %i.yn = getelementptr i8, ptr %i.ym, i64 24
  %i.yo = getelementptr i8, ptr %i.ym, i64 56
  %i.yp = getelementptr i8, ptr %i.ym, i64 88
  %i.yq = getelementptr i8, ptr %i.ym, i64 120
  store <4 x double> zeroinitializer, ptr %i.yn, align 8, !tbaa !80
  store <4 x double> zeroinitializer, ptr %i.yo, align 8, !tbaa !80
  store <4 x double> zeroinitializer, ptr %i.yp, align 8, !tbaa !80
  store <4 x double> zeroinitializer, ptr %i.yq, align 8, !tbaa !80
  %index.next1611 = add nuw i64 %index1610, 16    ; 2 uses
  %i.yr = icmp eq i64 %index.next1611, %n.vec1608
  br i1 %i.yr, label %middle.block1612, label %vector.body1609, !llvm.loop !46

middle.block1612:                                 ; preds = %vector.body1609
  %cmp.n1613 = icmp eq i64 %i.yj, %n.vec1608
  br i1 %cmp.n1613, label %._crit_edge1325, label %vec.epilog.iter.check1618

vec.epilog.iter.check1618:                        ; preds = %middle.block1612
  %min.epilog.iters.check1619 = icmp eq i64 %i.yk, 0
  br i1 %min.epilog.iters.check1619, label %.lr.ph1324.preheader, label %vec.epilog.ph1620, !prof !84

vec.epilog.ph1620:                                ; preds = %vector.main.loop.iter.check1605, %vec.epilog.iter.check1618
  %vec.epilog.resume.val1614 = phi i64 [ %n.vec1608, %vec.epilog.iter.check1618 ], [ 0, %vector.main.loop.iter.check1605 ]
  %n.vec1621 = and i64 %i.yj, -4                  ; 3 uses
  %i.ys = or disjoint i64 %n.vec1621, 2
  br label %vec.epilog.vector.body1622

vec.epilog.vector.body1622:                       ; preds = %vec.epilog.vector.body1622, %vec.epilog.ph1620
  %index1623 = phi i64 [ %vec.epilog.resume.val1614, %vec.epilog.ph1620 ], [ %index.next1624, %vec.epilog.vector.body1622 ] ; 2 uses
  %i.yt = getelementptr [8 x i8], ptr %i.w, i64 %index1623
  %i.yu = getelementptr i8, ptr %i.yt, i64 24
  store <4 x double> zeroinitializer, ptr %i.yu, align 8, !tbaa !80
  %index.next1624 = add nuw i64 %index1623, 4     ; 2 uses
  %i.yv = icmp eq i64 %index.next1624, %n.vec1621
  br i1 %i.yv, label %vec.epilog.middle.block1625, label %vec.epilog.vector.body1622, !llvm.loop !47

vec.epilog.middle.block1625:                      ; preds = %vec.epilog.vector.body1622
  %cmp.n1626 = icmp eq i64 %i.yj, %n.vec1621
  br i1 %cmp.n1626, label %._crit_edge1325, label %.lr.ph1324.preheader

.lr.ph1324.preheader:                             ; preds = %iter.check1616, %vec.epilog.iter.check1618, %vec.epilog.middle.block1625
  %indvars.iv1376.ph = phi i64 [ 2, %iter.check1616 ], [ %i.yl, %vec.epilog.iter.check1618 ], [ %i.ys, %vec.epilog.middle.block1625 ] ; 4 uses
  %i.yw = sub nsw i64 %wide.trip.count1379, %indvars.iv1376.ph
  %xtraiter1995 = and i64 %i.yw, 7                ; 2 uses
  %lcmp.mod1996.not = icmp eq i64 %xtraiter1995, 0
  br i1 %lcmp.mod1996.not, label %.lr.ph1324.prol.loopexit, label %.lr.ph1324.prol

.lr.ph1324.prol:                                  ; preds = %.lr.ph1324.preheader, %.lr.ph1324.prol
  %indvars.iv1376.prol = phi i64 [ %indvars.iv.next1377.prol, %.lr.ph1324.prol ], [ %indvars.iv1376.ph, %.lr.ph1324.preheader ] ; 2 uses
  %prol.iter1997 = phi i64 [ %prol.iter1997.next, %.lr.ph1324.prol ], [ 0, %.lr.ph1324.preheader ]
  %i.yx = mul nsw i64 %indvars.iv1376.prol, %i.yg
  %i.yy = getelementptr [8 x i8], ptr %i.w, i64 %i.yx
  %i.yz = getelementptr i8, ptr %i.yy, i64 8
  store double 0.000000e+00, ptr %i.yz, align 8, !tbaa !80
  %indvars.iv.next1377.prol = add nuw nsw i64 %indvars.iv1376.prol, 1 ; 2 uses
  %prol.iter1997.next = add i64 %prol.iter1997, 1 ; 2 uses
  %prol.iter1997.cmp.not = icmp eq i64 %prol.iter1997.next, %xtraiter1995
  br i1 %prol.iter1997.cmp.not, label %.lr.ph1324.prol.loopexit, label %.lr.ph1324.prol, !llvm.loop !48

.lr.ph1324.prol.loopexit:                         ; preds = %.lr.ph1324.prol, %.lr.ph1324.preheader
  %indvars.iv1376.unr = phi i64 [ %indvars.iv1376.ph, %.lr.ph1324.preheader ], [ %indvars.iv.next1377.prol, %.lr.ph1324.prol ]
  %i.za = sub nsw i64 %indvars.iv1376.ph, %wide.trip.count1379
  %i.zb = icmp ugt i64 %i.za, -8
  br i1 %i.zb, label %._crit_edge1325, label %.lr.ph1324

.lr.ph1324:                                       ; preds = %.lr.ph1324.prol.loopexit, %.lr.ph1324
  %indvars.iv1376 = phi i64 [ %indvars.iv.next1377.7, %.lr.ph1324 ], [ %indvars.iv1376.unr, %.lr.ph1324.prol.loopexit ] ; 9 uses
  %i.zc = mul nsw i64 %indvars.iv1376, %i.yg
  %i.zd = getelementptr [8 x i8], ptr %i.w, i64 %i.zc
  %i.ze = getelementptr i8, ptr %i.zd, i64 8
  store double 0.000000e+00, ptr %i.ze, align 8, !tbaa !80
  %indvars.iv.next1377 = add nuw nsw i64 %indvars.iv1376, 1
  %i.zf = mul nsw i64 %indvars.iv.next1377, %i.yg
  %i.zg = getelementptr [8 x i8], ptr %i.w, i64 %i.zf
  %i.zh = getelementptr i8, ptr %i.zg, i64 8
  store double 0.000000e+00, ptr %i.zh, align 8, !tbaa !80
  %indvars.iv.next1377.1 = add nuw nsw i64 %indvars.iv1376, 2
  %i.zi = mul nsw i64 %indvars.iv.next1377.1, %i.yg
  %i.zj = getelementptr [8 x i8], ptr %i.w, i64 %i.zi
  %i.zk = getelementptr i8, ptr %i.zj, i64 8
  store double 0.000000e+00, ptr %i.zk, align 8, !tbaa !80
  %indvars.iv.next1377.2 = add nuw nsw i64 %indvars.iv1376, 3
  %i.zl = mul nsw i64 %indvars.iv.next1377.2, %i.yg
  %i.zm = getelementptr [8 x i8], ptr %i.w, i64 %i.zl
  %i.zn = getelementptr i8, ptr %i.zm, i64 8
  store double 0.000000e+00, ptr %i.zn, align 8, !tbaa !80
  %indvars.iv.next1377.3 = add nuw nsw i64 %indvars.iv1376, 4
  %i.zo = mul nsw i64 %indvars.iv.next1377.3, %i.yg
  %i.zp = getelementptr [8 x i8], ptr %i.w, i64 %i.zo
  %i.zq = getelementptr i8, ptr %i.zp, i64 8
  store double 0.000000e+00, ptr %i.zq, align 8, !tbaa !80
  %indvars.iv.next1377.4 = add nuw nsw i64 %indvars.iv1376, 5
  %i.zr = mul nsw i64 %indvars.iv.next1377.4, %i.yg
  %i.zs = getelementptr [8 x i8], ptr %i.w, i64 %i.zr
  %i.zt = getelementptr i8, ptr %i.zs, i64 8
  store double 0.000000e+00, ptr %i.zt, align 8, !tbaa !80
  %indvars.iv.next1377.5 = add nuw nsw i64 %indvars.iv1376, 6
  %i.zu = mul nsw i64 %indvars.iv.next1377.5, %i.yg
  %i.zv = getelementptr [8 x i8], ptr %i.w, i64 %i.zu
  %i.zw = getelementptr i8, ptr %i.zv, i64 8
  store double 0.000000e+00, ptr %i.zw, align 8, !tbaa !80
  %indvars.iv.next1377.6 = add nuw nsw i64 %indvars.iv1376, 7
  %i.zx = mul nsw i64 %indvars.iv.next1377.6, %i.yg
  %i.zy = getelementptr [8 x i8], ptr %i.w, i64 %i.zx
  %i.zz = getelementptr i8, ptr %i.zy, i64 8
  store double 0.000000e+00, ptr %i.zz, align 8, !tbaa !80
  %indvars.iv.next1377.7 = add nuw nsw i64 %indvars.iv1376, 8 ; 2 uses
  %exitcond1380.not.7 = icmp eq i64 %indvars.iv.next1377.7, %wide.trip.count1379
  br i1 %exitcond1380.not.7, label %._crit_edge1325, label %.lr.ph1324, !llvm.loop !49

._crit_edge1325:                                  ; preds = %.lr.ph1324.prol.loopexit, %.lr.ph1324, %middle.block1612, %vec.epilog.middle.block1625, %bb.ch
  %i.aaa = xor i32 %i.xv, -1
  %i.aab = add i32 %i.xu, %i.aaa                  ; 2 uses
  store i32 %i.aab, ptr %i.a, align 4, !tbaa !78
  store i32 %i.aab, ptr %i.b, align 4, !tbaa !78
  %i.aac = sext i32 %i.o to i64
  %i.aad = getelementptr [8 x i8], ptr %i.q, i64 %i.aac
  %i.aae = getelementptr i8, ptr %i.aad, i64 16
  %i.aaf = shl i32 %i.u, 1
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = getelementptr [8 x i8], ptr %i.w, i64 %i.aag
  %i.aai = getelementptr i8, ptr %i.aah, i64 16   ; 2 uses
  call void @dlacpy_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.aae, ptr noundef nonnull %9, ptr noundef %i.aai, ptr noundef nonnull %14) #5
  %i.aaj = load i32, ptr %3, align 4, !tbaa !78
  %i.aak = load i32, ptr %4, align 4, !tbaa !78
  %i.aal = xor i32 %i.aak, -1
  %i.aam = add i32 %i.aaj, %i.aal                 ; 3 uses
  store i32 %i.aam, ptr %i.a, align 4, !tbaa !78
  store i32 %i.aam, ptr %i.b, align 4, !tbaa !78
  store i32 %i.aam, ptr %i.c, align 4, !tbaa !78
  call void @dorgqr_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %i.aai, ptr noundef nonnull %14, ptr noundef nonnull %i.xn, ptr noundef nonnull %i.xr, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e) #5
  br label %bb.ci

bb.ci:                                            ; preds = %._crit_edge1325, %bb.cg, %bb.cf
  %.not1267 = icmp ne i32 %i.ae, 0                ; 2 uses
  %.pre1426 = load i32, ptr %5, align 4, !tbaa !78 ; 2 uses
  %i.aan = icmp sgt i32 %.pre1426, 0
  %or.cond1493 = select i1 %.not1267, i1 %i.aan, i1 false
  br i1 %or.cond1493, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aao = load i32, ptr %3, align 4, !tbaa !78
  %i.aap = load i32, ptr %4, align 4, !tbaa !78
  %i.aaq = sub nsw i32 %i.aao, %i.aap
  store i32 %i.aaq, ptr %i.a, align 4, !tbaa !78
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %15, ptr noundef nonnull %16) #5
  call void @dorglq_(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %i.d, ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %i.xp, ptr noundef nonnull %i.xr, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e) #5
  %.pre1425 = load i32, ptr %5, align 4, !tbaa !78
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.aar = phi i32 [ %.pre1425, %bb.cj ], [ %.pre1426, %bb.ci ]
  %i.aas = load i32, ptr %3, align 4, !tbaa !78   ; 2 uses
  %i.aat = sub nsw i32 %i.aas, %i.aar
  store i32 %i.aat, ptr %i.a, align 4, !tbaa !78
  %i.aau = load i32, ptr %4, align 4, !tbaa !78
  %i.aav = sub nsw i32 %i.aas, %i.aau
  store i32 %i.aav, ptr %i.b, align 4, !tbaa !78
  %i.aaw = zext nneg i32 %i.bj to i64
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.aaw
  %i.aay = sext i32 %i.bm to i64
  %i.aaz = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.aay
  %i.aba = sext i32 %i.bn to i64
  %i.abb = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.aba
  %i.abc = sext i32 %i.bo to i64
  %i.abd = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.abc
  %i.abe = sext i32 %i.bp to i64
  %i.abf = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.abe
  %i.abg = sext i32 %i.bq to i64
  %i.abh = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.abg
  %i.abi = sext i32 %i.br to i64
  %i.abj = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.abi
  %i.abk = sext i32 %i.bs to i64
  %i.abl = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.abk
  call void @dbbcsd_(ptr noundef nonnull @.str.1, ptr noundef %2, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %10, ptr noundef nonnull %i.xj, ptr noundef nonnull %i.k, ptr noundef nonnull @c__1, ptr noundef %15, ptr noundef nonnull %16, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %i.xl, ptr noundef nonnull %i.aax, ptr noundef nonnull %i.aaz, ptr noundef nonnull %i.abb, ptr noundef nonnull %i.abd, ptr noundef nonnull %i.abf, ptr noundef nonnull %i.abh, ptr noundef nonnull %i.abj, ptr noundef nonnull %i.abl, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e) #5
  %i.abm = load i32, ptr %5, align 4, !tbaa !78   ; 2 uses
  %i.abn = load i32, ptr %i.d, align 4, !tbaa !78 ; 23 uses
  %i.abo = icmp sgt i32 %i.abm, %i.abn
  br i1 %i.abo, label %bb.cl, label %bb.dc

bb.cl:                                            ; preds = %bb.ck
  %.not12681326 = icmp slt i32 %i.abn, 1
  br i1 %.not12681326, label %._crit_edge1330, label %iter.check1655

iter.check1655:                                   ; preds = %bb.cl
  %i.abp = add nuw nsw i32 %i.abn, 1
  %wide.trip.count1384 = zext nneg i32 %i.abp to i64 ; 3 uses
  %i.abq = zext nneg i32 %i.abn to i64            ; 5 uses
  %min.iters.check1634 = icmp ult i32 %i.abn, 4
  br i1 %min.iters.check1634, label %vec.epilog.scalar.ph1656.preheader, label %vector.memcheck1628

vector.memcheck1628:                              ; preds = %iter.check1655
  %i.abr = shl nuw nsw i64 %wide.trip.count1384, 2
  %i.abs = getelementptr i8, ptr %19, i64 %i.abr
  %scevgep1629 = getelementptr i8, ptr %i.abs, i64 -4
  %scevgep1630 = getelementptr i8, ptr %5, i64 4
  %bound01631 = icmp ult ptr %19, %scevgep1630
  %bound11632 = icmp ult ptr %5, %scevgep1629
  %found.conflict1633 = and i1 %bound01631, %bound11632
  br i1 %found.conflict1633, label %vec.epilog.scalar.ph1656.preheader, label %vector.main.loop.iter.check1635

vector.main.loop.iter.check1635:                  ; preds = %vector.memcheck1628
  %min.iters.check1636 = icmp ult i32 %i.abn, 32
  br i1 %min.iters.check1636, label %vec.epilog.ph1659, label %vector.ph1637

vector.ph1637:                                    ; preds = %vector.main.loop.iter.check1635
  %i.abt = and i64 %i.abq, 28
  %n.vec1638 = and i64 %i.abq, 2147483616         ; 4 uses
  %i.abu = or disjoint i64 %n.vec1638, 1          ; 2 uses
  %i.abv = load i32, ptr %5, align 4, !tbaa !78, !alias.scope !101
  %broadcast.splatinsert1647 = insertelement <8 x i32> poison, i32 %i.abv, i64 0
  %broadcast.splat1648 = shufflevector <8 x i32> %broadcast.splatinsert1647, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1639 = insertelement <8 x i32> poison, i32 %i.abn, i64 0
  %broadcast.splat1640 = shufflevector <8 x i32> %broadcast.splatinsert1639, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2040 = sub <8 x i32> splat (i32 8), %broadcast.splat1640
  %invariant.op2042 = sub <8 x i32> splat (i32 16), %broadcast.splat1640
  %invariant.op2044 = sub <8 x i32> splat (i32 24), %broadcast.splat1640
  %invariant.op2046 = sub <8 x i32> %broadcast.splat1648, %broadcast.splat1640
  %invariant.op2048 = add <8 x i32> %invariant.op2040, %broadcast.splat1648
  %invariant.op2050 = add <8 x i32> %invariant.op2042, %broadcast.splat1648
  %invariant.op2052 = add <8 x i32> %invariant.op2044, %broadcast.splat1648
  br label %vector.body1641

vector.body1641:                                  ; preds = %vector.body1641, %vector.ph1637
  %index1642 = phi i64 [ 0, %vector.ph1637 ], [ %index.next1649, %vector.body1641 ] ; 2 uses
  %vec.ind1643 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph1637 ], [ %vec.ind.next1650, %vector.body1641 ] ; 5 uses
  %.reass2047 = add <8 x i32> %vec.ind1643, %invariant.op2046
  %.reass2049 = add <8 x i32> %vec.ind1643, %invariant.op2048
  %.reass2051 = add <8 x i32> %vec.ind1643, %invariant.op2050
  %.reass2053 = add <8 x i32> %vec.ind1643, %invariant.op2052
  %i.abw = getelementptr [4 x i8], ptr %19, i64 %index1642 ; 4 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 32
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abw, i64 64
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abw, i64 96
  store <8 x i32> %.reass2047, ptr %i.abw, align 4, !tbaa !78, !alias.scope !102, !noalias !101
  store <8 x i32> %.reass2049, ptr %i.abx, align 4, !tbaa !78, !alias.scope !102, !noalias !101
  store <8 x i32> %.reass2051, ptr %i.aby, align 4, !tbaa !78, !alias.scope !102, !noalias !101
  store <8 x i32> %.reass2053, ptr %i.abz, align 4, !tbaa !78, !alias.scope !102, !noalias !101
  %index.next1649 = add nuw i64 %index1642, 32    ; 2 uses
  %vec.ind.next1650 = add <8 x i32> %vec.ind1643, splat (i32 32)
  %i.aca = icmp eq i64 %index.next1649, %n.vec1638
  br i1 %i.aca, label %middle.block1651, label %vector.body1641, !llvm.loop !53

middle.block1651:                                 ; preds = %vector.body1641
  %cmp.n1652 = icmp eq i64 %n.vec1638, %i.abq
  br i1 %cmp.n1652, label %._crit_edge1330.loopexit, label %vec.epilog.iter.check1657

vec.epilog.iter.check1657:                        ; preds = %middle.block1651
  %min.epilog.iters.check1658 = icmp eq i64 %i.abt, 0
  br i1 %min.epilog.iters.check1658, label %vec.epilog.scalar.ph1656.preheader, label %vec.epilog.ph1659, !prof !91

vec.epilog.ph1659:                                ; preds = %vector.main.loop.iter.check1635, %vec.epilog.iter.check1657
  %vec.epilog.resume.val1653 = phi i64 [ %n.vec1638, %vec.epilog.iter.check1657 ], [ 0, %vector.main.loop.iter.check1635 ]
  %bc.resume.val1654 = phi i64 [ %i.abu, %vec.epilog.iter.check1657 ], [ 1, %vector.main.loop.iter.check1635 ]
  %n.vec1660 = and i64 %i.abq, 2147483644         ; 3 uses
  %i.acb = or disjoint i64 %n.vec1660, 1
  %i.acc = load i32, ptr %5, align 4, !tbaa !78, !alias.scope !101
  %broadcast.splatinsert1669 = insertelement <4 x i32> poison, i32 %i.acc, i64 0
  %broadcast.splat1670 = shufflevector <4 x i32> %broadcast.splatinsert1669, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1661 = insertelement <4 x i32> poison, i32 %i.abn, i64 0
  %broadcast.splat1662 = shufflevector <4 x i32> %broadcast.splatinsert1661, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.acd = trunc nsw i64 %bc.resume.val1654 to i32
  %broadcast.splatinsert1663 = insertelement <4 x i32> poison, i32 %i.acd, i64 0
  %broadcast.splat1664 = shufflevector <4 x i32> %broadcast.splatinsert1663, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1665 = add <4 x i32> %broadcast.splat1664, <i32 0, i32 1, i32 2, i32 3>
  %invariant.op2054 = sub <4 x i32> %broadcast.splat1670, %broadcast.splat1662
  br label %vec.epilog.vector.body1666

vec.epilog.vector.body1666:                       ; preds = %vec.epilog.vector.body1666, %vec.epilog.ph1659
  %index1667 = phi i64 [ %vec.epilog.resume.val1653, %vec.epilog.ph1659 ], [ %index.next1671, %vec.epilog.vector.body1666 ] ; 2 uses
  %vec.ind1668 = phi <4 x i32> [ %induction1665, %vec.epilog.ph1659 ], [ %vec.ind.next1672, %vec.epilog.vector.body1666 ] ; 2 uses
  %.reass2055 = add <4 x i32> %vec.ind1668, %invariant.op2054
  %i.ace = getelementptr [4 x i8], ptr %19, i64 %index1667
  store <4 x i32> %.reass2055, ptr %i.ace, align 4, !tbaa !78, !alias.scope !102, !noalias !101
  %index.next1671 = add nuw i64 %index1667, 4     ; 2 uses
  %vec.ind.next1672 = add <4 x i32> %vec.ind1668, splat (i32 4)
  %i.acf = icmp eq i64 %index.next1671, %n.vec1660
  br i1 %i.acf, label %vec.epilog.middle.block1673, label %vec.epilog.vector.body1666, !llvm.loop !54

vec.epilog.middle.block1673:                      ; preds = %vec.epilog.vector.body1666
  %cmp.n1674 = icmp eq i64 %n.vec1660, %i.abq
  br i1 %cmp.n1674, label %._crit_edge1330.loopexit, label %vec.epilog.scalar.ph1656.preheader

vec.epilog.scalar.ph1656.preheader:               ; preds = %vector.memcheck1628, %iter.check1655, %vec.epilog.iter.check1657, %vec.epilog.middle.block1673
  %indvars.iv1381.ph = phi i64 [ 1, %iter.check1655 ], [ 1, %vector.memcheck1628 ], [ %i.abu, %vec.epilog.iter.check1657 ], [ %i.acb, %vec.epilog.middle.block1673 ] ; 4 uses
  %i.acg = sub nsw i64 %wide.trip.count1384, %indvars.iv1381.ph
  %i.ach = zext nneg i32 %i.abn to i64
  %i.aci = sub nsw i64 %i.ach, %indvars.iv1381.ph
  %xtraiter1998 = and i64 %i.acg, 7               ; 2 uses
  %lcmp.mod1999.not = icmp eq i64 %xtraiter1998, 0
  br i1 %lcmp.mod1999.not, label %vec.epilog.scalar.ph1656.prol.loopexit, label %vec.epilog.scalar.ph1656.prol

vec.epilog.scalar.ph1656.prol:                    ; preds = %vec.epilog.scalar.ph1656.preheader, %vec.epilog.scalar.ph1656.prol
  %indvars.iv1381.prol = phi i64 [ %indvars.iv.next1382.prol, %vec.epilog.scalar.ph1656.prol ], [ %indvars.iv1381.ph, %vec.epilog.scalar.ph1656.preheader ] ; 3 uses
  %prol.iter2000 = phi i64 [ %prol.iter2000.next, %vec.epilog.scalar.ph1656.prol ], [ 0, %vec.epilog.scalar.ph1656.preheader ]
  %i.acj = load i32, ptr %5, align 4, !tbaa !78
  %i.ack = trunc i64 %indvars.iv1381.prol to i32
  %i.acl = sub i32 %i.ack, %i.abn
  %i.acm = add i32 %i.acl, %i.acj
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv1381.prol
  store i32 %i.acm, ptr %i.acn, align 4, !tbaa !78
  %indvars.iv.next1382.prol = add nuw nsw i64 %indvars.iv1381.prol, 1 ; 2 uses
  %prol.iter2000.next = add i64 %prol.iter2000, 1 ; 2 uses
  %prol.iter2000.cmp.not = icmp eq i64 %prol.iter2000.next, %xtraiter1998
  br i1 %prol.iter2000.cmp.not, label %vec.epilog.scalar.ph1656.prol.loopexit, label %vec.epilog.scalar.ph1656.prol, !llvm.loop !55

vec.epilog.scalar.ph1656.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1656.prol, %vec.epilog.scalar.ph1656.preheader
  %indvars.iv1381.unr = phi i64 [ %indvars.iv1381.ph, %vec.epilog.scalar.ph1656.preheader ], [ %indvars.iv.next1382.prol, %vec.epilog.scalar.ph1656.prol ]
  %i.aco = icmp ult i64 %i.aci, 7
  br i1 %i.aco, label %._crit_edge1330.loopexit, label %vec.epilog.scalar.ph1656.preheader.new

vec.epilog.scalar.ph1656.preheader.new:           ; preds = %vec.epilog.scalar.ph1656.prol.loopexit
  %invariant.op2056 = sub i32 1, %i.abn
  br label %vec.epilog.scalar.ph1656

vec.epilog.scalar.ph1656:                         ; preds = %vec.epilog.scalar.ph1656, %vec.epilog.scalar.ph1656.preheader.new
  %indvars.iv1381 = phi i64 [ %indvars.iv1381.unr, %vec.epilog.scalar.ph1656.preheader.new ], [ %indvars.iv.next1382.7, %vec.epilog.scalar.ph1656 ] ; 11 uses
  %i.acp = load i32, ptr %5, align 4, !tbaa !78
  %i.acq = trunc i64 %indvars.iv1381 to i32
  %i.acr = sub i32 %i.acq, %i.abn
  %i.acs = add i32 %i.acr, %i.acp
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv1381
  store i32 %i.acs, ptr %i.act, align 4, !tbaa !78
  %i.acu = load i32, ptr %5, align 4, !tbaa !78
  %i.acv = trunc i64 %indvars.iv1381 to i32
  %.reass2057 = add i32 %i.acv, %invariant.op2056
  %i.acw = add i32 %.reass2057, %i.acu
  %i.acx = getelementptr [4 x i8], ptr %19, i64 %indvars.iv1381
  store i32 %i.acw, ptr %i.acx, align 4, !tbaa !78
  %indvars.iv.next1382.1 = add nuw nsw i64 %indvars.iv1381, 2 ; 2 uses
  %i.acy = load i32, ptr %5, align 4, !tbaa !78
  %i.acz = trunc i64 %indvars.iv.next1382.1 to i32
  %i.ada = sub i32 %i.acz, %i.abn
  %i.adb = add i32 %i.ada, %i.acy
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next1382.1
  store i32 %i.adb, ptr %i.adc, align 4, !tbaa !78
  %indvars.iv.next1382.2 = add nuw nsw i64 %indvars.iv1381, 3 ; 2 uses
  %i.add = load i32, ptr %5, align 4, !tbaa !78
  %i.ade = trunc i64 %indvars.iv.next1382.2 to i32
  %i.adf = sub i32 %i.ade, %i.abn
  %i.adg = add i32 %i.adf, %i.add
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next1382.2
  store i32 %i.adg, ptr %i.adh, align 4, !tbaa !78
  %indvars.iv.next1382.3 = add nuw nsw i64 %indvars.iv1381, 4 ; 2 uses
  %i.adi = load i32, ptr %5, align 4, !tbaa !78
  %i.adj = trunc i64 %indvars.iv.next1382.3 to i32
  %i.adk = sub i32 %i.adj, %i.abn
  %i.adl = add i32 %i.adk, %i.adi
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next1382.3
  store i32 %i.adl, ptr %i.adm, align 4, !tbaa !78
  %indvars.iv.next1382.4 = add nuw nsw i64 %indvars.iv1381, 5 ; 2 uses
  %i.adn = load i32, ptr %5, align 4, !tbaa !78
  %i.ado = trunc i64 %indvars.iv.next1382.4 to i32
  %i.adp = sub i32 %i.ado, %i.abn
  %i.adq = add i32 %i.adp, %i.adn
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next1382.4
  store i32 %i.adq, ptr %i.adr, align 4, !tbaa !78
  %indvars.iv.next1382.5 = add nuw nsw i64 %indvars.iv1381, 6 ; 2 uses
  %i.ads = load i32, ptr %5, align 4, !tbaa !78
  %i.adt = trunc i64 %indvars.iv.next1382.5 to i32
  %i.adu = sub i32 %i.adt, %i.abn
  %i.adv = add i32 %i.adu, %i.ads
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next1382.5
  store i32 %i.adv, ptr %i.adw, align 4, !tbaa !78
  %indvars.iv.next1382.6 = add nuw nsw i64 %indvars.iv1381, 7 ; 2 uses
  %i.adx = load i32, ptr %5, align 4, !tbaa !78
  %i.ady = trunc i64 %indvars.iv.next1382.6 to i32
  %i.adz = sub i32 %i.ady, %i.abn
  %i.aea = add i32 %i.adz, %i.adx
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next1382.6
  store i32 %i.aea, ptr %i.aeb, align 4, !tbaa !78
  %indvars.iv.next1382.7 = add nuw nsw i64 %indvars.iv1381, 8 ; 2 uses
  %exitcond1385.not.7 = icmp eq i64 %indvars.iv.next1382.7, %wide.trip.count1384
  br i1 %exitcond1385.not.7, label %._crit_edge1330.loopexit, label %vec.epilog.scalar.ph1656, !llvm.loop !56

._crit_edge1330.loopexit:                         ; preds = %vec.epilog.scalar.ph1656.prol.loopexit, %vec.epilog.scalar.ph1656, %vec.epilog.middle.block1673, %middle.block1651
  %.pre1427 = load i32, ptr %5, align 4, !tbaa !78
  br label %._crit_edge1330

._crit_edge1330:                                  ; preds = %._crit_edge1330.loopexit, %bb.cl
  %i.aec = phi i32 [ %.pre1427, %._crit_edge1330.loopexit ], [ %i.abm, %bb.cl ] ; 3 uses
  store i32 %i.aec, ptr %i.a, align 4, !tbaa !78
  %.not1269.not1331 = icmp slt i32 %i.abn, %i.aec
  br i1 %.not1269.not1331, label %iter.check1698, label %._crit_edge1335

iter.check1698:                                   ; preds = %._crit_edge1330
  %i.aed = sext i32 %i.abn to i64                 ; 8 uses
  %wide.trip.count1389 = sext i32 %i.aec to i64   ; 2 uses
  %i.aee = sub nsw i64 %wide.trip.count1389, %i.aed ; 7 uses
  %min.iters.check1676 = icmp ult i64 %i.aee, 4
  br i1 %min.iters.check1676, label %.lr.ph1334.preheader, label %vector.main.loop.iter.check1677

vector.main.loop.iter.check1677:                  ; preds = %iter.check1698
  %min.iters.check1678 = icmp ult i64 %i.aee, 32
  br i1 %min.iters.check1678, label %vec.epilog.ph1702, label %vector.ph1679

vector.ph1679:                                    ; preds = %vector.main.loop.iter.check1677
  %i.aef = and i64 %i.aee, 28
  %n.vec1680 = and i64 %i.aee, -32                ; 4 uses
  %i.aeg = add nsw i64 %n.vec1680, %i.aed         ; 2 uses
  %broadcast.splatinsert1681 = insertelement <8 x i32> poison, i32 %i.abn, i64 0
  %broadcast.splat1682 = shufflevector <8 x i32> %broadcast.splatinsert1681, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1683 = insertelement <8 x i64> poison, i64 %i.aed, i64 0
  %broadcast.splat1684 = shufflevector <8 x i64> %broadcast.splatinsert1683, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction1685 = add nsw <8 x i64> %broadcast.splat1684, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %invariant.gep2058 = getelementptr [4 x i8], ptr %19, i64 %i.aed
  %invariant.op2060 = sub <8 x i32> splat (i32 1), %broadcast.splat1682
  %invariant.op2062 = sub <8 x i32> splat (i32 9), %broadcast.splat1682
  %invariant.op2064 = sub <8 x i32> splat (i32 17), %broadcast.splat1682
  %invariant.op2066 = sub <8 x i32> splat (i32 25), %broadcast.splat1682
  br label %vector.body1686

vector.body1686:                                  ; preds = %vector.body1686, %vector.ph1679
  %index1687 = phi i64 [ 0, %vector.ph1679 ], [ %index.next1692, %vector.body1686 ] ; 2 uses
  %vec.ind1688 = phi <8 x i64> [ %induction1685, %vector.ph1679 ], [ %vec.ind.next1693, %vector.body1686 ] ; 5 uses
  %gep2059 = getelementptr [4 x i8], ptr %invariant.gep2058, i64 %index1687 ; 4 uses
  %i.aeh = trunc <8 x i64> %vec.ind1688 to <8 x i32>
  %i.aei = trunc <8 x i64> %vec.ind1688 to <8 x i32>
  %i.aej = trunc <8 x i64> %vec.ind1688 to <8 x i32>
  %i.aek = trunc <8 x i64> %vec.ind1688 to <8 x i32>
  %.reass2061 = add <8 x i32> %i.aeh, %invariant.op2060
  %.reass2063 = add <8 x i32> %i.aei, %invariant.op2062
  %.reass2065 = add <8 x i32> %i.aej, %invariant.op2064
  %.reass2067 = add <8 x i32> %i.aek, %invariant.op2066
  %i.ael = getelementptr i8, ptr %gep2059, i64 32
  %i.aem = getelementptr i8, ptr %gep2059, i64 64
  %i.aen = getelementptr i8, ptr %gep2059, i64 96
  store <8 x i32> %.reass2061, ptr %gep2059, align 4, !tbaa !78
  store <8 x i32> %.reass2063, ptr %i.ael, align 4, !tbaa !78
  store <8 x i32> %.reass2065, ptr %i.aem, align 4, !tbaa !78
  store <8 x i32> %.reass2067, ptr %i.aen, align 4, !tbaa !78
  %index.next1692 = add nuw i64 %index1687, 32    ; 2 uses
  %vec.ind.next1693 = add nsw <8 x i64> %vec.ind1688, splat (i64 32)
  %i.aeo = icmp eq i64 %index.next1692, %n.vec1680
  br i1 %i.aeo, label %middle.block1694, label %vector.body1686, !llvm.loop !57

middle.block1694:                                 ; preds = %vector.body1686
  %cmp.n1695 = icmp eq i64 %i.aee, %n.vec1680
  br i1 %cmp.n1695, label %._crit_edge1335, label %vec.epilog.iter.check1700

vec.epilog.iter.check1700:                        ; preds = %middle.block1694
  %min.epilog.iters.check1701 = icmp eq i64 %i.aef, 0
  br i1 %min.epilog.iters.check1701, label %.lr.ph1334.preheader, label %vec.epilog.ph1702, !prof !91

vec.epilog.ph1702:                                ; preds = %vector.main.loop.iter.check1677, %vec.epilog.iter.check1700
  %vec.epilog.resume.val1696 = phi i64 [ %n.vec1680, %vec.epilog.iter.check1700 ], [ 0, %vector.main.loop.iter.check1677 ]
  %bc.resume.val1697 = phi i64 [ %i.aeg, %vec.epilog.iter.check1700 ], [ %i.aed, %vector.main.loop.iter.check1677 ]
  %n.vec1703 = and i64 %i.aee, -4                 ; 3 uses
  %i.aep = add nsw i64 %n.vec1703, %i.aed
  %broadcast.splatinsert1704 = insertelement <4 x i32> poison, i32 %i.abn, i64 0
  %broadcast.splat1705 = shufflevector <4 x i32> %broadcast.splatinsert1704, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1706 = insertelement <4 x i64> poison, i64 %bc.resume.val1697, i64 0
  %broadcast.splat1707 = shufflevector <4 x i64> %broadcast.splatinsert1706, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1708 = add nsw <4 x i64> %broadcast.splat1707, <i64 0, i64 1, i64 2, i64 3>
  %invariant.gep2068 = getelementptr [4 x i8], ptr %19, i64 %i.aed
  %invariant.op2070 = sub <4 x i32> splat (i32 1), %broadcast.splat1705
  br label %vec.epilog.vector.body1709

vec.epilog.vector.body1709:                       ; preds = %vec.epilog.vector.body1709, %vec.epilog.ph1702
  %index1710 = phi i64 [ %vec.epilog.resume.val1696, %vec.epilog.ph1702 ], [ %index.next1712, %vec.epilog.vector.body1709 ] ; 2 uses
  %vec.ind1711 = phi <4 x i64> [ %induction1708, %vec.epilog.ph1702 ], [ %vec.ind.next1713, %vec.epilog.vector.body1709 ] ; 2 uses
  %gep2069 = getelementptr [4 x i8], ptr %invariant.gep2068, i64 %index1710
  %21 = trunc <4 x i64> %vec.ind1711 to <4 x i32>
  %.reass2071 = add <4 x i32> %21, %invariant.op2070
  store <4 x i32> %.reass2071, ptr %gep2069, align 4, !tbaa !78
  %index.next1712 = add nuw i64 %index1710, 4     ; 2 uses
  %vec.ind.next1713 = add nsw <4 x i64> %vec.ind1711, splat (i64 4)
  %i.aeq = icmp eq i64 %index.next1712, %n.vec1703
  br i1 %i.aeq, label %vec.epilog.middle.block1714, label %vec.epilog.vector.body1709, !llvm.loop !58

vec.epilog.middle.block1714:                      ; preds = %vec.epilog.vector.body1709
  %cmp.n1715 = icmp eq i64 %i.aee, %n.vec1703
  br i1 %cmp.n1715, label %._crit_edge1335, label %.lr.ph1334.preheader

.lr.ph1334.preheader:                             ; preds = %iter.check1698, %vec.epilog.iter.check1700, %vec.epilog.middle.block1714
  %indvars.iv1386.ph = phi i64 [ %i.aed, %iter.check1698 ], [ %i.aeg, %vec.epilog.iter.check1700 ], [ %i.aep, %vec.epilog.middle.block1714 ]
  br label %.lr.ph1334

.lr.ph1334:                                       ; preds = %.lr.ph1334.preheader, %.lr.ph1334
  %indvars.iv1386 = phi i64 [ %indvars.iv.next1387, %.lr.ph1334 ], [ %indvars.iv1386.ph, %.lr.ph1334.preheader ] ; 2 uses
  %indvars.iv.next1387 = add nsw i64 %indvars.iv1386, 1 ; 3 uses
  %i.aer = getelementptr [4 x i8], ptr %19, i64 %indvars.iv1386
  %i.aes = trunc i64 %indvars.iv.next1387 to i32
  %i.aet = sub i32 %i.aes, %i.abn
  store i32 %i.aet, ptr %i.aer, align 4, !tbaa !78
  %exitcond1390.not = icmp eq i64 %indvars.iv.next1387, %wide.trip.count1389
  br i1 %exitcond1390.not, label %._crit_edge1335, label %.lr.ph1334, !llvm.loop !59

._crit_edge1335:                                  ; preds = %.lr.ph1334, %middle.block1694, %vec.epilog.middle.block1714, %._crit_edge1330
  br i1 %.not1264, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge1335
  call void @dlapmt_(ptr noundef nonnull @c_false, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %19) #5
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %._crit_edge1335
  br i1 %.not1267, label %bb.co, label %bb.dc

bb.co:                                            ; preds = %bb.cn
  call void @dlapmr_(ptr noundef nonnull @c_false, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %15, ptr noundef nonnull %16, ptr noundef %19) #5
  br label %bb.dc

bb.cp:                                            ; preds = %bb.cb
  %i.aeu = sub nsw i32 %i.hf, %i.xg
  store i32 %i.aeu, ptr %i.a, align 4, !tbaa !78
  %i.aev = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.aew = zext nneg i32 %i.bh to i64
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.aew ; 3 uses
  %i.aey = zext nneg i32 %i.bt to i64
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.aey ; 2 uses
  %i.afa = zext nneg i32 %i.bv to i64
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.afa ; 2 uses
  %i.afc = zext nneg i32 %i.bx to i64
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.afc ; 5 uses
  %i.afe = add nsw i32 %i.xg, %i.bx
  %i.aff = sext i32 %i.afe to i64
  %i.afg = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.aff
  call void @dorbdb4_(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10, ptr noundef nonnull %i.aev, ptr noundef nonnull %i.aex, ptr noundef nonnull %i.aez, ptr noundef nonnull %i.afb, ptr noundef nonnull %i.afd, ptr noundef nonnull %i.afg, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) #5
  %.not1256 = icmp eq i32 %i.ac, 0                ; 2 uses
  br i1 %.not1256, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.afh = load i32, ptr %4, align 4, !tbaa !78
  %i.afi = icmp sgt i32 %i.afh, 0
  br i1 %i.afi, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  call void @dcopy_(ptr noundef nonnull %4, ptr noundef nonnull %i.afd, ptr noundef nonnull @c__1, ptr noundef %11, ptr noundef nonnull @c__1) #5
  %i.afj = load i32, ptr %4, align 4, !tbaa !78   ; 4 uses
  %.not12571304 = icmp slt i32 %i.afj, 2
  br i1 %.not12571304, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.cr
  %i.afk = sext i32 %i.r to i64                   ; 9 uses
  %i.afl = add nuw i32 %i.afj, 1
  %wide.trip.count = zext i32 %i.afl to i64       ; 3 uses
  %i.afm = add nsw i64 %wide.trip.count, -2       ; 7 uses
  %min.iters.check = icmp ugt i64 %i.afm, 3
  %ident.check.not = icmp eq i32 %i.r, 1
  %or.cond1987 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond1987, label %vector.main.loop.iter.check, label %.lr.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1495 = icmp ult i64 %i.afm, 16
  br i1 %min.iters.check1495, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.afn = and i64 %i.afm, 12
  %n.vec = and i64 %i.afm, -16                    ; 4 uses
  %i.afo = or disjoint i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.afp = getelementptr [8 x i8], ptr %i.t, i64 %index ; 4 uses
  %i.afq = getelementptr i8, ptr %i.afp, i64 24
  %i.afr = getelementptr i8, ptr %i.afp, i64 56
  %i.afs = getelementptr i8, ptr %i.afp, i64 88
  %i.aft = getelementptr i8, ptr %i.afp, i64 120
  store <4 x double> zeroinitializer, ptr %i.afq, align 8, !tbaa !80
  store <4 x double> zeroinitializer, ptr %i.afr, align 8, !tbaa !80
  store <4 x double> zeroinitializer, ptr %i.afs, align 8, !tbaa !80
  store <4 x double> zeroinitializer, ptr %i.aft, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.afu = icmp eq i64 %index.next, %n.vec
  br i1 %i.afu, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.afm, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.afn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1496 = and i64 %i.afm, -4                 ; 3 uses
  %i.afv = or disjoint i64 %n.vec1496, 2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1497 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1498, %vec.epilog.vector.body ] ; 2 uses
  %i.afw = getelementptr [8 x i8], ptr %i.t, i64 %index1497
  %i.afx = getelementptr i8, ptr %i.afw, i64 24
  store <4 x double> zeroinitializer, ptr %i.afx, align 8, !tbaa !80
  %index.next1498 = add nuw i64 %index1497, 4     ; 2 uses
  %i.afy = icmp eq i64 %index.next1498, %n.vec1496
  br i1 %i.afy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1499 = icmp eq i64 %i.afm, %n.vec1496
  br i1 %cmp.n1499, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 2, %iter.check ], [ %i.afo, %vec.epilog.iter.check ], [ %i.afv, %vec.epilog.middle.block ] ; 4 uses
  %i.afz = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.aga = zext nneg i32 %i.afj to i64
  %i.agb = sub nsw i64 %i.aga, %indvars.iv.ph
  %xtraiter = and i64 %i.afz, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.agc = mul nsw i64 %indvars.iv.prol, %i.afk
  %i.agd = getelementptr [8 x i8], ptr %i.t, i64 %i.agc
  %i.age = getelementptr i8, ptr %i.agd, i64 8
  store double 0.000000e+00, ptr %i.age, align 8, !tbaa !80
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !62

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.agf = icmp ult i64 %i.agb, 7
  br i1 %i.agf, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.agg = mul nsw i64 %indvars.iv, %i.afk
  %i.agh = getelementptr [8 x i8], ptr %i.t, i64 %i.agg
  %i.agi = getelementptr i8, ptr %i.agh, i64 8
  store double 0.000000e+00, ptr %i.agi, align 8, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.agj = mul nsw i64 %indvars.iv.next, %i.afk
  %i.agk = getelementptr [8 x i8], ptr %i.t, i64 %i.agj
  %i.agl = getelementptr i8, ptr %i.agk, i64 8
  store double 0.000000e+00, ptr %i.agl, align 8, !tbaa !80
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %i.agm = mul nsw i64 %indvars.iv.next.1, %i.afk
  %i.agn = getelementptr [8 x i8], ptr %i.t, i64 %i.agm
  %i.ago = getelementptr i8, ptr %i.agn, i64 8
  store double 0.000000e+00, ptr %i.ago, align 8, !tbaa !80
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %i.agp = mul nsw i64 %indvars.iv.next.2, %i.afk
  %i.agq = getelementptr [8 x i8], ptr %i.t, i64 %i.agp
  %i.agr = getelementptr i8, ptr %i.agq, i64 8
  store double 0.000000e+00, ptr %i.agr, align 8, !tbaa !80
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %i.ags = mul nsw i64 %indvars.iv.next.3, %i.afk
  %i.agt = getelementptr [8 x i8], ptr %i.t, i64 %i.ags
  %i.agu = getelementptr i8, ptr %i.agt, i64 8
  store double 0.000000e+00, ptr %i.agu, align 8, !tbaa !80
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5
  %i.agv = mul nsw i64 %indvars.iv.next.4, %i.afk
  %i.agw = getelementptr [8 x i8], ptr %i.t, i64 %i.agv
  %i.agx = getelementptr i8, ptr %i.agw, i64 8
  store double 0.000000e+00, ptr %i.agx, align 8, !tbaa !80
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6
  %i.agy = mul nsw i64 %indvars.iv.next.5, %i.afk
  %i.agz = getelementptr [8 x i8], ptr %i.t, i64 %i.agy
  %i.aha = getelementptr i8, ptr %i.agz, i64 8
  store double 0.000000e+00, ptr %i.aha, align 8, !tbaa !80
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7
  %i.ahb = mul nsw i64 %indvars.iv.next.6, %i.afk
  %i.ahc = getelementptr [8 x i8], ptr %i.t, i64 %i.ahb
  %i.ahd = getelementptr i8, ptr %i.ahc, i64 8
  store double 0.000000e+00, ptr %i.ahd, align 8, !tbaa !80
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.cr
  %i.ahe = add nsw i32 %i.afj, -1
end_hunk_0
begin_hunk_1_@dorcsd2by1_:bb.a
vec.epilog.vector.body1520:                       ; preds = %vec.epilog.vector.body1520, %vec.epilog.ph1518
  %index1521 = phi i64 [ %vec.epilog.resume.val1513, %vec.epilog.ph1518 ], [ %index.next1522, %vec.epilog.vector.body1520 ] ; 2 uses
  %i.aiq = getelementptr [8 x i8], ptr %i.w, i64 %index1521
  %i.air = getelementptr i8, ptr %i.aiq, i64 24
  store <4 x double> zeroinitializer, ptr %i.air, align 8, !tbaa !80
  %index.next1522 = add nuw i64 %index1521, 4     ; 2 uses
  %i.ais = icmp eq i64 %index.next1522, %n.vec1519
  br i1 %i.ais, label %vec.epilog.middle.block1523, label %vec.epilog.vector.body1520, !llvm.loop !65

vec.epilog.middle.block1523:                      ; preds = %vec.epilog.vector.body1520
  %cmp.n1524 = icmp eq i64 %i.aig, %n.vec1519
  br i1 %cmp.n1524, label %._crit_edge1310, label %.lr.ph1309.preheader

.lr.ph1309.preheader:                             ; preds = %iter.check1514, %vec.epilog.iter.check1516, %vec.epilog.middle.block1523
  %indvars.iv1361.ph = phi i64 [ 2, %iter.check1514 ], [ %i.aii, %vec.epilog.iter.check1516 ], [ %i.aip, %vec.epilog.middle.block1523 ] ; 4 uses
  %i.ait = sub nsw i64 %wide.trip.count1364, %indvars.iv1361.ph
  %xtraiter1989 = and i64 %i.ait, 7               ; 2 uses
  %lcmp.mod1990.not = icmp eq i64 %xtraiter1989, 0
  br i1 %lcmp.mod1990.not, label %.lr.ph1309.prol.loopexit, label %.lr.ph1309.prol

.lr.ph1309.prol:                                  ; preds = %.lr.ph1309.preheader, %.lr.ph1309.prol
  %indvars.iv1361.prol = phi i64 [ %indvars.iv.next1362.prol, %.lr.ph1309.prol ], [ %indvars.iv1361.ph, %.lr.ph1309.preheader ] ; 2 uses
  %prol.iter1991 = phi i64 [ %prol.iter1991.next, %.lr.ph1309.prol ], [ 0, %.lr.ph1309.preheader ]
  %i.aiu = mul nsw i64 %indvars.iv1361.prol, %i.aid
  %i.aiv = getelementptr [8 x i8], ptr %i.w, i64 %i.aiu
  %i.aiw = getelementptr i8, ptr %i.aiv, i64 8
  store double 0.000000e+00, ptr %i.aiw, align 8, !tbaa !80
  %indvars.iv.next1362.prol = add nuw nsw i64 %indvars.iv1361.prol, 1 ; 2 uses
  %prol.iter1991.next = add i64 %prol.iter1991, 1 ; 2 uses
  %prol.iter1991.cmp.not = icmp eq i64 %prol.iter1991.next, %xtraiter1989
  br i1 %prol.iter1991.cmp.not, label %.lr.ph1309.prol.loopexit, label %.lr.ph1309.prol, !llvm.loop !66

.lr.ph1309.prol.loopexit:                         ; preds = %.lr.ph1309.prol, %.lr.ph1309.preheader
  %indvars.iv1361.unr = phi i64 [ %indvars.iv1361.ph, %.lr.ph1309.preheader ], [ %indvars.iv.next1362.prol, %.lr.ph1309.prol ]
  %i.aix = sub nsw i64 %indvars.iv1361.ph, %wide.trip.count1364
  %i.aiy = icmp ugt i64 %i.aix, -8
  br i1 %i.aiy, label %._crit_edge1310, label %.lr.ph1309

.lr.ph1309:                                       ; preds = %.lr.ph1309.prol.loopexit, %.lr.ph1309
  %indvars.iv1361 = phi i64 [ %indvars.iv.next1362.7, %.lr.ph1309 ], [ %indvars.iv1361.unr, %.lr.ph1309.prol.loopexit ] ; 9 uses
  %i.aiz = mul nsw i64 %indvars.iv1361, %i.aid
  %i.aja = getelementptr [8 x i8], ptr %i.w, i64 %i.aiz
  %i.ajb = getelementptr i8, ptr %i.aja, i64 8
  store double 0.000000e+00, ptr %i.ajb, align 8, !tbaa !80
  %indvars.iv.next1362 = add nuw nsw i64 %indvars.iv1361, 1
  %i.ajc = mul nsw i64 %indvars.iv.next1362, %i.aid
  %i.ajd = getelementptr [8 x i8], ptr %i.w, i64 %i.ajc
  %i.aje = getelementptr i8, ptr %i.ajd, i64 8
  store double 0.000000e+00, ptr %i.aje, align 8, !tbaa !80
  %indvars.iv.next1362.1 = add nuw nsw i64 %indvars.iv1361, 2
  %i.ajf = mul nsw i64 %indvars.iv.next1362.1, %i.aid
  %i.ajg = getelementptr [8 x i8], ptr %i.w, i64 %i.ajf
  %i.ajh = getelementptr i8, ptr %i.ajg, i64 8
  store double 0.000000e+00, ptr %i.ajh, align 8, !tbaa !80
  %indvars.iv.next1362.2 = add nuw nsw i64 %indvars.iv1361, 3
  %i.aji = mul nsw i64 %indvars.iv.next1362.2, %i.aid
  %i.ajj = getelementptr [8 x i8], ptr %i.w, i64 %i.aji
  %i.ajk = getelementptr i8, ptr %i.ajj, i64 8
  store double 0.000000e+00, ptr %i.ajk, align 8, !tbaa !80
  %indvars.iv.next1362.3 = add nuw nsw i64 %indvars.iv1361, 4
  %i.ajl = mul nsw i64 %indvars.iv.next1362.3, %i.aid
  %i.ajm = getelementptr [8 x i8], ptr %i.w, i64 %i.ajl
  %i.ajn = getelementptr i8, ptr %i.ajm, i64 8
  store double 0.000000e+00, ptr %i.ajn, align 8, !tbaa !80
  %indvars.iv.next1362.4 = add nuw nsw i64 %indvars.iv1361, 5
  %i.ajo = mul nsw i64 %indvars.iv.next1362.4, %i.aid
  %i.ajp = getelementptr [8 x i8], ptr %i.w, i64 %i.ajo
  %i.ajq = getelementptr i8, ptr %i.ajp, i64 8
  store double 0.000000e+00, ptr %i.ajq, align 8, !tbaa !80
  %indvars.iv.next1362.5 = add nuw nsw i64 %indvars.iv1361, 6
  %i.ajr = mul nsw i64 %indvars.iv.next1362.5, %i.aid
  %i.ajs = getelementptr [8 x i8], ptr %i.w, i64 %i.ajr
  %i.ajt = getelementptr i8, ptr %i.ajs, i64 8
  store double 0.000000e+00, ptr %i.ajt, align 8, !tbaa !80
  %indvars.iv.next1362.6 = add nuw nsw i64 %indvars.iv1361, 7
  %i.aju = mul nsw i64 %indvars.iv.next1362.6, %i.aid
  %i.ajv = getelementptr [8 x i8], ptr %i.w, i64 %i.aju
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 8
  store double 0.000000e+00, ptr %i.ajw, align 8, !tbaa !80
  %indvars.iv.next1362.7 = add nuw nsw i64 %indvars.iv1361, 8 ; 2 uses
  %exitcond1365.not.7 = icmp eq i64 %indvars.iv.next1362.7, %wide.trip.count1364
  br i1 %exitcond1365.not.7, label %._crit_edge1310, label %.lr.ph1309, !llvm.loop !67

._crit_edge1310:                                  ; preds = %.lr.ph1309.prol.loopexit, %.lr.ph1309, %middle.block1511, %vec.epilog.middle.block1523, %bb.cu
  %i.ajx = xor i32 %i.aib, -1
  %i.ajy = add i32 %i.aia, %i.ajx
  store i32 %i.ajy, ptr %i.a, align 4, !tbaa !78
  %i.ajz = load i32, ptr %5, align 4, !tbaa !78
  %i.aka = xor i32 %i.ajz, -1
  %i.akb = add i32 %i.aia, %i.aka
  store i32 %i.akb, ptr %i.b, align 4, !tbaa !78
  %i.akc = sext i32 %i.o to i64
  %i.akd = getelementptr [8 x i8], ptr %i.q, i64 %i.akc
  %i.ake = getelementptr i8, ptr %i.akd, i64 16
  %i.akf = shl i32 %i.u, 1
  %i.akg = sext i32 %i.akf to i64
  %i.akh = getelementptr [8 x i8], ptr %i.w, i64 %i.akg
  %i.aki = getelementptr i8, ptr %i.akh, i64 16
  call void @dlacpy_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.ake, ptr noundef nonnull %9, ptr noundef %i.aki, ptr noundef nonnull %14) #5
  %i.akj = load i32, ptr %3, align 4, !tbaa !78   ; 2 uses
  %i.akk = load i32, ptr %4, align 4, !tbaa !78
  %i.akl = sub nsw i32 %i.akj, %i.akk             ; 2 uses
  store i32 %i.akl, ptr %i.a, align 4, !tbaa !78
  store i32 %i.akl, ptr %i.b, align 4, !tbaa !78
  %i.akm = load i32, ptr %5, align 4, !tbaa !78
  %i.akn = sub nsw i32 %i.akj, %i.akm
  store i32 %i.akn, ptr %i.c, align 4, !tbaa !78
  call void @dorgqr_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %13, ptr noundef nonnull %14, ptr noundef nonnull %i.aez, ptr noundef nonnull %i.afd, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e) #5
  br label %bb.cv

bb.cv:                                            ; preds = %._crit_edge1310, %bb.ct, %bb.cs
  %.not1260 = icmp ne i32 %i.ae, 0                ; 2 uses
  %.pre1423 = load i32, ptr %5, align 4, !tbaa !78 ; 3 uses
  %i.ako = icmp sgt i32 %.pre1423, 0
  %or.cond1494 = select i1 %.not1260, i1 %i.ako, i1 false
  br i1 %or.cond1494, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.akp = load i32, ptr %3, align 4, !tbaa !78
  %i.akq = sub nsw i32 %i.akp, %.pre1423
  store i32 %i.akq, ptr %i.a, align 4, !tbaa !78
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %15, ptr noundef nonnull %16) #5
  %i.akr = load i32, ptr %4, align 4, !tbaa !78
  %i.aks = load i32, ptr %3, align 4, !tbaa !78   ; 2 uses
  %i.akt = load i32, ptr %5, align 4, !tbaa !78   ; 3 uses
  %.neg = sub i32 %i.akt, %i.aks                  ; 2 uses
  %i.aku = add i32 %.neg, %i.akr
  store i32 %i.aku, ptr %i.a, align 4, !tbaa !78
  %i.akv = add i32 %.neg, %i.akt
  store i32 %i.akv, ptr %i.b, align 4, !tbaa !78
  %i.akw = sub nsw i32 %i.aks, %i.akt
  %i.akx = add nsw i32 %i.akw, 1                  ; 2 uses
  %i.aky = add i32 %i.l, 1
  %i.akz = mul i32 %i.akx, %i.aky
  %i.ala = sext i32 %i.akz to i64
  %i.alb = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ala
  %i.alc = add i32 %i.x, 1                        ; 2 uses
  %i.ald = mul i32 %i.akx, %i.alc
  %i.ale = sext i32 %i.ald to i64
  %i.alf = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ale
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.alb, ptr noundef nonnull %7, ptr noundef %i.alf, ptr noundef nonnull %16) #5
  %i.alg = load i32, ptr %4, align 4, !tbaa !78   ; 2 uses
  %i.alh = load i32, ptr %5, align 4, !tbaa !78   ; 2 uses
  %i.ali = sub nsw i32 %i.alh, %i.alg             ; 2 uses
  store i32 %i.ali, ptr %i.a, align 4, !tbaa !78
  store i32 %i.ali, ptr %i.b, align 4, !tbaa !78
  %i.alj = load i32, ptr %3, align 4, !tbaa !78
  %i.alk = add nsw i32 %i.alg, 1                  ; 2 uses
  %i.all = mul nsw i32 %i.alk, %i.o
  %reass.sub1359 = sub i32 %i.all, %i.alh
  %i.alm = add i32 %reass.sub1359, 1
  %i.aln = add i32 %i.alm, %i.alj
  %i.alo = sext i32 %i.aln to i64
  %i.alp = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.alo
  %i.alq = mul i32 %i.alk, %i.alc
  %i.alr = sext i32 %i.alq to i64
  %i.als = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.alr
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.alp, ptr noundef nonnull %9, ptr noundef %i.als, ptr noundef nonnull %16) #5
  call void @dorglq_(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %i.afb, ptr noundef nonnull %i.afd, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e) #5
  %.pre1422 = load i32, ptr %5, align 4, !tbaa !78
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.alt = phi i32 [ %.pre1422, %bb.cw ], [ %.pre1423, %bb.cv ]
  %i.alu = load i32, ptr %3, align 4, !tbaa !78   ; 2 uses
  %i.alv = load i32, ptr %4, align 4, !tbaa !78
  %i.alw = sub nsw i32 %i.alu, %i.alv
  store i32 %i.alw, ptr %i.a, align 4, !tbaa !78
  %i.alx = sub nsw i32 %i.alu, %i.alt
  store i32 %i.alx, ptr %i.b, align 4, !tbaa !78
  %i.aly = zext nneg i32 %i.bj to i64
  %i.alz = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.aly
  %i.ama = sext i32 %i.bm to i64
  %i.amb = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ama
  %i.amc = sext i32 %i.bn to i64
  %i.amd = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.amc
  %i.ame = sext i32 %i.bo to i64
  %i.amf = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ame
  %i.amg = sext i32 %i.bp to i64
  %i.amh = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.amg
  %i.ami = sext i32 %i.bq to i64
  %i.amj = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ami
  %i.amk = sext i32 %i.br to i64
  %i.aml = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.amk
  %i.amm = sext i32 %i.bs to i64
  %i.amn = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.amm
  call void @dbbcsd_(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %10, ptr noundef nonnull %i.aev, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %i.k, ptr noundef nonnull @c__1, ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %i.aex, ptr noundef nonnull %i.alz, ptr noundef nonnull %i.amb, ptr noundef nonnull %i.amd, ptr noundef nonnull %i.amf, ptr noundef nonnull %i.amh, ptr noundef nonnull %i.amj, ptr noundef nonnull %i.aml, ptr noundef nonnull %i.amn, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e) #5
  %i.amo = load i32, ptr %4, align 4, !tbaa !78   ; 2 uses
  %i.amp = load i32, ptr %i.d, align 4, !tbaa !78 ; 23 uses
  %i.amq = icmp sgt i32 %i.amo, %i.amp
  br i1 %i.amq, label %bb.cy, label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  %.not12621311 = icmp slt i32 %i.amp, 1
  br i1 %.not12621311, label %._crit_edge1315, label %iter.check1541

iter.check1541:                                   ; preds = %bb.cy
  %i.amr = add nuw nsw i32 %i.amp, 1
  %wide.trip.count1369 = zext nneg i32 %i.amr to i64 ; 3 uses
  %i.ams = zext nneg i32 %i.amp to i64            ; 5 uses
  %min.iters.check1528 = icmp ult i32 %i.amp, 4
  br i1 %min.iters.check1528, label %vec.epilog.scalar.ph1542.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check1541
  %i.amt = shl nuw nsw i64 %wide.trip.count1369, 2
  %i.amu = getelementptr i8, ptr %19, i64 %i.amt
  %scevgep1526 = getelementptr i8, ptr %i.amu, i64 -4
  %scevgep1527 = getelementptr i8, ptr %4, i64 4
  %bound0 = icmp ult ptr %19, %scevgep1527
  %bound1 = icmp ult ptr %4, %scevgep1526
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph1542.preheader, label %vector.main.loop.iter.check1529

vector.main.loop.iter.check1529:                  ; preds = %vector.memcheck
  %min.iters.check1530 = icmp ult i32 %i.amp, 32
  br i1 %min.iters.check1530, label %vec.epilog.ph1545, label %vector.ph1531

vector.ph1531:                                    ; preds = %vector.main.loop.iter.check1529
  %i.amv = and i64 %i.ams, 28
  %n.vec1532 = and i64 %i.ams, 2147483616         ; 4 uses
  %i.amw = or disjoint i64 %n.vec1532, 1          ; 2 uses
  %i.amx = load i32, ptr %4, align 4, !tbaa !78, !alias.scope !103
  %broadcast.splatinsert1535 = insertelement <8 x i32> poison, i32 %i.amx, i64 0
  %broadcast.splat1536 = shufflevector <8 x i32> %broadcast.splatinsert1535, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.amp, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = sub <8 x i32> splat (i32 8), %broadcast.splat
  %invariant.op2013 = sub <8 x i32> splat (i32 16), %broadcast.splat
  %invariant.op2015 = sub <8 x i32> splat (i32 24), %broadcast.splat
  %invariant.op2017 = sub <8 x i32> %broadcast.splat1536, %broadcast.splat
  %invariant.op2019 = add <8 x i32> %invariant.op, %broadcast.splat1536
  %invariant.op2021 = add <8 x i32> %invariant.op2013, %broadcast.splat1536
  %invariant.op2022 = add <8 x i32> %invariant.op2015, %broadcast.splat1536
  br label %vector.body1533

vector.body1533:                                  ; preds = %vector.body1533, %vector.ph1531
  %index1534 = phi i64 [ 0, %vector.ph1531 ], [ %index.next1537, %vector.body1533 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph1531 ], [ %vec.ind.next, %vector.body1533 ] ; 5 uses
  %.reass2018 = add <8 x i32> %vec.ind, %invariant.op2017
  %.reass2020 = add <8 x i32> %vec.ind, %invariant.op2019
  %.reass = add <8 x i32> %vec.ind, %invariant.op2021
  %.reass2023 = add <8 x i32> %vec.ind, %invariant.op2022
  %i.amy = getelementptr [4 x i8], ptr %19, i64 %index1534 ; 4 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 32
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amy, i64 64
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amy, i64 96
  store <8 x i32> %.reass2018, ptr %i.amy, align 4, !tbaa !78, !alias.scope !104, !noalias !103
  store <8 x i32> %.reass2020, ptr %i.amz, align 4, !tbaa !78, !alias.scope !104, !noalias !103
  store <8 x i32> %.reass, ptr %i.ana, align 4, !tbaa !78, !alias.scope !104, !noalias !103
  store <8 x i32> %.reass2023, ptr %i.anb, align 4, !tbaa !78, !alias.scope !104, !noalias !103
  %index.next1537 = add nuw i64 %index1534, 32    ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.anc = icmp eq i64 %index.next1537, %n.vec1532
  br i1 %i.anc, label %middle.block1538, label %vector.body1533, !llvm.loop !71

middle.block1538:                                 ; preds = %vector.body1533
  %cmp.n1539 = icmp eq i64 %n.vec1532, %i.ams
  br i1 %cmp.n1539, label %._crit_edge1315.loopexit, label %vec.epilog.iter.check1543

vec.epilog.iter.check1543:                        ; preds = %middle.block1538
  %min.epilog.iters.check1544 = icmp eq i64 %i.amv, 0
  br i1 %min.epilog.iters.check1544, label %vec.epilog.scalar.ph1542.preheader, label %vec.epilog.ph1545, !prof !91

vec.epilog.ph1545:                                ; preds = %vector.main.loop.iter.check1529, %vec.epilog.iter.check1543
  %vec.epilog.resume.val1540 = phi i64 [ %n.vec1532, %vec.epilog.iter.check1543 ], [ 0, %vector.main.loop.iter.check1529 ]
  %bc.resume.val = phi i64 [ %i.amw, %vec.epilog.iter.check1543 ], [ 1, %vector.main.loop.iter.check1529 ]
  %n.vec1546 = and i64 %i.ams, 2147483644         ; 3 uses
  %i.and = or disjoint i64 %n.vec1546, 1
  %i.ane = load i32, ptr %4, align 4, !tbaa !78, !alias.scope !103
  %broadcast.splatinsert1554 = insertelement <4 x i32> poison, i32 %i.ane, i64 0
  %broadcast.splat1555 = shufflevector <4 x i32> %broadcast.splatinsert1554, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1547 = insertelement <4 x i32> poison, i32 %i.amp, i64 0
  %broadcast.splat1548 = shufflevector <4 x i32> %broadcast.splatinsert1547, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.anf = trunc nsw i64 %bc.resume.val to i32
  %broadcast.splatinsert1549 = insertelement <4 x i32> poison, i32 %i.anf, i64 0
  %broadcast.splat1550 = shufflevector <4 x i32> %broadcast.splatinsert1549, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat1550, <i32 0, i32 1, i32 2, i32 3>
  %invariant.op2024 = sub <4 x i32> %broadcast.splat1555, %broadcast.splat1548
  br label %vec.epilog.vector.body1551

vec.epilog.vector.body1551:                       ; preds = %vec.epilog.vector.body1551, %vec.epilog.ph1545
  %index1552 = phi i64 [ %vec.epilog.resume.val1540, %vec.epilog.ph1545 ], [ %index.next1556, %vec.epilog.vector.body1551 ] ; 2 uses
  %vec.ind1553 = phi <4 x i32> [ %induction, %vec.epilog.ph1545 ], [ %vec.ind.next1557, %vec.epilog.vector.body1551 ] ; 2 uses
  %.reass2025 = add <4 x i32> %vec.ind1553, %invariant.op2024
  %i.ang = getelementptr [4 x i8], ptr %19, i64 %index1552
  store <4 x i32> %.reass2025, ptr %i.ang, align 4, !tbaa !78, !alias.scope !104, !noalias !103
  %index.next1556 = add nuw i64 %index1552, 4     ; 2 uses
  %vec.ind.next1557 = add <4 x i32> %vec.ind1553, splat (i32 4)
  %i.anh = icmp eq i64 %index.next1556, %n.vec1546
  br i1 %i.anh, label %vec.epilog.middle.block1558, label %vec.epilog.vector.body1551, !llvm.loop !72

vec.epilog.middle.block1558:                      ; preds = %vec.epilog.vector.body1551
  %cmp.n1559 = icmp eq i64 %n.vec1546, %i.ams
  br i1 %cmp.n1559, label %._crit_edge1315.loopexit, label %vec.epilog.scalar.ph1542.preheader

vec.epilog.scalar.ph1542.preheader:               ; preds = %vector.memcheck, %iter.check1541, %vec.epilog.iter.check1543, %vec.epilog.middle.block1558
  %indvars.iv1366.ph = phi i64 [ 1, %iter.check1541 ], [ 1, %vector.memcheck ], [ %i.amw, %vec.epilog.iter.check1543 ], [ %i.and, %vec.epilog.middle.block1558 ] ; 4 uses
  %i.ani = sub nsw i64 %wide.trip.count1369, %indvars.iv1366.ph
  %i.anj = zext nneg i32 %i.amp to i64
  %i.ank = sub nsw i64 %i.anj, %indvars.iv1366.ph
  %xtraiter1992 = and i64 %i.ani, 7               ; 2 uses
  %lcmp.mod1993.not = icmp eq i64 %xtraiter1992, 0
  br i1 %lcmp.mod1993.not, label %vec.epilog.scalar.ph1542.prol.loopexit, label %vec.epilog.scalar.ph1542.prol

vec.epilog.scalar.ph1542.prol:                    ; preds = %vec.epilog.scalar.ph1542.preheader, %vec.epilog.scalar.ph1542.prol
  %indvars.iv1366.prol = phi i64 [ %indvars.iv.next1367.prol, %vec.epilog.scalar.ph1542.prol ], [ %indvars.iv1366.ph, %vec.epilog.scalar.ph1542.preheader ] ; 3 uses
  %prol.iter1994 = phi i64 [ %prol.iter1994.next, %vec.epilog.scalar.ph1542.prol ], [ 0, %vec.epilog.scalar.ph1542.preheader ]
  %i.anl = load i32, ptr %4, align 4, !tbaa !78
  %i.anm = trunc i64 %indvars.iv1366.prol to i32
  %i.ann = sub i32 %i.anm, %i.amp
  %i.ano = add i32 %i.ann, %i.anl
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv1366.prol
  store i32 %i.ano, ptr %i.anp, align 4, !tbaa !78
  %indvars.iv.next1367.prol = add nuw nsw i64 %indvars.iv1366.prol, 1 ; 2 uses
  %prol.iter1994.next = add i64 %prol.iter1994, 1 ; 2 uses
  %prol.iter1994.cmp.not = icmp eq i64 %prol.iter1994.next, %xtraiter1992
  br i1 %prol.iter1994.cmp.not, label %vec.epilog.scalar.ph1542.prol.loopexit, label %vec.epilog.scalar.ph1542.prol, !llvm.loop !73

vec.epilog.scalar.ph1542.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1542.prol, %vec.epilog.scalar.ph1542.preheader
  %indvars.iv1366.unr = phi i64 [ %indvars.iv1366.ph, %vec.epilog.scalar.ph1542.preheader ], [ %indvars.iv.next1367.prol, %vec.epilog.scalar.ph1542.prol ]
  %i.anq = icmp ult i64 %i.ank, 7
  br i1 %i.anq, label %._crit_edge1315.loopexit, label %vec.epilog.scalar.ph1542.preheader.new

vec.epilog.scalar.ph1542.preheader.new:           ; preds = %vec.epilog.scalar.ph1542.prol.loopexit
  %invariant.op2026 = sub i32 1, %i.amp
  br label %vec.epilog.scalar.ph1542

vec.epilog.scalar.ph1542:                         ; preds = %vec.epilog.scalar.ph1542, %vec.epilog.scalar.ph1542.preheader.new
  %indvars.iv1366 = phi i64 [ %indvars.iv1366.unr, %vec.epilog.scalar.ph1542.preheader.new ], [ %indvars.iv.next1367.7, %vec.epilog.scalar.ph1542 ] ; 11 uses
  %i.anr = load i32, ptr %4, align 4, !tbaa !78
  %i.ans = trunc i64 %indvars.iv1366 to i32
  %i.ant = sub i32 %i.ans, %i.amp
  %i.anu = add i32 %i.ant, %i.anr
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv1366
  store i32 %i.anu, ptr %i.anv, align 4, !tbaa !78
  %i.anw = load i32, ptr %4, align 4, !tbaa !78
  %i.anx = trunc i64 %indvars.iv1366 to i32
  %.reass2027 = add i32 %i.anx, %invariant.op2026
  %i.any = add i32 %.reass2027, %i.anw
  %i.anz = getelementptr [4 x i8], ptr %19, i64 %indvars.iv1366
  store i32 %i.any, ptr %i.anz, align 4, !tbaa !78
  %indvars.iv.next1367.1 = add nuw nsw i64 %indvars.iv1366, 2 ; 2 uses
  %i.aoa = load i32, ptr %4, align 4, !tbaa !78
  %i.aob = trunc i64 %indvars.iv.next1367.1 to i32
  %i.aoc = sub i32 %i.aob, %i.amp
  %i.aod = add i32 %i.aoc, %i.aoa
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next1367.1
  store i32 %i.aod, ptr %i.aoe, align 4, !tbaa !78
  %indvars.iv.next1367.2 = add nuw nsw i64 %indvars.iv1366, 3 ; 2 uses
  %i.aof = load i32, ptr %4, align 4, !tbaa !78
  %i.aog = trunc i64 %indvars.iv.next1367.2 to i32
  %i.aoh = sub i32 %i.aog, %i.amp
  %i.aoi = add i32 %i.aoh, %i.aof
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next1367.2
  store i32 %i.aoi, ptr %i.aoj, align 4, !tbaa !78
  %indvars.iv.next1367.3 = add nuw nsw i64 %indvars.iv1366, 4 ; 2 uses
  %i.aok = load i32, ptr %4, align 4, !tbaa !78
  %i.aol = trunc i64 %indvars.iv.next1367.3 to i32
  %i.aom = sub i32 %i.aol, %i.amp
  %i.aon = add i32 %i.aom, %i.aok
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next1367.3
  store i32 %i.aon, ptr %i.aoo, align 4, !tbaa !78
  %indvars.iv.next1367.4 = add nuw nsw i64 %indvars.iv1366, 5 ; 2 uses
  %i.aop = load i32, ptr %4, align 4, !tbaa !78
  %i.aoq = trunc i64 %indvars.iv.next1367.4 to i32
  %i.aor = sub i32 %i.aoq, %i.amp
  %i.aos = add i32 %i.aor, %i.aop
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next1367.4
  store i32 %i.aos, ptr %i.aot, align 4, !tbaa !78
  %indvars.iv.next1367.5 = add nuw nsw i64 %indvars.iv1366, 6 ; 2 uses
  %i.aou = load i32, ptr %4, align 4, !tbaa !78
  %i.aov = trunc i64 %indvars.iv.next1367.5 to i32
  %i.aow = sub i32 %i.aov, %i.amp
  %i.aox = add i32 %i.aow, %i.aou
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next1367.5
  store i32 %i.aox, ptr %i.aoy, align 4, !tbaa !78
  %indvars.iv.next1367.6 = add nuw nsw i64 %indvars.iv1366, 7 ; 2 uses
  %i.aoz = load i32, ptr %4, align 4, !tbaa !78
  %i.apa = trunc i64 %indvars.iv.next1367.6 to i32
  %i.apb = sub i32 %i.apa, %i.amp
  %i.apc = add i32 %i.apb, %i.aoz
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next1367.6
  store i32 %i.apc, ptr %i.apd, align 4, !tbaa !78
  %indvars.iv.next1367.7 = add nuw nsw i64 %indvars.iv1366, 8 ; 2 uses
  %exitcond1370.not.7 = icmp eq i64 %indvars.iv.next1367.7, %wide.trip.count1369
  br i1 %exitcond1370.not.7, label %._crit_edge1315.loopexit, label %vec.epilog.scalar.ph1542, !llvm.loop !74

._crit_edge1315.loopexit:                         ; preds = %vec.epilog.scalar.ph1542.prol.loopexit, %vec.epilog.scalar.ph1542, %vec.epilog.middle.block1558, %middle.block1538
  %.pre1424 = load i32, ptr %4, align 4, !tbaa !78
  br label %._crit_edge1315

._crit_edge1315:                                  ; preds = %._crit_edge1315.loopexit, %bb.cy
  %i.ape = phi i32 [ %.pre1424, %._crit_edge1315.loopexit ], [ %i.amo, %bb.cy ] ; 3 uses
  store i32 %i.ape, ptr %i.a, align 4, !tbaa !78
  %.not1263.not1316 = icmp slt i32 %i.amp, %i.ape
  br i1 %.not1263.not1316, label %iter.check1583, label %._crit_edge1320

iter.check1583:                                   ; preds = %._crit_edge1315
  %i.apf = sext i32 %i.amp to i64                 ; 8 uses
  %wide.trip.count1374 = sext i32 %i.ape to i64   ; 2 uses
  %i.apg = sub nsw i64 %wide.trip.count1374, %i.apf ; 7 uses
  %min.iters.check1561 = icmp ult i64 %i.apg, 4
  br i1 %min.iters.check1561, label %.lr.ph1319.preheader, label %vector.main.loop.iter.check1562

vector.main.loop.iter.check1562:                  ; preds = %iter.check1583
  %min.iters.check1563 = icmp ult i64 %i.apg, 32
  br i1 %min.iters.check1563, label %vec.epilog.ph1587, label %vector.ph1564

vector.ph1564:                                    ; preds = %vector.main.loop.iter.check1562
  %i.aph = and i64 %i.apg, 28
  %n.vec1565 = and i64 %i.apg, -32                ; 4 uses
  %i.api = add nsw i64 %n.vec1565, %i.apf         ; 2 uses
  %broadcast.splatinsert1566 = insertelement <8 x i32> poison, i32 %i.amp, i64 0
  %broadcast.splat1567 = shufflevector <8 x i32> %broadcast.splatinsert1566, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1568 = insertelement <8 x i64> poison, i64 %i.apf, i64 0
  %broadcast.splat1569 = shufflevector <8 x i64> %broadcast.splatinsert1568, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction1570 = add nsw <8 x i64> %broadcast.splat1569, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %invariant.gep = getelementptr [4 x i8], ptr %19, i64 %i.apf
  %invariant.op2028 = sub <8 x i32> splat (i32 1), %broadcast.splat1567
  %invariant.op2030 = sub <8 x i32> splat (i32 9), %broadcast.splat1567
  %invariant.op2032 = sub <8 x i32> splat (i32 17), %broadcast.splat1567
  %invariant.op2034 = sub <8 x i32> splat (i32 25), %broadcast.splat1567
  br label %vector.body1571

vector.body1571:                                  ; preds = %vector.body1571, %vector.ph1564
  %index1572 = phi i64 [ 0, %vector.ph1564 ], [ %index.next1577, %vector.body1571 ] ; 2 uses
  %vec.ind1573 = phi <8 x i64> [ %induction1570, %vector.ph1564 ], [ %vec.ind.next1578, %vector.body1571 ] ; 5 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index1572 ; 4 uses
  %i.apj = trunc <8 x i64> %vec.ind1573 to <8 x i32>
  %i.apk = trunc <8 x i64> %vec.ind1573 to <8 x i32>
  %i.apl = trunc <8 x i64> %vec.ind1573 to <8 x i32>
  %i.apm = trunc <8 x i64> %vec.ind1573 to <8 x i32>
  %.reass2029 = add <8 x i32> %i.apj, %invariant.op2028
  %.reass2031 = add <8 x i32> %i.apk, %invariant.op2030
  %.reass2033 = add <8 x i32> %i.apl, %invariant.op2032
  %.reass2035 = add <8 x i32> %i.apm, %invariant.op2034
  %i.apn = getelementptr i8, ptr %gep, i64 32
  %i.apo = getelementptr i8, ptr %gep, i64 64
  %i.app = getelementptr i8, ptr %gep, i64 96
  store <8 x i32> %.reass2029, ptr %gep, align 4, !tbaa !78
  store <8 x i32> %.reass2031, ptr %i.apn, align 4, !tbaa !78
  store <8 x i32> %.reass2033, ptr %i.apo, align 4, !tbaa !78
  store <8 x i32> %.reass2035, ptr %i.app, align 4, !tbaa !78
  %index.next1577 = add nuw i64 %index1572, 32    ; 2 uses
  %vec.ind.next1578 = add nsw <8 x i64> %vec.ind1573, splat (i64 32)
  %i.apq = icmp eq i64 %index.next1577, %n.vec1565
  br i1 %i.apq, label %middle.block1579, label %vector.body1571, !llvm.loop !75

middle.block1579:                                 ; preds = %vector.body1571
  %cmp.n1580 = icmp eq i64 %i.apg, %n.vec1565
  br i1 %cmp.n1580, label %._crit_edge1320, label %vec.epilog.iter.check1585

vec.epilog.iter.check1585:                        ; preds = %middle.block1579
  %min.epilog.iters.check1586 = icmp eq i64 %i.aph, 0
  br i1 %min.epilog.iters.check1586, label %.lr.ph1319.preheader, label %vec.epilog.ph1587, !prof !91

vec.epilog.ph1587:                                ; preds = %vector.main.loop.iter.check1562, %vec.epilog.iter.check1585
  %vec.epilog.resume.val1581 = phi i64 [ %n.vec1565, %vec.epilog.iter.check1585 ], [ 0, %vector.main.loop.iter.check1562 ]
  %bc.resume.val1582 = phi i64 [ %i.api, %vec.epilog.iter.check1585 ], [ %i.apf, %vector.main.loop.iter.check1562 ]
  %n.vec1588 = and i64 %i.apg, -4                 ; 3 uses
  %i.apr = add nsw i64 %n.vec1588, %i.apf
  %broadcast.splatinsert1589 = insertelement <4 x i32> poison, i32 %i.amp, i64 0
  %broadcast.splat1590 = shufflevector <4 x i32> %broadcast.splatinsert1589, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1591 = insertelement <4 x i64> poison, i64 %bc.resume.val1582, i64 0
  %broadcast.splat1592 = shufflevector <4 x i64> %broadcast.splatinsert1591, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1593 = add nsw <4 x i64> %broadcast.splat1592, <i64 0, i64 1, i64 2, i64 3>
  %invariant.gep2036 = getelementptr [4 x i8], ptr %19, i64 %i.apf
  %invariant.op2038 = sub <4 x i32> splat (i32 1), %broadcast.splat1590
  br label %vec.epilog.vector.body1594

vec.epilog.vector.body1594:                       ; preds = %vec.epilog.vector.body1594, %vec.epilog.ph1587
  %index1595 = phi i64 [ %vec.epilog.resume.val1581, %vec.epilog.ph1587 ], [ %index.next1597, %vec.epilog.vector.body1594 ] ; 2 uses
  %vec.ind1596 = phi <4 x i64> [ %induction1593, %vec.epilog.ph1587 ], [ %vec.ind.next1598, %vec.epilog.vector.body1594 ] ; 2 uses
  %gep2037 = getelementptr [4 x i8], ptr %invariant.gep2036, i64 %index1595
  %22 = trunc <4 x i64> %vec.ind1596 to <4 x i32>
  %.reass2039 = add <4 x i32> %22, %invariant.op2038
  store <4 x i32> %.reass2039, ptr %gep2037, align 4, !tbaa !78
  %index.next1597 = add nuw i64 %index1595, 4     ; 2 uses
  %vec.ind.next1598 = add nsw <4 x i64> %vec.ind1596, splat (i64 4)
  %i.aps = icmp eq i64 %index.next1597, %n.vec1588
  br i1 %i.aps, label %vec.epilog.middle.block1599, label %vec.epilog.vector.body1594, !llvm.loop !76

vec.epilog.middle.block1599:                      ; preds = %vec.epilog.vector.body1594
  %cmp.n1600 = icmp eq i64 %i.apg, %n.vec1588
  br i1 %cmp.n1600, label %._crit_edge1320, label %.lr.ph1319.preheader

.lr.ph1319.preheader:                             ; preds = %iter.check1583, %vec.epilog.iter.check1585, %vec.epilog.middle.block1599
  %indvars.iv1371.ph = phi i64 [ %i.apf, %iter.check1583 ], [ %i.api, %vec.epilog.iter.check1585 ], [ %i.apr, %vec.epilog.middle.block1599 ]
  br label %.lr.ph1319

.lr.ph1319:                                       ; preds = %.lr.ph1319.preheader, %.lr.ph1319
  %indvars.iv1371 = phi i64 [ %indvars.iv.next1372, %.lr.ph1319 ], [ %indvars.iv1371.ph, %.lr.ph1319.preheader ] ; 2 uses
  %indvars.iv.next1372 = add nsw i64 %indvars.iv1371, 1 ; 3 uses
  %i.apt = getelementptr [4 x i8], ptr %19, i64 %indvars.iv1371
  %i.apu = trunc i64 %indvars.iv.next1372 to i32
  %i.apv = sub i32 %i.apu, %i.amp
  store i32 %i.apv, ptr %i.apt, align 4, !tbaa !78
  %exitcond1375.not = icmp eq i64 %indvars.iv.next1372, %wide.trip.count1374
  br i1 %exitcond1375.not, label %._crit_edge1320, label %.lr.ph1319, !llvm.loop !77

._crit_edge1320:                                  ; preds = %.lr.ph1319, %middle.block1579, %vec.epilog.middle.block1599, %._crit_edge1315
  br i1 %.not1256, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %._crit_edge1320
  call void @dlapmt_(ptr noundef nonnull @c_false, ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %19) #5
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %._crit_edge1320
  br i1 %.not1260, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void @dlapmr_(ptr noundef nonnull @c_false, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %15, ptr noundef nonnull %16, ptr noundef %19) #5
  br label %bb.dc

bb.dc:                                            ; preds = %._crit_edge1357, %bb.bp, %bb.cn, %bb.co, %bb.ck, %bb.da, %bb.db, %bb.cx, %bb.ca, %._crit_edge1346, %bb.be, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dorbdb1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dorgqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dorglq_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dbbcsd_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dorbdb2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dorbdb3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dorbdb4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlapmt_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlapmr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !81, !82, !83}
!9 = distinct !{!9, !81, !82, !83}
!10 = distinct !{!10, !85}
!11 = distinct !{!11, !81, !82}
!12 = distinct !{!12, !"LVerDomain"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !81, !82, !83}
!18 = distinct !{!18, !81, !82, !83}
!19 = distinct !{!19, !85}
!20 = distinct !{!20, !81, !82}
!21 = distinct !{!21, !"LVerDomain"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !81, !82, !83}
!25 = distinct !{!25, !81, !82, !83}
!26 = distinct !{!26, !81, !82}
!27 = distinct !{!27, !81, !82, !83}
!28 = distinct !{!28, !81, !82, !83}
!29 = distinct !{!29, !85}
!30 = distinct !{!30, !81, !82}
!31 = distinct !{!31, !"LVerDomain"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !31}
!35 = distinct !{!35, !31}
!36 = distinct !{!36, !81, !82, !83}
!37 = distinct !{!37, !81, !82, !83}
!38 = distinct !{!38, !85}
!39 = distinct !{!39, !81, !82}
!40 = distinct !{!40, !"LVerDomain"}
!41 = distinct !{!41, !40}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !81, !82, !83}
!44 = distinct !{!44, !81, !82, !83}
!45 = distinct !{!45, !81, !82}
!46 = distinct !{!46, !81, !82, !83}
!47 = distinct !{!47, !81, !82, !83}
!48 = distinct !{!48, !85}
!49 = distinct !{!49, !81, !82}
!50 = distinct !{!50, !"LVerDomain"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !81, !82, !83}
!54 = distinct !{!54, !81, !82, !83}
!55 = distinct !{!55, !85}
!56 = distinct !{!56, !81, !82}
!57 = distinct !{!57, !81, !82, !83}
!58 = distinct !{!58, !81, !82, !83}
!59 = distinct !{!59, !81, !83, !82}
!60 = distinct !{!60, !81, !82, !83}
!61 = distinct !{!61, !81, !82, !83}
!62 = distinct !{!62, !85}
!63 = distinct !{!63, !81, !82}
!64 = distinct !{!64, !81, !82, !83}
!65 = distinct !{!65, !81, !82, !83}
!66 = distinct !{!66, !85}
!67 = distinct !{!67, !81, !82}
!68 = distinct !{!68, !"LVerDomain"}
!69 = distinct !{!69, !68}
!70 = distinct !{!70, !68}
!71 = distinct !{!71, !81, !82, !83}
!72 = distinct !{!72, !81, !82, !83}
!73 = distinct !{!73, !85}
!74 = distinct !{!74, !81, !82}
!75 = distinct !{!75, !81, !82, !83}
!76 = distinct !{!76, !81, !82, !83}
!77 = distinct !{!77, !81, !83, !82}
!78 = !{!5, !5, i64 0}
!79 = !{!"double", !4, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = !{!"branch_weights", i32 4, i32 12}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!13}
!87 = !{!14}
!88 = !{!15}
!89 = !{!16}
!90 = !{!13, !14, !15}
!91 = !{!"branch_weights", i32 4, i32 28}
!92 = !{!22}
!93 = !{!23}
!94 = !{!32}
!95 = !{!33}
!96 = !{!34}
!97 = !{!35}
!98 = !{!32, !33, !34}
!99 = !{!41}
!100 = !{!42}
!101 = !{!51}
!102 = !{!52}
!103 = !{!69}
!104 = !{!70}
end_hunk_1
