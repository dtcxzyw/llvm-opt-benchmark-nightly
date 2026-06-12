inline.NumInlined: 12
inline.NumDeleted: 7
begin_hunk_0_@nsis_BZ2_bzDecompress:bb.a
vector.body552.2:                                 ; preds = %vector.body552.1
  %i.avi = add nuw nsw i64 %i.aud, 4294967231
  %i.avj = and i64 %i.avi, 4294967295
  %i.avk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.avj ; 2 uses
  %i.avl = getelementptr inbounds i8, ptr %i.avk, i64 -15
  %i.avm = getelementptr inbounds i8, ptr %i.avk, i64 -31
  %wide.load554.2 = load <16 x i8>, ptr %i.avl, align 1, !tbaa !34
  %wide.load555.2 = load <16 x i8>, ptr %i.avm, align 1, !tbaa !34
  %i.avn = getelementptr i8, ptr %i.a, i64 %i.aud ; 2 uses
  %i.avo = getelementptr i8, ptr %i.avn, i64 -79
  %i.avp = getelementptr i8, ptr %i.avn, i64 -95
  store <16 x i8> %wide.load554.2, ptr %i.avo, align 1, !tbaa !34
  store <16 x i8> %wide.load555.2, ptr %i.avp, align 1, !tbaa !34
  %i.avq = icmp eq i64 %n.vec551, 96
  br i1 %i.avq, label %middle.block561, label %vector.body552.3

vector.body552.3:                                 ; preds = %vector.body552.2
  %i.avr = add nuw nsw i64 %i.aud, 4294967199
  %i.avs = and i64 %i.avr, 4294967295
  %i.avt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.avs ; 2 uses
  %i.avu = getelementptr inbounds i8, ptr %i.avt, i64 -15
  %i.avv = getelementptr inbounds i8, ptr %i.avt, i64 -31
  %wide.load554.3 = load <16 x i8>, ptr %i.avu, align 1, !tbaa !34
  %wide.load555.3 = load <16 x i8>, ptr %i.avv, align 1, !tbaa !34
  %i.avw = getelementptr i8, ptr %i.a, i64 %i.aud ; 2 uses
  %i.avx = getelementptr i8, ptr %i.avw, i64 -111
  %i.avy = getelementptr i8, ptr %i.avw, i64 -127
  store <16 x i8> %wide.load554.3, ptr %i.avx, align 1, !tbaa !34
  store <16 x i8> %wide.load555.3, ptr %i.avy, align 1, !tbaa !34
  %i.avz = icmp eq i64 %n.vec551, 128
  br i1 %i.avz, label %middle.block561, label %vector.body552.4

vector.body552.4:                                 ; preds = %vector.body552.3
  %i.awa = add nuw nsw i64 %i.aud, 4294967167
  %i.awb = and i64 %i.awa, 4294967295
  %i.awc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.awb ; 2 uses
  %i.awd = getelementptr inbounds i8, ptr %i.awc, i64 -15
  %i.awe = getelementptr inbounds i8, ptr %i.awc, i64 -31
  %wide.load554.4 = load <16 x i8>, ptr %i.awd, align 1, !tbaa !34
  %wide.load555.4 = load <16 x i8>, ptr %i.awe, align 1, !tbaa !34
  %i.awf = getelementptr i8, ptr %i.a, i64 %i.aud ; 2 uses
  %i.awg = getelementptr i8, ptr %i.awf, i64 -143
  %i.awh = getelementptr i8, ptr %i.awf, i64 -159
  store <16 x i8> %wide.load554.4, ptr %i.awg, align 1, !tbaa !34
  store <16 x i8> %wide.load555.4, ptr %i.awh, align 1, !tbaa !34
  %i.awi = icmp eq i64 %n.vec551, 160
  br i1 %i.awi, label %middle.block561, label %vector.body552.5

vector.body552.5:                                 ; preds = %vector.body552.4
  %i.awj = add nuw nsw i64 %i.aud, 4294967135
  %i.awk = and i64 %i.awj, 4294967295
  %i.awl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.awk ; 2 uses
  %i.awm = getelementptr inbounds i8, ptr %i.awl, i64 -15
  %i.awn = getelementptr inbounds i8, ptr %i.awl, i64 -31
  %wide.load554.5 = load <16 x i8>, ptr %i.awm, align 1, !tbaa !34
  %wide.load555.5 = load <16 x i8>, ptr %i.awn, align 1, !tbaa !34
  %i.awo = getelementptr i8, ptr %i.a, i64 %i.aud ; 2 uses
  %i.awp = getelementptr i8, ptr %i.awo, i64 -175
  %i.awq = getelementptr i8, ptr %i.awo, i64 -191
  store <16 x i8> %wide.load554.5, ptr %i.awp, align 1, !tbaa !34
  store <16 x i8> %wide.load555.5, ptr %i.awq, align 1, !tbaa !34
  %i.awr = icmp eq i64 %n.vec551, 192
  br i1 %i.awr, label %middle.block561, label %vector.body552.6

vector.body552.6:                                 ; preds = %vector.body552.5
  %i.aws = add nuw nsw i64 %i.aud, 4294967103
  %i.awt = and i64 %i.aws, 4294967295
  %i.awu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.awt ; 2 uses
  %i.awv = getelementptr inbounds i8, ptr %i.awu, i64 -15
  %i.aww = getelementptr inbounds i8, ptr %i.awu, i64 -31
  %wide.load554.6 = load <16 x i8>, ptr %i.awv, align 1, !tbaa !34
  %wide.load555.6 = load <16 x i8>, ptr %i.aww, align 1, !tbaa !34
  %i.awx = getelementptr i8, ptr %i.a, i64 %i.aud ; 2 uses
  %i.awy = getelementptr i8, ptr %i.awx, i64 -207
  %i.awz = getelementptr i8, ptr %i.awx, i64 -223
  store <16 x i8> %wide.load554.6, ptr %i.awy, align 1, !tbaa !34
  store <16 x i8> %wide.load555.6, ptr %i.awz, align 1, !tbaa !34
  br label %middle.block561

middle.block561:                                  ; preds = %vector.body552.6, %vector.body552.5, %vector.body552.4, %vector.body552.3, %vector.body552.2, %vector.body552.1, %vector.ph549
  %cmp.n562 = icmp eq i64 %n.vec551, %i.aud
  br i1 %cmp.n562, label %._crit_edge1526.i, label %vec.epilog.iter.check567

vec.epilog.iter.check567:                         ; preds = %middle.block561
  %min.epilog.iters.check568 = icmp eq i64 %n.mod.vf550, 0
  br i1 %min.epilog.iters.check568, label %.lr.ph1525.i.preheader, label %vec.epilog.ph569, !prof !88

vec.epilog.ph569:                                 ; preds = %vector.main.loop.iter.check547, %vec.epilog.iter.check567
  %vec.epilog.resume.val563 = phi i64 [ %n.vec551, %vec.epilog.iter.check567 ], [ 0, %vector.main.loop.iter.check547 ]
  %n.vec571 = and i64 %i.aud, 248                 ; 2 uses
  %i.axa = and i64 %i.aud, 7
  br label %vec.epilog.vector.body572

vec.epilog.vector.body572:                        ; preds = %vec.epilog.vector.body572, %vec.epilog.ph569
  %index573 = phi i64 [ %vec.epilog.resume.val563, %vec.epilog.ph569 ], [ %index.next577, %vec.epilog.vector.body572 ] ; 2 uses
  %i.axb = sub i64 %i.aud, %index573              ; 2 uses
  %i.axc = add nuw nsw i64 %i.axb, 4294967295
  %i.axd = and i64 %i.axc, 4294967295
  %i.axe = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.axd
  %i.axf = getelementptr inbounds i8, ptr %i.axe, i64 -7
  %wide.load574 = load <8 x i8>, ptr %i.axf, align 1, !tbaa !34
  %i.axg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.axb
  %i.axh = getelementptr inbounds i8, ptr %i.axg, i64 -7
  store <8 x i8> %wide.load574, ptr %i.axh, align 1, !tbaa !34
  %index.next577 = add nuw i64 %index573, 8       ; 2 uses
  %i.axi = icmp eq i64 %index.next577, %n.vec571
  br i1 %i.axi, label %vec.epilog.middle.block578, label %vec.epilog.vector.body572, !llvm.loop !89

vec.epilog.middle.block578:                       ; preds = %vec.epilog.vector.body572
  %cmp.n579 = icmp eq i64 %n.vec571, %i.aud
  br i1 %cmp.n579, label %._crit_edge1526.i, label %.lr.ph1525.i.preheader

.lr.ph1525.i.preheader:                           ; preds = %vector.memcheck543, %vector.scevcheck542, %iter.check565, %vec.epilog.iter.check567, %vec.epilog.middle.block578
  %indvars.iv.i.ph = phi i64 [ %i.aud, %iter.check565 ], [ %i.aud, %vector.scevcheck542 ], [ %i.aud, %vector.memcheck543 ], [ %i.aup, %vec.epilog.iter.check567 ], [ %i.axa, %vec.epilog.middle.block578 ] ; 6 uses
  %i.axj = trunc nuw i64 %indvars.iv.i.ph to i8
  %xtraiter = and i8 %i.axj, 1
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1525.i.prol.loopexit, label %.lr.ph1525.i.prol

.lr.ph1525.i.prol:                                ; preds = %.lr.ph1525.i.preheader
  %i.axk = add nuw nsw i64 %indvars.iv.i.ph, 4294967295
  %i.axl = and i64 %i.axk, 4294967295
  %i.axm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.axl
  %i.axn = load i8, ptr %i.axm, align 1, !tbaa !34
  %i.axo = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.ph
  store i8 %i.axn, ptr %i.axo, align 1, !tbaa !34
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.ph, -1
  br label %.lr.ph1525.i.prol.loopexit

.lr.ph1525.i.prol.loopexit:                       ; preds = %.lr.ph1525.i.prol, %.lr.ph1525.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph1525.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph1525.i.prol ]
  %i.axp = icmp eq i64 %indvars.iv.i.ph, 1
  br i1 %i.axp, label %._crit_edge1526.i, label %.lr.ph1525.i

.lr.ph1525.i:                                     ; preds = %.lr.ph1525.i.prol.loopexit, %.lr.ph1525.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph1525.i ], [ %indvars.iv.i.unr, %.lr.ph1525.i.prol.loopexit ] ; 5 uses
  %i.axq = add nuw nsw i64 %indvars.iv.i, 4294967295
  %i.axr = and i64 %i.axq, 4294967295
  %i.axs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.axr
  %i.axt = load i8, ptr %i.axs, align 1, !tbaa !34
  %i.axu = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.axt, ptr %i.axu, align 1, !tbaa !34
  %i.axv = add nsw i64 %indvars.iv.i, 4294967294
  %i.axw = and i64 %i.axv, 4294967295
  %i.axx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.axw
  %i.axy = load i8, ptr %i.axx, align 1, !tbaa !34
  %i.axz = getelementptr i8, ptr %i.a, i64 %indvars.iv.i
  %i.aya = getelementptr i8, ptr %i.axz, i64 -1
  store i8 %i.axy, ptr %i.aya, align 1, !tbaa !34
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.ayb = and i64 %indvars.iv.next.i.1, 255
  %.not1348.i.1 = icmp eq i64 %i.ayb, 0
  br i1 %.not1348.i.1, label %._crit_edge1526.i, label %.lr.ph1525.i, !llvm.loop !90

._crit_edge1526.i:                                ; preds = %.lr.ph1525.i.prol.loopexit, %.lr.ph1525.i, %middle.block561, %vec.epilog.middle.block578, %bb.dj
  store i8 %i.auf, ptr %i.a, align 16, !tbaa !34
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv1737.i
  store i8 %i.auf, ptr %i.ayc, align 1, !tbaa !34
  %indvars.iv.next1738.i = add nuw nsw i64 %indvars.iv1737.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next1738.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge1529.i, label %bb.dj, !llvm.loop !91

._crit_edge1529.i:                                ; preds = %._crit_edge1526.i, %.preheader1393.i
  %.12.lcssa.i = phi i32 [ 0, %.preheader1393.i ], [ %.01032.i, %._crit_edge1526.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.dk

bb.dk:                                            ; preds = %bb.ed, %._crit_edge1529.i
  %i.ayd = phi i32 [ %i.arc, %._crit_edge1529.i ], [ %i.baq, %bb.ed ]
  %i.aye = phi i32 [ %i.ard, %._crit_edge1529.i ], [ %i.bar, %bb.ed ]
  %i.ayf = phi i32 [ %i.are, %._crit_edge1529.i ], [ %i.bas, %bb.ed ]
  %i.ayg = phi i32 [ %i.arf, %._crit_edge1529.i ], [ %i.bat, %bb.ed ] ; 3 uses
  %i.ayh = phi i32 [ %i.arg, %._crit_edge1529.i ], [ %i.bau, %bb.ed ]
  %i.ayi = phi i32 [ %i.arh, %._crit_edge1529.i ], [ %i.bav, %bb.ed ]
  %i.ayj = phi i32 [ %i.ari, %._crit_edge1529.i ], [ %i.baw, %bb.ed ] ; 3 uses
  %i.ayk = phi i32 [ %i.arj, %._crit_edge1529.i ], [ %i.bax, %bb.ed ] ; 3 uses
  %i.ayl = phi i32 [ %i.arl, %._crit_edge1529.i ], [ %i.bay, %bb.ed ] ; 3 uses
  %i.aym = phi i32 [ %i.arm, %._crit_edge1529.i ], [ %i.baz, %bb.ed ] ; 2 uses
  %i.ayn = phi i32 [ %i.arn, %._crit_edge1529.i ], [ %i.bba, %bb.ed ] ; 3 uses
  %i.ayo = phi i32 [ %i.aro, %._crit_edge1529.i ], [ %i.bbb, %bb.ed ] ; 3 uses
  %i.ayp = phi i32 [ %i.arp, %._crit_edge1529.i ], [ %i.bbc, %bb.ed ] ; 2 uses
  %i.ayq = phi i32 [ %i.arq, %._crit_edge1529.i ], [ %i.bbd, %bb.ed ] ; 2 uses
  %i.ayr = phi ptr [ %i.arr, %._crit_edge1529.i ], [ %i.bbe, %bb.ed ] ; 2 uses
  %i.ays = phi ptr [ %i.ars, %._crit_edge1529.i ], [ %i.bbf, %bb.ed ] ; 2 uses
  %i.ayt = phi ptr [ %i.art, %._crit_edge1529.i ], [ %i.bbg, %bb.ed ] ; 2 uses
  %.01155.i = phi i32 [ %i.ark, %._crit_edge1529.i ], [ %.21157.i, %bb.ed ] ; 3 uses
  %.31035.i = phi i32 [ %.01032.i, %._crit_edge1529.i ], [ %.51037.i, %bb.ed ] ; 4 uses
  %.41014.i = phi i32 [ %.11011.i, %._crit_edge1529.i ], [ %.61016.i, %bb.ed ] ; 7 uses
  %.5988.i = phi i32 [ %.2985.i, %._crit_edge1529.i ], [ %.7990.i, %bb.ed ] ; 9 uses
  %.0964.i = phi i32 [ 0, %._crit_edge1529.i ], [ %i.bfs, %bb.ed ] ; 2 uses
  %.9944.i = phi i32 [ %.6941.i, %._crit_edge1529.i ], [ %.11946.i, %bb.ed ] ; 3 uses
  %.13.i = phi i32 [ %.12.lcssa.i, %._crit_edge1529.i ], [ %.15.i, %bb.ed ]
  %i.ayu = icmp slt i32 %.0964.i, %.41014.i
  br i1 %i.ayu, label %bb.dl, label %.preheader1392.i

.preheader1392.i:                                 ; preds = %bb.dk
  %i.ayv = icmp sgt i32 %.41014.i, 0
  br i1 %i.ayv, label %.preheader1391.lr.ph.i, label %._crit_edge1539.i

.preheader1391.lr.ph.i:                           ; preds = %.preheader1392.i
  %1 = icmp sgt i32 %.5988.i, 0
  %wide.trip.count.i.i = zext i32 %.5988.i to i64 ; 7 uses
  %wide.trip.count1751.i = zext nneg i32 %.41014.i to i64
  %min.iters.check525 = icmp ult i32 %.5988.i, 8
  %n.vec528 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n539 = icmp eq i64 %n.vec528, %wide.trip.count.i.i
  %xtraiter751 = and i64 %wide.trip.count.i.i, 1
  %i.ayw = icmp eq i32 %.5988.i, 1
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  %lcmp.mod752.not = icmp eq i64 %xtraiter751, 0
  %lcmp.mod754 = trunc i32 %.5988.i to i1
  %xtraiter755 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.ayx = icmp ult i32 %.5988.i, 4
  %unroll_iter758 = and i64 %wide.trip.count.i.i, 2147483644
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  %lcmp.mod757 = icmp ne i64 %xtraiter755, 0
  br label %.preheader1391.i

bb.dl:                                            ; preds = %bb.dk, %bb.au
  %i.ayy = phi i32 [ %i.ayd, %bb.dk ], [ %.pre1854.i, %bb.au ] ; 2 uses
  %i.ayz = phi i32 [ %i.aye, %bb.dk ], [ %.pre1856.i, %bb.au ] ; 2 uses
  %i.aza = phi i32 [ %i.ayf, %bb.dk ], [ %.pre1858.i, %bb.au ] ; 2 uses
  %i.azb = phi i32 [ %i.ayg, %bb.dk ], [ %.pre1860.i, %bb.au ] ; 2 uses
  %i.azc = phi i32 [ %i.ayh, %bb.dk ], [ %.pre1862.i, %bb.au ] ; 2 uses
  %i.azd = phi i32 [ %i.ayi, %bb.dk ], [ %.pre1864.i, %bb.au ] ; 2 uses
  %i.aze = phi i32 [ %i.ayj, %bb.dk ], [ %.pre1866.i, %bb.au ] ; 2 uses
  %i.azf = phi i32 [ %i.ayk, %bb.dk ], [ %.pre1868.i, %bb.au ] ; 2 uses
  %i.azg = phi i32 [ %i.ayl, %bb.dk ], [ %.pre1872.i, %bb.au ] ; 2 uses
  %i.azh = phi i32 [ %i.aym, %bb.dk ], [ %.pre1874.i, %bb.au ] ; 2 uses
  %i.azi = phi i32 [ %i.ayn, %bb.dk ], [ %.pre1876.i, %bb.au ] ; 2 uses
  %i.azj = phi i32 [ %i.ayo, %bb.dk ], [ %.pre1878.i, %bb.au ] ; 2 uses
  %i.azk = phi i32 [ %i.ayp, %bb.dk ], [ %.pre1880.i, %bb.au ] ; 2 uses
  %i.azl = phi i32 [ %i.ayq, %bb.dk ], [ %.pre1882.i, %bb.au ] ; 2 uses
  %i.azm = phi ptr [ %i.ayr, %bb.dk ], [ %.pre1884.i, %bb.au ] ; 2 uses
  %i.azn = phi ptr [ %i.ays, %bb.dk ], [ %.pre1886.i, %bb.au ] ; 2 uses
  %i.azo = phi ptr [ %i.ayt, %bb.dk ], [ %.pre1888.i, %bb.au ] ; 2 uses
  %.11156.i = phi i32 [ %.01155.i, %bb.dk ], [ %.pre1870.i, %bb.au ]
  %.41036.i = phi i32 [ %.31035.i, %bb.dk ], [ %.pre1852.i, %bb.au ] ; 2 uses
  %.51015.i = phi i32 [ %.41014.i, %bb.dk ], [ %.pre1850.i, %bb.au ] ; 2 uses
  %.6989.i = phi i32 [ %.5988.i, %bb.dk ], [ %.pre1848.i, %bb.au ] ; 2 uses
  %.1965.i = phi i32 [ %.0964.i, %bb.dk ], [ %.pre1846.i, %bb.au ] ; 2 uses
  %.10945.i = phi i32 [ %.9944.i, %bb.dk ], [ %.pre1844.i, %bb.au ] ; 2 uses
  %.14.i = phi i32 [ %.13.i, %bb.dk ], [ %.pre.i36, %bb.au ]
  store i32 33, ptr %i.g, align 8, !tbaa !19
  %.promoted1633.i = load i32, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20 ; 3 uses
  %i.azp = icmp sgt i32 %.promoted1633.i, 4
  br i1 %i.azp, label %.._crit_edge1636_crit_edge.i, label %.lr.ph1635.i

.._crit_edge1636_crit_edge.i:                     ; preds = %bb.dl
  %.pre1946.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1636.i

.lr.ph1635.i:                                     ; preds = %bb.dl
  %i.azq = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 8 ; 2 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azq, i64 12 ; 2 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azq, i64 16 ; 2 uses
  %.promoted1639.i = load i32, ptr %i.azr, align 8, !tbaa !76
  br label %bb.dm

._crit_edge1636.i:                                ; preds = %bb.dp, %.._crit_edge1636_crit_edge.i
  %i.azu = phi i32 [ %.pre1946.i, %.._crit_edge1636_crit_edge.i ], [ %i.bag, %bb.dp ]
  %.lcssa1421.i = phi i32 [ %.promoted1633.i, %.._crit_edge1636_crit_edge.i ], [ %i.bah, %bb.dp ]
  %i.azv = add nsw i32 %.lcssa1421.i, -5          ; 2 uses
  %i.azw = lshr i32 %i.azu, %i.azv
  %i.azx = and i32 %i.azw, 31
  store i32 %i.azv, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  br label %bb.dq

bb.dm:                                            ; preds = %bb.dp, %.lr.ph1635.i
  %i.azy = phi i32 [ %.promoted1639.i, %.lr.ph1635.i ], [ %i.baj, %bb.dp ] ; 2 uses
  %i.azz = phi i32 [ %.promoted1633.i, %.lr.ph1635.i ], [ %i.bah, %bb.dp ] ; 2 uses
  %i.baa = icmp eq i32 %i.azy, 0
  br i1 %i.baa, label %BZ2_decompress.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.bab = load i32, ptr %i.v, align 8, !tbaa !21
  %i.bac = shl i32 %i.bab, 8
  %i.bad = load ptr, ptr %i.azq, align 8, !tbaa !77 ; 2 uses
  %i.bae = load i8, ptr %i.bad, align 1, !tbaa !34
  %i.baf = zext i8 %i.bae to i32
  %i.bag = or disjoint i32 %i.bac, %i.baf         ; 2 uses
  store i32 %i.bag, ptr %i.v, align 8, !tbaa !21
  %i.bah = add nsw i32 %i.azz, 8                  ; 3 uses
  store i32 %i.bah, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bad, i64 1
  store ptr %i.bai, ptr %i.azq, align 8, !tbaa !77
  %i.baj = add i32 %i.azy, -1                     ; 2 uses
  store i32 %i.baj, ptr %i.azr, align 8, !tbaa !76
  %i.bak = load i32, ptr %i.azs, align 4, !tbaa !23
  %i.bal = add i32 %i.bak, 1                      ; 2 uses
  store i32 %i.bal, ptr %i.azs, align 4, !tbaa !23
  %i.bam = icmp eq i32 %i.bal, 0
  br i1 %i.bam, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ban = load i32, ptr %i.azt, align 8, !tbaa !24
  %i.bao = add i32 %i.ban, 1
  store i32 %i.bao, ptr %i.azt, align 8, !tbaa !24
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.bap = icmp sgt i32 %i.azz, -4
  br i1 %i.bap, label %._crit_edge1636.i, label %bb.dm

bb.dq:                                            ; preds = %bb.ec, %._crit_edge1636.i
  %i.baq = phi i32 [ %i.ayy, %._crit_edge1636.i ], [ %i.bca, %bb.ec ] ; 2 uses
  %i.bar = phi i32 [ %i.ayz, %._crit_edge1636.i ], [ %i.bcb, %bb.ec ] ; 2 uses
  %i.bas = phi i32 [ %i.aza, %._crit_edge1636.i ], [ %i.bcc, %bb.ec ] ; 2 uses
  %i.bat = phi i32 [ %i.azb, %._crit_edge1636.i ], [ %i.bcd, %bb.ec ] ; 2 uses
  %i.bau = phi i32 [ %i.azc, %._crit_edge1636.i ], [ %i.bce, %bb.ec ] ; 2 uses
  %i.bav = phi i32 [ %i.azd, %._crit_edge1636.i ], [ %i.bcf, %bb.ec ] ; 2 uses
  %i.baw = phi i32 [ %i.aze, %._crit_edge1636.i ], [ %i.bcg, %bb.ec ] ; 2 uses
  %i.bax = phi i32 [ %i.azf, %._crit_edge1636.i ], [ %i.bch, %bb.ec ] ; 2 uses
  %i.bay = phi i32 [ %i.azg, %._crit_edge1636.i ], [ %i.bci, %bb.ec ] ; 2 uses
  %i.baz = phi i32 [ %i.azh, %._crit_edge1636.i ], [ %i.bcj, %bb.ec ] ; 2 uses
  %i.bba = phi i32 [ %i.azi, %._crit_edge1636.i ], [ %i.bck, %bb.ec ] ; 2 uses
  %i.bbb = phi i32 [ %i.azj, %._crit_edge1636.i ], [ %i.bcl, %bb.ec ] ; 2 uses
  %i.bbc = phi i32 [ %i.azk, %._crit_edge1636.i ], [ %i.bcm, %bb.ec ] ; 2 uses
  %i.bbd = phi i32 [ %i.azl, %._crit_edge1636.i ], [ %i.bcn, %bb.ec ] ; 2 uses
  %i.bbe = phi ptr [ %i.azm, %._crit_edge1636.i ], [ %i.bco, %bb.ec ] ; 2 uses
  %i.bbf = phi ptr [ %i.azn, %._crit_edge1636.i ], [ %i.bcp, %bb.ec ] ; 2 uses
  %i.bbg = phi ptr [ %i.azo, %._crit_edge1636.i ], [ %i.bcq, %bb.ec ] ; 2 uses
  %.21157.i = phi i32 [ %i.azx, %._crit_edge1636.i ], [ %.41159.i, %bb.ec ] ; 2 uses
  %.51037.i = phi i32 [ %.41036.i, %._crit_edge1636.i ], [ %.71039.i, %bb.ec ] ; 2 uses
  %.61016.i = phi i32 [ %.51015.i, %._crit_edge1636.i ], [ %.81018.i, %bb.ec ] ; 2 uses
  %.7990.i = phi i32 [ %.6989.i, %._crit_edge1636.i ], [ %.9992.i, %bb.ec ] ; 3 uses
  %.2966.i = phi i32 [ %.1965.i, %._crit_edge1636.i ], [ %.4968.i, %bb.ec ] ; 2 uses
  %.11946.i = phi i32 [ %.10945.i, %._crit_edge1636.i ], [ %.13948.i, %bb.ec ] ; 2 uses
  %.15.i = phi i32 [ 0, %._crit_edge1636.i ], [ %i.bfr, %bb.ec ] ; 3 uses
  %i.bbh = icmp slt i32 %.15.i, %.7990.i
  br i1 %i.bbh, label %bb.dr, label %bb.ed

bb.dr:                                            ; preds = %._crit_edge1650.i, %bb.dq
  %i.bbi = phi i32 [ %i.baq, %bb.dq ], [ %i.bdt, %._crit_edge1650.i ] ; 2 uses
  %i.bbj = phi i32 [ %i.bar, %bb.dq ], [ %i.bdu, %._crit_edge1650.i ] ; 2 uses
  %i.bbk = phi i32 [ %i.bas, %bb.dq ], [ %i.bdv, %._crit_edge1650.i ] ; 2 uses
  %i.bbl = phi i32 [ %i.bat, %bb.dq ], [ %i.bdw, %._crit_edge1650.i ] ; 2 uses
  %i.bbm = phi i32 [ %i.bau, %bb.dq ], [ %i.bdx, %._crit_edge1650.i ] ; 2 uses
  %i.bbn = phi i32 [ %i.bav, %bb.dq ], [ %i.bdy, %._crit_edge1650.i ] ; 2 uses
  %i.bbo = phi i32 [ %i.baw, %bb.dq ], [ %i.bdz, %._crit_edge1650.i ] ; 2 uses
  %i.bbp = phi i32 [ %i.bax, %bb.dq ], [ %i.bea, %._crit_edge1650.i ] ; 2 uses
  %i.bbq = phi i32 [ %i.bay, %bb.dq ], [ %i.beb, %._crit_edge1650.i ] ; 2 uses
  %i.bbr = phi i32 [ %i.baz, %bb.dq ], [ %i.bec, %._crit_edge1650.i ] ; 2 uses
  %i.bbs = phi i32 [ %i.bba, %bb.dq ], [ %i.bed, %._crit_edge1650.i ] ; 2 uses
  %i.bbt = phi i32 [ %i.bbb, %bb.dq ], [ %i.bee, %._crit_edge1650.i ] ; 2 uses
  %i.bbu = phi i32 [ %i.bbc, %bb.dq ], [ %i.bef, %._crit_edge1650.i ] ; 2 uses
  %i.bbv = phi i32 [ %i.bbd, %bb.dq ], [ %i.beg, %._crit_edge1650.i ] ; 2 uses
  %i.bbw = phi ptr [ %i.bbe, %bb.dq ], [ %i.beh, %._crit_edge1650.i ] ; 2 uses
  %i.bbx = phi ptr [ %i.bbf, %bb.dq ], [ %i.bei, %._crit_edge1650.i ] ; 2 uses
  %i.bby = phi ptr [ %i.bbg, %bb.dq ], [ %i.bej, %._crit_edge1650.i ] ; 2 uses
  %.31158.i = phi i32 [ %.21157.i, %bb.dq ], [ %.61161.i, %._crit_edge1650.i ] ; 3 uses
  %.61038.i = phi i32 [ %.51037.i, %bb.dq ], [ %.81040.i, %._crit_edge1650.i ] ; 2 uses
  %.71017.i = phi i32 [ %.61016.i, %bb.dq ], [ %.91019.i, %._crit_edge1650.i ] ; 2 uses
  %.8991.i = phi i32 [ %.7990.i, %bb.dq ], [ %.10993.i, %._crit_edge1650.i ] ; 2 uses
  %.3967.i = phi i32 [ %.2966.i, %bb.dq ], [ %.5969.i, %._crit_edge1650.i ] ; 2 uses
  %.12947.i = phi i32 [ %.11946.i, %bb.dq ], [ %.14949.i, %._crit_edge1650.i ] ; 2 uses
  %.16.i = phi i32 [ %.15.i, %bb.dq ], [ %.18.i, %._crit_edge1650.i ] ; 2 uses
  %i.bbz = add i32 %.31158.i, -21
  %or.cond3.i = icmp ult i32 %i.bbz, -20
  br i1 %or.cond3.i, label %BZ2_decompress.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.au
  %i.bca = phi i32 [ %i.bbi, %bb.dr ], [ %.pre1854.i, %bb.au ] ; 3 uses
  %i.bcb = phi i32 [ %i.bbj, %bb.dr ], [ %.pre1856.i, %bb.au ] ; 3 uses
  %i.bcc = phi i32 [ %i.bbk, %bb.dr ], [ %.pre1858.i, %bb.au ] ; 3 uses
  %i.bcd = phi i32 [ %i.bbl, %bb.dr ], [ %.pre1860.i, %bb.au ] ; 3 uses
  %i.bce = phi i32 [ %i.bbm, %bb.dr ], [ %.pre1862.i, %bb.au ] ; 3 uses
  %i.bcf = phi i32 [ %i.bbn, %bb.dr ], [ %.pre1864.i, %bb.au ] ; 3 uses
  %i.bcg = phi i32 [ %i.bbo, %bb.dr ], [ %.pre1866.i, %bb.au ] ; 3 uses
  %i.bch = phi i32 [ %i.bbp, %bb.dr ], [ %.pre1868.i, %bb.au ] ; 3 uses
  %i.bci = phi i32 [ %i.bbq, %bb.dr ], [ %.pre1872.i, %bb.au ] ; 3 uses
  %i.bcj = phi i32 [ %i.bbr, %bb.dr ], [ %.pre1874.i, %bb.au ] ; 3 uses
  %i.bck = phi i32 [ %i.bbs, %bb.dr ], [ %.pre1876.i, %bb.au ] ; 3 uses
  %i.bcl = phi i32 [ %i.bbt, %bb.dr ], [ %.pre1878.i, %bb.au ] ; 3 uses
  %i.bcm = phi i32 [ %i.bbu, %bb.dr ], [ %.pre1880.i, %bb.au ] ; 3 uses
  %i.bcn = phi i32 [ %i.bbv, %bb.dr ], [ %.pre1882.i, %bb.au ] ; 3 uses
  %i.bco = phi ptr [ %i.bbw, %bb.dr ], [ %.pre1884.i, %bb.au ] ; 3 uses
  %i.bcp = phi ptr [ %i.bbx, %bb.dr ], [ %.pre1886.i, %bb.au ] ; 3 uses
  %i.bcq = phi ptr [ %i.bby, %bb.dr ], [ %.pre1888.i, %bb.au ] ; 3 uses
  %.41159.i = phi i32 [ %.31158.i, %bb.dr ], [ %.pre1870.i, %bb.au ] ; 4 uses
  %.71039.i = phi i32 [ %.61038.i, %bb.dr ], [ %.pre1852.i, %bb.au ] ; 3 uses
  %.81018.i = phi i32 [ %.71017.i, %bb.dr ], [ %.pre1850.i, %bb.au ] ; 3 uses
  %.9992.i = phi i32 [ %.8991.i, %bb.dr ], [ %.pre1848.i, %bb.au ] ; 3 uses
  %.4968.i = phi i32 [ %.3967.i, %bb.dr ], [ %.pre1846.i, %bb.au ] ; 4 uses
  %.13948.i = phi i32 [ %.12947.i, %bb.dr ], [ %.pre1844.i, %bb.au ] ; 3 uses
  %.17.i = phi i32 [ %.16.i, %bb.dr ], [ %.pre.i36, %bb.au ] ; 4 uses
  store i32 34, ptr %i.g, align 8, !tbaa !19
  %.promoted1640.i = load i32, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20 ; 3 uses
  %i.bcr = icmp sgt i32 %.promoted1640.i, 0
  br i1 %i.bcr, label %.._crit_edge1643_crit_edge.i, label %.lr.ph1642.i

.._crit_edge1643_crit_edge.i:                     ; preds = %bb.ds
  %.pre1948.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1643.i

.lr.ph1642.i:                                     ; preds = %bb.ds
  %i.bcs = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcs, i64 8 ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcs, i64 12 ; 2 uses
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcs, i64 16 ; 2 uses
  %.promoted1646.i = load i32, ptr %i.bct, align 8, !tbaa !76
  br label %bb.dt

._crit_edge1643.i:                                ; preds = %bb.dw, %.._crit_edge1643_crit_edge.i
  %i.bcw = phi i32 [ %.pre1948.i, %.._crit_edge1643_crit_edge.i ], [ %i.bdj, %bb.dw ]
  %.lcssa1417.i = phi i32 [ %.promoted1640.i, %.._crit_edge1643_crit_edge.i ], [ %i.bdk, %bb.dw ]
  %i.bcx = add nsw i32 %.lcssa1417.i, -1          ; 3 uses
  store i32 %i.bcx, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.bcy = shl nuw i32 1, %i.bcx
  %i.bcz = and i32 %i.bcy, %i.bcw
  %i.bda = icmp eq i32 %i.bcz, 0
  br i1 %i.bda, label %bb.ec, label %bb.dx

bb.dt:                                            ; preds = %bb.dw, %.lr.ph1642.i
  %i.bdb = phi i32 [ %.promoted1646.i, %.lr.ph1642.i ], [ %i.bdm, %bb.dw ] ; 2 uses
  %i.bdc = phi i32 [ %.promoted1640.i, %.lr.ph1642.i ], [ %i.bdk, %bb.dw ] ; 2 uses
  %i.bdd = icmp eq i32 %i.bdb, 0
  br i1 %i.bdd, label %BZ2_decompress.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bde = load i32, ptr %i.v, align 8, !tbaa !21
  %i.bdf = shl i32 %i.bde, 8
  %i.bdg = load ptr, ptr %i.bcs, align 8, !tbaa !77 ; 2 uses
  %i.bdh = load i8, ptr %i.bdg, align 1, !tbaa !34
  %i.bdi = zext i8 %i.bdh to i32
  %i.bdj = or disjoint i32 %i.bdf, %i.bdi         ; 2 uses
  store i32 %i.bdj, ptr %i.v, align 8, !tbaa !21
  %i.bdk = add nsw i32 %i.bdc, 8                  ; 3 uses
  store i32 %i.bdk, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdg, i64 1
  store ptr %i.bdl, ptr %i.bcs, align 8, !tbaa !77
  %i.bdm = add i32 %i.bdb, -1                     ; 2 uses
  store i32 %i.bdm, ptr %i.bct, align 8, !tbaa !76
  %i.bdn = load i32, ptr %i.bcu, align 4, !tbaa !23
  %i.bdo = add i32 %i.bdn, 1                      ; 2 uses
  store i32 %i.bdo, ptr %i.bcu, align 4, !tbaa !23
  %i.bdp = icmp eq i32 %i.bdo, 0
  br i1 %i.bdp, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.bdq = load i32, ptr %i.bcv, align 8, !tbaa !24
  %i.bdr = add i32 %i.bdq, 1
  store i32 %i.bdr, ptr %i.bcv, align 8, !tbaa !24
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.bds = icmp sgt i32 %i.bdc, -8
  br i1 %i.bds, label %._crit_edge1643.i, label %bb.dt

bb.dx:                                            ; preds = %._crit_edge1643.i, %._crit_edge1949.i
  %i.bdt = phi i32 [ %i.bca, %._crit_edge1643.i ], [ %.pre1854.i, %._crit_edge1949.i ] ; 2 uses
  %i.bdu = phi i32 [ %i.bcb, %._crit_edge1643.i ], [ %.pre1856.i, %._crit_edge1949.i ] ; 2 uses
  %i.bdv = phi i32 [ %i.bcc, %._crit_edge1643.i ], [ %.pre1858.i, %._crit_edge1949.i ] ; 2 uses
  %i.bdw = phi i32 [ %i.bcd, %._crit_edge1643.i ], [ %.pre1860.i, %._crit_edge1949.i ] ; 2 uses
  %i.bdx = phi i32 [ %i.bce, %._crit_edge1643.i ], [ %.pre1862.i, %._crit_edge1949.i ] ; 2 uses
  %i.bdy = phi i32 [ %i.bcf, %._crit_edge1643.i ], [ %.pre1864.i, %._crit_edge1949.i ] ; 2 uses
  %i.bdz = phi i32 [ %i.bcg, %._crit_edge1643.i ], [ %.pre1866.i, %._crit_edge1949.i ] ; 2 uses
  %i.bea = phi i32 [ %i.bch, %._crit_edge1643.i ], [ %.pre1868.i, %._crit_edge1949.i ] ; 2 uses
  %i.beb = phi i32 [ %i.bci, %._crit_edge1643.i ], [ %.pre1872.i, %._crit_edge1949.i ] ; 2 uses
  %i.bec = phi i32 [ %i.bcj, %._crit_edge1643.i ], [ %.pre1874.i, %._crit_edge1949.i ] ; 2 uses
  %i.bed = phi i32 [ %i.bck, %._crit_edge1643.i ], [ %.pre1876.i, %._crit_edge1949.i ] ; 2 uses
  %i.bee = phi i32 [ %i.bcl, %._crit_edge1643.i ], [ %.pre1878.i, %._crit_edge1949.i ] ; 2 uses
  %i.bef = phi i32 [ %i.bcm, %._crit_edge1643.i ], [ %.pre1880.i, %._crit_edge1949.i ] ; 2 uses
  %i.beg = phi i32 [ %i.bcn, %._crit_edge1643.i ], [ %.pre1882.i, %._crit_edge1949.i ] ; 2 uses
  %i.beh = phi ptr [ %i.bco, %._crit_edge1643.i ], [ %.pre1884.i, %._crit_edge1949.i ] ; 2 uses
  %i.bei = phi ptr [ %i.bcp, %._crit_edge1643.i ], [ %.pre1886.i, %._crit_edge1949.i ] ; 2 uses
  %i.bej = phi ptr [ %i.bcq, %._crit_edge1643.i ], [ %.pre1888.i, %._crit_edge1949.i ] ; 2 uses
  %.promoted1647.i = phi i32 [ %i.bcx, %._crit_edge1643.i ], [ %.promoted1647.pre.i, %._crit_edge1949.i ] ; 3 uses
  %.51160.i = phi i32 [ %.41159.i, %._crit_edge1643.i ], [ %.pre1870.i, %._crit_edge1949.i ] ; 2 uses
  %.81040.i = phi i32 [ %.71039.i, %._crit_edge1643.i ], [ %.pre1852.i, %._crit_edge1949.i ] ; 2 uses
  %.91019.i = phi i32 [ %.81018.i, %._crit_edge1643.i ], [ %.pre1850.i, %._crit_edge1949.i ] ; 2 uses
  %.10993.i = phi i32 [ %.9992.i, %._crit_edge1643.i ], [ %.pre1848.i, %._crit_edge1949.i ] ; 2 uses
  %.5969.i = phi i32 [ %.4968.i, %._crit_edge1643.i ], [ %.pre1846.i, %._crit_edge1949.i ] ; 2 uses
  %.14949.i = phi i32 [ %.13948.i, %._crit_edge1643.i ], [ %.pre1844.i, %._crit_edge1949.i ] ; 2 uses
  %.18.i = phi i32 [ %.17.i, %._crit_edge1643.i ], [ %.pre.i36, %._crit_edge1949.i ] ; 2 uses
  store i32 35, ptr %i.g, align 8, !tbaa !19
  %i.bek = icmp sgt i32 %.promoted1647.i, 0
  br i1 %i.bek, label %.._crit_edge1650_crit_edge.i, label %.lr.ph1649.i

.._crit_edge1650_crit_edge.i:                     ; preds = %bb.dx
  %.pre1953.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1650.i

.lr.ph1649.i:                                     ; preds = %bb.dx
  %i.bel = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bel, i64 8 ; 2 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bel, i64 12 ; 2 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bel, i64 16 ; 2 uses
  %.promoted1653.i = load i32, ptr %i.bem, align 8, !tbaa !76
  br label %bb.dy

._crit_edge1650.i:                                ; preds = %bb.eb, %.._crit_edge1650_crit_edge.i
  %i.bep = phi i32 [ %.pre1953.i, %.._crit_edge1650_crit_edge.i ], [ %i.bfc, %bb.eb ]
  %.lcssa1413.i = phi i32 [ %.promoted1647.i, %.._crit_edge1650_crit_edge.i ], [ %i.bfd, %bb.eb ]
  %i.beq = add nsw i32 %.lcssa1413.i, -1          ; 2 uses
  store i32 %i.beq, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.ber = shl nuw i32 1, %i.beq
  %i.bes = and i32 %i.ber, %i.bep
  %i.bet = icmp eq i32 %i.bes, 0
  %.61161.v.i = select i1 %i.bet, i32 1, i32 -1
  %.61161.i = add nsw i32 %.61161.v.i, %.51160.i
  br label %bb.dr

bb.dy:                                            ; preds = %bb.eb, %.lr.ph1649.i
  %i.beu = phi i32 [ %.promoted1653.i, %.lr.ph1649.i ], [ %i.bff, %bb.eb ] ; 2 uses
  %i.bev = phi i32 [ %.promoted1647.i, %.lr.ph1649.i ], [ %i.bfd, %bb.eb ] ; 2 uses
  %i.bew = icmp eq i32 %i.beu, 0
  br i1 %i.bew, label %BZ2_decompress.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.bex = load i32, ptr %i.v, align 8, !tbaa !21
  %i.bey = shl i32 %i.bex, 8
  %i.bez = load ptr, ptr %i.bel, align 8, !tbaa !77 ; 2 uses
  %i.bfa = load i8, ptr %i.bez, align 1, !tbaa !34
  %i.bfb = zext i8 %i.bfa to i32
  %i.bfc = or disjoint i32 %i.bey, %i.bfb         ; 2 uses
  store i32 %i.bfc, ptr %i.v, align 8, !tbaa !21
  %i.bfd = add nsw i32 %i.bev, 8                  ; 3 uses
  store i32 %i.bfd, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bez, i64 1
  store ptr %i.bfe, ptr %i.bel, align 8, !tbaa !77
  %i.bff = add i32 %i.beu, -1                     ; 2 uses
  store i32 %i.bff, ptr %i.bem, align 8, !tbaa !76
  %i.bfg = load i32, ptr %i.ben, align 4, !tbaa !23
  %i.bfh = add i32 %i.bfg, 1                      ; 2 uses
  store i32 %i.bfh, ptr %i.ben, align 4, !tbaa !23
  %i.bfi = icmp eq i32 %i.bfh, 0
  br i1 %i.bfi, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.bfj = load i32, ptr %i.beo, align 8, !tbaa !24
  %i.bfk = add i32 %i.bfj, 1
  store i32 %i.bfk, ptr %i.beo, align 8, !tbaa !24
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.bfl = icmp sgt i32 %i.bev, -8
  br i1 %i.bfl, label %._crit_edge1650.i, label %bb.dy

bb.ec:                                            ; preds = %._crit_edge1643.i
  %i.bfm = trunc i32 %.41159.i to i8
  %i.bfn = sext i32 %.4968.i to i64
  %i.bfo = getelementptr inbounds [258 x i8], ptr %i.ac, i64 %i.bfn
  %i.bfp = sext i32 %.17.i to i64
  %i.bfq = getelementptr inbounds i8, ptr %i.bfo, i64 %i.bfp
  store i8 %i.bfm, ptr %i.bfq, align 1, !tbaa !34
  %i.bfr = add nsw i32 %.17.i, 1
  br label %bb.dq, !llvm.loop !92

bb.ed:                                            ; preds = %bb.dq
  %i.bfs = add nsw i32 %.2966.i, 1
  br label %bb.dk, !llvm.loop !93

.preheader1391.i:                                 ; preds = %CreateDecodeTables.exit.i, %.preheader1391.lr.ph.i
  %indvars.iv1747.i = phi i64 [ 0, %.preheader1391.lr.ph.i ], [ %indvars.iv.next1748.i, %CreateDecodeTables.exit.i ] ; 8 uses
  br i1 %1, label %.lr.ph1534.i, label %.preheader68.i.thread.i

.preheader68.i.thread.i:                          ; preds = %.preheader1391.i
  %i.bft = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %indvars.iv1747.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.bft, i8 0, i64 92, i1 false), !tbaa !4
  br label %.preheader66.i.i

.lr.ph1534.i:                                     ; preds = %.preheader1391.i
  %i.bfu = getelementptr inbounds nuw [258 x i8], ptr %i.ac, i64 %indvars.iv1747.i ; 10 uses
  br i1 %min.iters.check525, label %scalar.ph524.preheader, label %vector.body529

vector.body529:                                   ; preds = %.lr.ph1534.i, %vector.body529
  %index530 = phi i64 [ %index.next536, %vector.body529 ], [ 0, %.lr.ph1534.i ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bgb, %vector.body529 ], [ splat (i32 32), %.lr.ph1534.i ]
  %vec.phi531 = phi <4 x i32> [ %i.bgc, %vector.body529 ], [ splat (i32 32), %.lr.ph1534.i ]
  %vec.phi532 = phi <4 x i32> [ %i.bfz, %vector.body529 ], [ zeroinitializer, %.lr.ph1534.i ]
  %vec.phi533 = phi <4 x i32> [ %i.bga, %vector.body529 ], [ zeroinitializer, %.lr.ph1534.i ]
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %index530 ; 2 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 4
  %wide.load534 = load <4 x i8>, ptr %i.bfv, align 1, !tbaa !34
  %wide.load535 = load <4 x i8>, ptr %i.bfw, align 1, !tbaa !34
  %i.bfx = zext <4 x i8> %wide.load534 to <4 x i32> ; 2 uses
  %i.bfy = zext <4 x i8> %wide.load535 to <4 x i32> ; 2 uses
  %i.bfz = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi532, <4 x i32> %i.bfx) ; 2 uses
  %i.bga = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi533, <4 x i32> %i.bfy) ; 2 uses
  %i.bgb = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.bfx) ; 2 uses
  %i.bgc = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi531, <4 x i32> %i.bfy) ; 2 uses
  %index.next536 = add nuw i64 %index530, 8       ; 2 uses
  %i.bgd = icmp eq i64 %index.next536, %n.vec528
  br i1 %i.bgd, label %middle.block537, label %vector.body529, !llvm.loop !94

middle.block537:                                  ; preds = %vector.body529
  %rdx.minmax = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bgb, <4 x i32> %i.bgc)
  %i.bge = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax538 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.bfz, <4 x i32> %i.bga)
  %i.bgf = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax538) ; 2 uses
  br i1 %cmp.n539, label %.preheader69.us.i.preheader.i, label %scalar.ph524.preheader

scalar.ph524.preheader:                           ; preds = %.lr.ph1534.i, %middle.block537
  %indvars.iv1741.i.ph = phi i64 [ 0, %.lr.ph1534.i ], [ %n.vec528, %middle.block537 ]
  %.09221533.i.ph = phi i32 [ 32, %.lr.ph1534.i ], [ %i.bge, %middle.block537 ]
  %.09251532.i.ph = phi i32 [ 0, %.lr.ph1534.i ], [ %i.bgf, %middle.block537 ]
  br label %scalar.ph524

scalar.ph524:                                     ; preds = %scalar.ph524.preheader, %scalar.ph524
  %indvars.iv1741.i = phi i64 [ %indvars.iv.next1742.i, %scalar.ph524 ], [ %indvars.iv1741.i.ph, %scalar.ph524.preheader ] ; 2 uses
  %.09221533.i = phi i32 [ %.1.i, %scalar.ph524 ], [ %.09221533.i.ph, %scalar.ph524.preheader ]
  %.09251532.i = phi i32 [ %spec.select.i, %scalar.ph524 ], [ %.09251532.i.ph, %scalar.ph524.preheader ]
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %indvars.iv1741.i
  %i.bgh = load i8, ptr %i.bgg, align 1, !tbaa !34
  %i.bgi = zext i8 %i.bgh to i32                  ; 2 uses
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %.09251532.i, i32 %i.bgi) ; 2 uses
  %.1.i = tail call i32 @llvm.umin.i32(i32 %.09221533.i, i32 %i.bgi) ; 2 uses
  %indvars.iv.next1742.i = add nuw nsw i64 %indvars.iv1741.i, 1 ; 2 uses
  %exitcond1746.not.i = icmp eq i64 %indvars.iv.next1742.i, %wide.trip.count.i.i
  br i1 %exitcond1746.not.i, label %.preheader69.us.i.preheader.i, label %scalar.ph524, !llvm.loop !95

.preheader69.us.i.preheader.i:                    ; preds = %scalar.ph524, %middle.block537
  %spec.select.i.lcssa = phi i32 [ %i.bgf, %middle.block537 ], [ %spec.select.i, %scalar.ph524 ] ; 2 uses
  %.1.i.lcssa = phi i32 [ %i.bge, %middle.block537 ], [ %.1.i, %scalar.ph524 ] ; 2 uses
  %i.bgj = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %indvars.iv1747.i ; 3 uses
  br label %.preheader69.us.i.i

.preheader69.us.i.i:                              ; preds = %._crit_edge.us.i.i, %.preheader69.us.i.preheader.i
  %.05774.us.i.i = phi i32 [ %i.bhi, %._crit_edge.us.i.i ], [ %.1.i.lcssa, %.preheader69.us.i.preheader.i ] ; 5 uses
  %.05873.us.i.i = phi i32 [ %.260.us.i.i.lcssa, %._crit_edge.us.i.i ], [ 0, %.preheader69.us.i.preheader.i ] ; 2 uses
  br i1 %i.ayw, label %.epil.preheader, label %.preheader69.us.i.i.new

.preheader68.i.i:                                 ; preds = %._crit_edge.us.i.i
  %2 = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %indvars.iv1747.i ; 28 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %2, i8 0, i64 92, i1 false), !tbaa !4
  br i1 %i.ayx, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.preheader69.us.i.i.new:                          ; preds = %.preheader69.us.i.i, %bb.eh
  %indvars.iv.i1359.i = phi i64 [ %indvars.iv.next.i1360.i.1, %bb.eh ], [ 0, %.preheader69.us.i.i ] ; 4 uses
  %.15970.us.i.i = phi i32 [ %.260.us.i.i.1, %bb.eh ], [ %.05873.us.i.i, %.preheader69.us.i.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.eh ], [ 0, %.preheader69.us.i.i ]
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %indvars.iv.i1359.i
  %i.bgl = load i8, ptr %i.bgk, align 1, !tbaa !34
  %i.bgm = zext i8 %i.bgl to i32
  %i.bgn = icmp eq i32 %.05774.us.i.i, %i.bgm
  br i1 %i.bgn, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %.preheader69.us.i.i.new
  %i.bgo = sext i32 %.15970.us.i.i to i64
  %i.bgp = getelementptr inbounds [4 x i8], ptr %i.bgj, i64 %i.bgo
  %i.bgq = trunc nuw nsw i64 %indvars.iv.i1359.i to i32
  store i32 %i.bgq, ptr %i.bgp, align 4, !tbaa !4
  %i.bgr = add nsw i32 %.15970.us.i.i, 1
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %.preheader69.us.i.i.new
  %.260.us.i.i = phi i32 [ %i.bgr, %bb.ee ], [ %.15970.us.i.i, %.preheader69.us.i.i.new ] ; 3 uses
  %indvars.iv.next.i1360.i = or disjoint i64 %indvars.iv.i1359.i, 1 ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %indvars.iv.next.i1360.i
  %i.bgt = load i8, ptr %i.bgs, align 1, !tbaa !34
  %i.bgu = zext i8 %i.bgt to i32
  %i.bgv = icmp eq i32 %.05774.us.i.i, %i.bgu
  br i1 %i.bgv, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.bgw = sext i32 %.260.us.i.i to i64
  %i.bgx = getelementptr inbounds [4 x i8], ptr %i.bgj, i64 %i.bgw
  %i.bgy = trunc nuw nsw i64 %indvars.iv.next.i1360.i to i32
  store i32 %i.bgy, ptr %i.bgx, align 4, !tbaa !4
  %i.bgz = add nsw i32 %.260.us.i.i, 1
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.260.us.i.i.1 = phi i32 [ %i.bgz, %bb.eg ], [ %.260.us.i.i, %bb.ef ] ; 3 uses
  %indvars.iv.next.i1360.i.1 = add nuw nsw i64 %indvars.iv.i1359.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader69.us.i.i.new, !llvm.loop !96

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %bb.eh
  br i1 %lcmp.mod752.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader69.us.i.i
  %indvars.iv.i1359.i.epil.init = phi i64 [ 0, %.preheader69.us.i.i ], [ %indvars.iv.next.i1360.i.1, %._crit_edge.us.i.i.unr-lcssa ] ; 2 uses
  %.15970.us.i.i.epil.init = phi i32 [ %.05873.us.i.i, %.preheader69.us.i.i ], [ %.260.us.i.i.1, %._crit_edge.us.i.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod754)
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %indvars.iv.i1359.i.epil.init
  %i.bhb = load i8, ptr %i.bha, align 1, !tbaa !34
  %i.bhc = zext i8 %i.bhb to i32
  %i.bhd = icmp eq i32 %.05774.us.i.i, %i.bhc
  br i1 %i.bhd, label %bb.ei, label %._crit_edge.us.i.i

bb.ei:                                            ; preds = %.epil.preheader
  %i.bhe = sext i32 %.15970.us.i.i.epil.init to i64
  %i.bhf = getelementptr inbounds [4 x i8], ptr %i.bgj, i64 %i.bhe
  %i.bhg = trunc nuw nsw i64 %indvars.iv.i1359.i.epil.init to i32
  store i32 %i.bhg, ptr %i.bhf, align 4, !tbaa !4
  %i.bhh = add nsw i32 %.15970.us.i.i.epil.init, 1
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %.epil.preheader, %bb.ei, %._crit_edge.us.i.i.unr-lcssa
  %.260.us.i.i.lcssa = phi i32 [ %.260.us.i.i.1, %._crit_edge.us.i.i.unr-lcssa ], [ %i.bhh, %bb.ei ], [ %.15970.us.i.i.epil.init, %.epil.preheader ]
  %i.bhi = add nuw nsw i32 %.05774.us.i.i, 1
  %exitcond88.not.i.i = icmp eq i32 %.05774.us.i.i, %spec.select.i.lcssa
  br i1 %exitcond88.not.i.i, label %.preheader68.i.i, label %.preheader69.us.i.i, !llvm.loop !97

.preheader66.loopexit.i.i.unr-lcssa:              ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod756.not, label %.preheader66.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader66.loopexit.i.i.unr-lcssa, %.preheader68.i.i
  %indvars.iv92.i.i.epil.init = phi i64 [ 0, %.preheader68.i.i ], [ %indvars.iv.next93.i.i.3, %.preheader66.loopexit.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod757)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv92.i.i.epil = phi i64 [ %indvars.iv.next93.i.i.epil, %.lr.ph.i.i.epil ], [ %indvars.iv92.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %indvars.iv92.i.i.epil
  %i.bhk = load i8, ptr %i.bhj, align 1, !tbaa !34
  %i.bhl = zext i8 %i.bhk to i64
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bhl
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhm, i64 4 ; 2 uses
  %i.bho = load i32, ptr %i.bhn, align 4, !tbaa !4
  %i.bhp = add nsw i32 %i.bho, 1
  store i32 %i.bhp, ptr %i.bhn, align 4, !tbaa !4
  %indvars.iv.next93.i.i.epil = add nuw nsw i64 %indvars.iv92.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter755
  br i1 %epil.iter.cmp.not, label %.preheader66.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !98

.preheader66.loopexit.i.i:                        ; preds = %.lr.ph.i.i.epil, %.preheader66.loopexit.i.i.unr-lcssa
  %.phi.trans.insert.i.i = getelementptr i8, ptr %2, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !4
  %.phi.trans.insert114.i.i = getelementptr i8, ptr %2, i64 8
  %.pre115.i.i = load i32, ptr %.phi.trans.insert114.i.i, align 4, !tbaa !4
  %.phi.trans.insert116.i.i = getelementptr i8, ptr %2, i64 12
  %.pre117.i.i = load i32, ptr %.phi.trans.insert116.i.i, align 4, !tbaa !4
  %.phi.trans.insert118.i.i = getelementptr i8, ptr %2, i64 16
  %.pre119.i.i = load i32, ptr %.phi.trans.insert118.i.i, align 4, !tbaa !4
  %.phi.trans.insert120.i.i = getelementptr i8, ptr %2, i64 20
  %.pre121.i.i = load i32, ptr %.phi.trans.insert120.i.i, align 4, !tbaa !4
  %.phi.trans.insert122.i.i = getelementptr i8, ptr %2, i64 24
  %.pre123.i.i = load i32, ptr %.phi.trans.insert122.i.i, align 4, !tbaa !4
  %.phi.trans.insert124.i.i = getelementptr i8, ptr %2, i64 28
  %.pre125.i.i = load i32, ptr %.phi.trans.insert124.i.i, align 4, !tbaa !4
  %.phi.trans.insert126.i.i = getelementptr i8, ptr %2, i64 32
  %.pre127.i.i = load i32, ptr %.phi.trans.insert126.i.i, align 4, !tbaa !4
  %.phi.trans.insert128.i.i = getelementptr i8, ptr %2, i64 36
  %.pre129.i.i = load i32, ptr %.phi.trans.insert128.i.i, align 4, !tbaa !4
  %.phi.trans.insert130.i.i = getelementptr i8, ptr %2, i64 40
  %.pre131.i.i = load i32, ptr %.phi.trans.insert130.i.i, align 4, !tbaa !4
  %.phi.trans.insert132.i.i = getelementptr i8, ptr %2, i64 44
  %.pre133.i.i = load i32, ptr %.phi.trans.insert132.i.i, align 4, !tbaa !4
  %.phi.trans.insert134.i.i = getelementptr i8, ptr %2, i64 48
  %.pre135.i.i = load i32, ptr %.phi.trans.insert134.i.i, align 4, !tbaa !4
  %.phi.trans.insert136.i.i = getelementptr i8, ptr %2, i64 52
  %.pre137.i.i = load i32, ptr %.phi.trans.insert136.i.i, align 4, !tbaa !4
  %.phi.trans.insert138.i.i = getelementptr i8, ptr %2, i64 56
  %.pre139.i.i = load i32, ptr %.phi.trans.insert138.i.i, align 4, !tbaa !4
  %.phi.trans.insert140.i.i = getelementptr i8, ptr %2, i64 60
  %.pre141.i.i = load i32, ptr %.phi.trans.insert140.i.i, align 4, !tbaa !4
  %.phi.trans.insert142.i.i = getelementptr i8, ptr %2, i64 64
  %.pre143.i.i = load i32, ptr %.phi.trans.insert142.i.i, align 4, !tbaa !4
  %.phi.trans.insert144.i.i = getelementptr i8, ptr %2, i64 68
  %.pre145.i.i = load i32, ptr %.phi.trans.insert144.i.i, align 4, !tbaa !4
  %.phi.trans.insert146.i.i = getelementptr i8, ptr %2, i64 72
  %.pre147.i.i = load i32, ptr %.phi.trans.insert146.i.i, align 4, !tbaa !4
  %.phi.trans.insert148.i.i = getelementptr i8, ptr %2, i64 76
  %.pre149.i.i = load i32, ptr %.phi.trans.insert148.i.i, align 4, !tbaa !4
  %.phi.trans.insert150.i.i = getelementptr i8, ptr %2, i64 80
  %.pre151.i.i = load i32, ptr %.phi.trans.insert150.i.i, align 4, !tbaa !4
  %.phi.trans.insert1913.i = getelementptr i8, ptr %2, i64 84
  %.pre1914.i = load i32, ptr %.phi.trans.insert1913.i, align 4, !tbaa !4
  %.phi.trans.insert1915.i = getelementptr i8, ptr %2, i64 88
  %.pre1916.i = load i32, ptr %.phi.trans.insert1915.i, align 4, !tbaa !4
  br label %.preheader66.i.i

.preheader66.i.i:                                 ; preds = %.preheader66.loopexit.i.i, %.preheader68.i.thread.i
  %.0925.lcssa20082018.i = phi i32 [ %spec.select.i.lcssa, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ] ; 5 uses
  %.0922.lcssa20102017.i = phi i32 [ %.1.i.lcssa, %.preheader66.loopexit.i.i ], [ 32, %.preheader68.i.thread.i ] ; 7 uses
  %i.bhq = phi i32 [ %.pre1916.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhr = phi i32 [ %.pre1914.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhs = phi i32 [ %.pre151.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bht = phi i32 [ %.pre149.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhu = phi i32 [ %.pre147.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhv = phi i32 [ %.pre145.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhw = phi i32 [ %.pre143.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhx = phi i32 [ %.pre141.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhy = phi i32 [ %.pre139.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bhz = phi i32 [ %.pre137.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bia = phi i32 [ %.pre135.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bib = phi i32 [ %.pre133.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bic = phi i32 [ %.pre131.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bid = phi i32 [ %.pre129.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bie = phi i32 [ %.pre127.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bif = phi i32 [ %.pre125.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.big = phi i32 [ %.pre123.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bih = phi i32 [ %.pre121.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bii = phi i32 [ %.pre119.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bij = phi i32 [ %.pre117.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bik = phi i32 [ %.pre115.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ]
  %i.bil = phi i32 [ %.pre.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread.i ] ; 2 uses
  %i.bim = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %indvars.iv1747.i ; 28 uses
  %i.bin = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %indvars.iv1747.i ; 6 uses
  %i.bio = getelementptr i8, ptr %i.bim, i64 4
  store i32 %i.bil, ptr %i.bio, align 4, !tbaa !4
  %i.bip = getelementptr i8, ptr %i.bim, i64 8
  %i.biq = add nsw i32 %i.bil, %i.bik             ; 2 uses
  store i32 %i.biq, ptr %i.bip, align 4, !tbaa !4
  %i.bir = getelementptr i8, ptr %i.bim, i64 12
  %i.bis = add nsw i32 %i.biq, %i.bij             ; 2 uses
  store i32 %i.bis, ptr %i.bir, align 4, !tbaa !4
  %i.bit = getelementptr i8, ptr %i.bim, i64 16
  %i.biu = add nsw i32 %i.bis, %i.bii             ; 2 uses
  store i32 %i.biu, ptr %i.bit, align 4, !tbaa !4
  %i.biv = getelementptr i8, ptr %i.bim, i64 20
  %i.biw = add nsw i32 %i.biu, %i.bih             ; 2 uses
  store i32 %i.biw, ptr %i.biv, align 4, !tbaa !4
  %i.bix = getelementptr i8, ptr %i.bim, i64 24
  %i.biy = add nsw i32 %i.biw, %i.big             ; 2 uses
  store i32 %i.biy, ptr %i.bix, align 4, !tbaa !4
  %i.biz = getelementptr i8, ptr %i.bim, i64 28
  %i.bja = add nsw i32 %i.biy, %i.bif             ; 2 uses
  store i32 %i.bja, ptr %i.biz, align 4, !tbaa !4
  %i.bjb = getelementptr i8, ptr %i.bim, i64 32
  %i.bjc = add nsw i32 %i.bja, %i.bie             ; 2 uses
  store i32 %i.bjc, ptr %i.bjb, align 4, !tbaa !4
  %i.bjd = getelementptr i8, ptr %i.bim, i64 36
  %i.bje = add nsw i32 %i.bjc, %i.bid             ; 2 uses
  store i32 %i.bje, ptr %i.bjd, align 4, !tbaa !4
  %i.bjf = getelementptr i8, ptr %i.bim, i64 40
  %i.bjg = add nsw i32 %i.bje, %i.bic             ; 2 uses
  store i32 %i.bjg, ptr %i.bjf, align 4, !tbaa !4
  %i.bjh = getelementptr i8, ptr %i.bim, i64 44
  %i.bji = add nsw i32 %i.bjg, %i.bib             ; 2 uses
  store i32 %i.bji, ptr %i.bjh, align 4, !tbaa !4
  %i.bjj = getelementptr i8, ptr %i.bim, i64 48
  %i.bjk = add nsw i32 %i.bji, %i.bia             ; 2 uses
  store i32 %i.bjk, ptr %i.bjj, align 4, !tbaa !4
  %i.bjl = getelementptr i8, ptr %i.bim, i64 52
  %i.bjm = add nsw i32 %i.bjk, %i.bhz             ; 2 uses
  store i32 %i.bjm, ptr %i.bjl, align 4, !tbaa !4
  %i.bjn = getelementptr i8, ptr %i.bim, i64 56
  %i.bjo = add nsw i32 %i.bjm, %i.bhy             ; 2 uses
  store i32 %i.bjo, ptr %i.bjn, align 4, !tbaa !4
  %i.bjp = getelementptr i8, ptr %i.bim, i64 60
  %i.bjq = add nsw i32 %i.bjo, %i.bhx             ; 2 uses
  store i32 %i.bjq, ptr %i.bjp, align 4, !tbaa !4
  %i.bjr = getelementptr i8, ptr %i.bim, i64 64
  %i.bjs = add nsw i32 %i.bjq, %i.bhw             ; 2 uses
  store i32 %i.bjs, ptr %i.bjr, align 4, !tbaa !4
  %i.bjt = getelementptr i8, ptr %i.bim, i64 68
  %i.bju = add nsw i32 %i.bjs, %i.bhv             ; 2 uses
  store i32 %i.bju, ptr %i.bjt, align 4, !tbaa !4
  %i.bjv = getelementptr i8, ptr %i.bim, i64 72
  %i.bjw = add nsw i32 %i.bju, %i.bhu             ; 2 uses
  store i32 %i.bjw, ptr %i.bjv, align 4, !tbaa !4
  %i.bjx = getelementptr i8, ptr %i.bim, i64 76
  %i.bjy = add nsw i32 %i.bjw, %i.bht             ; 2 uses
  store i32 %i.bjy, ptr %i.bjx, align 4, !tbaa !4
  %i.bjz = getelementptr i8, ptr %i.bim, i64 80
  %i.bka = add nsw i32 %i.bjy, %i.bhs             ; 2 uses
  store i32 %i.bka, ptr %i.bjz, align 4, !tbaa !4
  %i.bkb = getelementptr i8, ptr %i.bim, i64 84
  %i.bkc = add nsw i32 %i.bka, %i.bhr             ; 2 uses
  store i32 %i.bkc, ptr %i.bkb, align 4, !tbaa !4
  %i.bkd = getelementptr i8, ptr %i.bim, i64 88
  %i.bke = add nsw i32 %i.bkc, %i.bhq
  store i32 %i.bke, ptr %i.bkd, align 4, !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.bin, i8 0, i64 92, i1 false), !tbaa !4
  %.not6279.i.i = icmp samesign ugt i32 %.0922.lcssa20102017.i, %.0925.lcssa20082018.i
  br i1 %.not6279.i.i, label %.preheader.i.i, label %.lr.ph82.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.preheader68.i.i, %.lr.ph.i.i
  %indvars.iv92.i.i = phi i64 [ %indvars.iv.next93.i.i.3, %.lr.ph.i.i ], [ 0, %.preheader68.i.i ] ; 5 uses
  %niter759 = phi i64 [ %niter759.next.3, %.lr.ph.i.i ], [ 0, %.preheader68.i.i ]
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %indvars.iv92.i.i
  %i.bkg = load i8, ptr %i.bkf, align 1, !tbaa !34
  %i.bkh = zext i8 %i.bkg to i64
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bkh
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bki, i64 4 ; 2 uses
  %i.bkk = load i32, ptr %i.bkj, align 4, !tbaa !4
  %i.bkl = add nsw i32 %i.bkk, 1
  store i32 %i.bkl, ptr %i.bkj, align 4, !tbaa !4
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %indvars.iv92.i.i
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkm, i64 1
  %i.bko = load i8, ptr %i.bkn, align 1, !tbaa !34
  %i.bkp = zext i8 %i.bko to i64
  %i.bkq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bkp
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkq, i64 4 ; 2 uses
  %i.bks = load i32, ptr %i.bkr, align 4, !tbaa !4
  %i.bkt = add nsw i32 %i.bks, 1
  store i32 %i.bkt, ptr %i.bkr, align 4, !tbaa !4
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %indvars.iv92.i.i
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 2
  %i.bkw = load i8, ptr %i.bkv, align 1, !tbaa !34
  %i.bkx = zext i8 %i.bkw to i64
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bkx
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bky, i64 4 ; 2 uses
  %i.bla = load i32, ptr %i.bkz, align 4, !tbaa !4
  %i.blb = add nsw i32 %i.bla, 1
  store i32 %i.blb, ptr %i.bkz, align 4, !tbaa !4
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %indvars.iv92.i.i
  %i.bld = getelementptr inbounds nuw i8, ptr %i.blc, i64 3
  %i.ble = load i8, ptr %i.bld, align 1, !tbaa !34
  %i.blf = zext i8 %i.ble to i64
  %i.blg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.blf
  %i.blh = getelementptr inbounds nuw i8, ptr %i.blg, i64 4 ; 2 uses
  %i.bli = load i32, ptr %i.blh, align 4, !tbaa !4
  %i.blj = add nsw i32 %i.bli, 1
  store i32 %i.blj, ptr %i.blh, align 4, !tbaa !4
  %indvars.iv.next93.i.i.3 = add nuw nsw i64 %indvars.iv92.i.i, 4 ; 2 uses
  %niter759.next.3 = add i64 %niter759, 4         ; 2 uses
  %niter759.ncmp.3 = icmp eq i64 %niter759.next.3, %unroll_iter758
  br i1 %niter759.ncmp.3, label %.preheader66.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !100

.lr.ph82.preheader.i.i:                           ; preds = %.preheader66.i.i
  %i.blk = zext nneg i32 %.0922.lcssa20102017.i to i64 ; 3 uses
  %i.bll = add nuw nsw i32 %.0925.lcssa20082018.i, 1
  %.phi.trans.insert1917.i = getelementptr inbounds nuw [4 x i8], ptr %i.bim, i64 %i.blk
  %.pre1918.i = load i32, ptr %.phi.trans.insert1917.i, align 4, !tbaa !4 ; 2 uses
  %narrow = sub nuw i32 %i.bll, %.0922.lcssa20102017.i ; 2 uses
  %3 = zext i32 %narrow to i64                    ; 2 uses
  %xtraiter760 = and i64 %3, 1
  %i.blm = icmp eq i32 %.0925.lcssa20082018.i, %.0922.lcssa20102017.i
  br i1 %i.blm, label %.lr.ph82.i.i.epil.preheader, label %.lr.ph82.preheader.i.i.new

.lr.ph82.preheader.i.i.new:                       ; preds = %.lr.ph82.preheader.i.i
  %unroll_iter764 = and i64 %3, 4294967294
  br label %.lr.ph82.i.i

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph82.i.i
  %lcmp.mod762.not = icmp eq i64 %xtraiter760, 0
  br i1 %lcmp.mod762.not, label %.preheader.i.i, label %.lr.ph82.i.i.epil.preheader

.lr.ph82.i.i.epil.preheader:                      ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph82.preheader.i.i
  %.epil.init = phi i32 [ %.pre1918.i, %.lr.ph82.preheader.i.i ], [ %i.bmo, %.preheader.i.i.loopexit.unr-lcssa ]
  %indvars.iv104.i.i.epil.init = phi i64 [ %i.blk, %.lr.ph82.preheader.i.i ], [ %indvars.iv.next105.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.081.i.i.epil.init = phi i32 [ 0, %.lr.ph82.preheader.i.i ], [ %i.bmt, %.preheader.i.i.loopexit.unr-lcssa ]
  %lcmp.mod763 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod763)
  %i.bln = getelementptr inbounds nuw [4 x i8], ptr %i.bim, i64 %indvars.iv104.i.i.epil.init
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bln, i64 4
  %i.blp = load i32, ptr %i.blo, align 4, !tbaa !4
  %i.blq = sub nsw i32 %i.blp, %.epil.init
  %i.blr = add nsw i32 %i.blq, %.081.i.i.epil.init
  %i.bls = add nsw i32 %i.blr, -1
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %i.bin, i64 %indvars.iv104.i.i.epil.init
  store i32 %i.bls, ptr %i.blt, align 4, !tbaa !4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph82.i.i.epil.preheader, %.preheader.i.i.loopexit.unr-lcssa, %.preheader66.i.i
  %.not63.not83.i.i = icmp samesign ult i32 %.0922.lcssa20102017.i, %.0925.lcssa20082018.i
  br i1 %.not63.not83.i.i, label %.lr.ph85.preheader.i.i, label %CreateDecodeTables.exit.i

.lr.ph85.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.blu = zext i32 %.0922.lcssa20102017.i to i64 ; 4 uses
  %wide.trip.count112.i.i = zext nneg i32 %.0925.lcssa20082018.i to i64 ; 2 uses
  %i.blv = sub nsw i64 %wide.trip.count112.i.i, %i.blu ; 3 uses
  %min.iters.check513 = icmp ult i64 %i.blv, 4
  br i1 %min.iters.check513, label %.lr.ph85.i.i.preheader, label %vector.ph514

vector.ph514:                                     ; preds = %.lr.ph85.preheader.i.i
  %n.vec516 = and i64 %i.blv, -4                  ; 3 uses
  %i.blw = add nsw i64 %n.vec516, %i.blu
  br label %vector.body517

vector.body517:                                   ; preds = %vector.body517, %vector.ph514
  %index518 = phi i64 [ 0, %vector.ph514 ], [ %index.next521, %vector.body517 ] ; 2 uses
  %i.blx = add i64 %index518, %i.blu              ; 2 uses
  %i.bly = getelementptr inbounds nuw [4 x i8], ptr %i.bin, i64 %i.blx
  %wide.load519 = load <4 x i32>, ptr %i.bly, align 4, !tbaa !4
  %i.blz = shl <4 x i32> %wide.load519, splat (i32 1)
  %i.bma = add <4 x i32> %i.blz, splat (i32 2)
  %i.bmb = getelementptr inbounds nuw [4 x i8], ptr %i.bim, i64 %i.blx
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bmb, i64 4 ; 2 uses
  %wide.load520 = load <4 x i32>, ptr %i.bmc, align 4, !tbaa !4
  %i.bmd = sub <4 x i32> %i.bma, %wide.load520
  store <4 x i32> %i.bmd, ptr %i.bmc, align 4, !tbaa !4
  %index.next521 = add nuw i64 %index518, 4       ; 2 uses
  %i.bme = icmp eq i64 %index.next521, %n.vec516
  br i1 %i.bme, label %middle.block522, label %vector.body517, !llvm.loop !101

middle.block522:                                  ; preds = %vector.body517
  %cmp.n523 = icmp eq i64 %i.blv, %n.vec516
  br i1 %cmp.n523, label %CreateDecodeTables.exit.i, label %.lr.ph85.i.i.preheader

.lr.ph85.i.i.preheader:                           ; preds = %.lr.ph85.preheader.i.i, %middle.block522
  %indvars.iv109.i.i.ph = phi i64 [ %i.blu, %.lr.ph85.preheader.i.i ], [ %i.blw, %middle.block522 ]
  br label %.lr.ph85.i.i

.lr.ph82.i.i:                                     ; preds = %.lr.ph82.i.i, %.lr.ph82.preheader.i.i.new
  %i.bmf = phi i32 [ %.pre1918.i, %.lr.ph82.preheader.i.i.new ], [ %i.bmo, %.lr.ph82.i.i ]
  %indvars.iv104.i.i = phi i64 [ %i.blk, %.lr.ph82.preheader.i.i.new ], [ %indvars.iv.next105.i.i.1, %.lr.ph82.i.i ] ; 3 uses
  %.081.i.i = phi i32 [ 0, %.lr.ph82.preheader.i.i.new ], [ %i.bmt, %.lr.ph82.i.i ]
  %niter765 = phi i64 [ 0, %.lr.ph82.preheader.i.i.new ], [ %niter765.next.1, %.lr.ph82.i.i ]
  %indvars.iv.next105.i.i = add nuw nsw i64 %indvars.iv104.i.i, 1 ; 2 uses
  %i.bmg = getelementptr inbounds nuw [4 x i8], ptr %i.bim, i64 %indvars.iv.next105.i.i
  %i.bmh = load i32, ptr %i.bmg, align 4, !tbaa !4 ; 2 uses
  %i.bmi = sub nsw i32 %i.bmh, %i.bmf
  %i.bmj = add nsw i32 %i.bmi, %.081.i.i          ; 2 uses
  %i.bmk = add nsw i32 %i.bmj, -1
  %i.bml = getelementptr inbounds nuw [4 x i8], ptr %i.bin, i64 %indvars.iv104.i.i
  store i32 %i.bmk, ptr %i.bml, align 4, !tbaa !4
  %i.bmm = shl i32 %i.bmj, 1
  %indvars.iv.next105.i.i.1 = add nuw nsw i64 %indvars.iv104.i.i, 2 ; 3 uses
  %i.bmn = getelementptr inbounds nuw [4 x i8], ptr %i.bim, i64 %indvars.iv.next105.i.i.1
  %i.bmo = load i32, ptr %i.bmn, align 4, !tbaa !4 ; 3 uses
  %i.bmp = sub nsw i32 %i.bmo, %i.bmh
  %i.bmq = add nsw i32 %i.bmp, %i.bmm             ; 2 uses
  %i.bmr = add nsw i32 %i.bmq, -1
  %i.bms = getelementptr inbounds nuw [4 x i8], ptr %i.bin, i64 %indvars.iv.next105.i.i
  store i32 %i.bmr, ptr %i.bms, align 4, !tbaa !4
  %i.bmt = shl i32 %i.bmq, 1                      ; 2 uses
  %niter765.next.1 = add i64 %niter765, 2         ; 2 uses
  %niter765.ncmp.1 = icmp eq i64 %niter765.next.1, %unroll_iter764
  br i1 %niter765.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph82.i.i, !llvm.loop !102

.lr.ph85.i.i:                                     ; preds = %.lr.ph85.i.i.preheader, %.lr.ph85.i.i
  %indvars.iv109.i.i = phi i64 [ %indvars.iv.next110.i.i, %.lr.ph85.i.i ], [ %indvars.iv109.i.i.ph, %.lr.ph85.i.i.preheader ] ; 2 uses
  %indvars.iv.next110.i.i = add nuw nsw i64 %indvars.iv109.i.i, 1 ; 3 uses
  %i.bmu = getelementptr inbounds nuw [4 x i8], ptr %i.bin, i64 %indvars.iv109.i.i
  %i.bmv = load i32, ptr %i.bmu, align 4, !tbaa !4
  %i.bmw = shl i32 %i.bmv, 1
  %i.bmx = add i32 %i.bmw, 2
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %i.bim, i64 %indvars.iv.next110.i.i ; 2 uses
  %i.bmz = load i32, ptr %i.bmy, align 4, !tbaa !4
  %i.bna = sub i32 %i.bmx, %i.bmz
  store i32 %i.bna, ptr %i.bmy, align 4, !tbaa !4
  %exitcond113.not.i.i = icmp eq i64 %indvars.iv.next110.i.i, %wide.trip.count112.i.i
  br i1 %exitcond113.not.i.i, label %CreateDecodeTables.exit.i, label %.lr.ph85.i.i, !llvm.loop !103

CreateDecodeTables.exit.i:                        ; preds = %.lr.ph85.i.i, %middle.block522, %.preheader.i.i
  %i.bnb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv1747.i
  store i32 %.0922.lcssa20102017.i, ptr %i.bnb, align 4, !tbaa !4
  %indvars.iv.next1748.i = add nuw nsw i64 %indvars.iv1747.i, 1 ; 2 uses
  %exitcond1752.not.i = icmp eq i64 %indvars.iv.next1748.i, %wide.trip.count1751.i
  br i1 %exitcond1752.not.i, label %._crit_edge1539.i, label %.preheader1391.i, !llvm.loop !104

._crit_edge1539.i:                                ; preds = %CreateDecodeTables.exit.i, %.preheader1392.i
  %.6970.lcssa.i = phi i32 [ 0, %.preheader1392.i ], [ %.41014.i, %CreateDecodeTables.exit.i ] ; 2 uses
  %i.bnc = load i32, ptr %i.y, align 8, !tbaa !82
  %i.bnd = load i32, ptr %i.t, align 8, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ah, i8 0, i64 1024, i1 false), !tbaa !4
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.bb, align 4, !tbaa !34
  store i32 4080, ptr %i.bc, align 8, !tbaa !4
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.bd, align 4, !tbaa !34
  store i32 4064, ptr %i.be, align 4, !tbaa !4
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.bf, align 4, !tbaa !34
  store i32 4048, ptr %i.bg, align 8, !tbaa !4
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.bh, align 4, !tbaa !34
  store i32 4032, ptr %i.bi, align 4, !tbaa !4
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.bj, align 4, !tbaa !34
  store i32 4016, ptr %i.bk, align 8, !tbaa !4
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.bl, align 4, !tbaa !34
  store i32 4000, ptr %i.bm, align 4, !tbaa !4
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.bn, align 4, !tbaa !34
  store i32 3984, ptr %i.bo, align 8, !tbaa !4
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.bp, align 4, !tbaa !34
  store i32 3968, ptr %i.bq, align 4, !tbaa !4
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.br, align 4, !tbaa !34
  store i32 3952, ptr %i.bs, align 8, !tbaa !4
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.bt, align 4, !tbaa !34
  store i32 3936, ptr %i.bu, align 4, !tbaa !4
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.bv, align 4, !tbaa !34
  store i32 3920, ptr %i.bw, align 8, !tbaa !4
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.bx, align 4, !tbaa !34
  store i32 3904, ptr %i.by, align 4, !tbaa !4
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.bz, align 4, !tbaa !34
  store i32 3888, ptr %i.ca, align 8, !tbaa !4
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.cb, align 4, !tbaa !34
  store i32 3872, ptr %i.cc, align 4, !tbaa !4
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.cd, align 4, !tbaa !34
  store i32 3856, ptr %i.ce, align 8, !tbaa !4
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.cf, align 4, !tbaa !34
  store i32 3840, ptr %i.aj, align 4, !tbaa !4
  %i.bne = add nsw i32 %i.bnc, 1                  ; 2 uses
  %i.bnf = mul nsw i32 %i.bnd, 100000             ; 2 uses
  %i.bng = icmp slt i32 %.31035.i, 1
  br i1 %i.bng, label %BZ2_decompress.exit, label %bb.ej

bb.ej:                                            ; preds = %._crit_edge1539.i
  %i.bnh = load i8, ptr %i.ab, align 4, !tbaa !34 ; 2 uses
  %i.bni = zext i8 %i.bnh to i64                  ; 4 uses
  %i.bnj = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %i.bni
  %i.bnk = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %i.bni
  %i.bnl = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %i.bni
  %i.bnm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bni
  %i.bnn = load i32, ptr %i.bnm, align 4, !tbaa !4 ; 2 uses
  %i.bno = zext i8 %i.bnh to i32
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.au
  %i.bnp = phi i32 [ %i.ayg, %bb.ej ], [ %.pre1860.i, %bb.au ] ; 3 uses
  %i.bnq = phi i32 [ %i.ayj, %bb.ej ], [ %.pre1866.i, %bb.au ] ; 3 uses
  %i.bnr = phi i32 [ %i.ayk, %bb.ej ], [ %.pre1868.i, %bb.au ] ; 3 uses
  %i.bns = phi i32 [ %i.ayl, %bb.ej ], [ %.pre1872.i, %bb.au ] ; 3 uses
  %i.bnt = phi i32 [ %i.ayn, %bb.ej ], [ %.pre1876.i, %bb.au ] ; 2 uses
  %i.bnu = phi i32 [ %i.ayo, %bb.ej ], [ %.pre1878.i, %bb.au ] ; 3 uses
  %.11258.i = phi i32 [ %i.bno, %bb.ej ], [ %.pre1880.i, %bb.au ] ; 3 uses
  %.11243.i = phi i32 [ %i.bnn, %bb.ej ], [ %.pre1882.i, %bb.au ] ; 3 uses
  %.11228.i = phi ptr [ %i.bnl, %bb.ej ], [ %.pre1884.i, %bb.au ] ; 3 uses
  %.11213.i = phi ptr [ %i.bnj, %bb.ej ], [ %.pre1886.i, %bb.au ] ; 3 uses
  %.11198.i = phi ptr [ %i.bnk, %bb.ej ], [ %.pre1888.i, %bb.au ] ; 3 uses
  %.01174.i = phi i32 [ %i.bnn, %bb.ej ], [ %.pre1874.i, %bb.au ] ; 7 uses
  %.71162.i = phi i32 [ %.01155.i, %bb.ej ], [ %.pre1870.i, %bb.au ] ; 3 uses
  %.01118.i = phi i32 [ 0, %bb.ej ], [ %.pre1864.i, %bb.au ] ; 3 uses
  %.01106.i = phi i32 [ %i.bnf, %bb.ej ], [ %.pre1862.i, %bb.au ] ; 3 uses
  %.11083.i = phi i32 [ 49, %bb.ej ], [ %.pre1858.i, %bb.au ] ; 3 uses
  %.11068.i = phi i32 [ 0, %bb.ej ], [ %.pre1856.i, %bb.au ] ; 3 uses
  %.01053.i = phi i32 [ %i.bne, %bb.ej ], [ %.pre1854.i, %bb.au ] ; 3 uses
  %.91041.i = phi i32 [ %.31035.i, %bb.ej ], [ %.pre1852.i, %bb.au ] ; 3 uses
  %.101020.i = phi i32 [ %.41014.i, %bb.ej ], [ %.pre1850.i, %bb.au ] ; 3 uses
  %.11994.i = phi i32 [ %.5988.i, %bb.ej ], [ %.pre1848.i, %bb.au ] ; 3 uses
  %.7971.i = phi i32 [ %.6970.lcssa.i, %bb.ej ], [ %.pre1846.i, %bb.au ] ; 3 uses
  %.15950.i = phi i32 [ %.9944.i, %bb.ej ], [ %.pre1844.i, %bb.au ] ; 3 uses
  %.21.i = phi i32 [ 256, %bb.ej ], [ %.pre.i36, %bb.au ] ; 3 uses
  store i32 36, ptr %i.g, align 8, !tbaa !19
  %.promoted1546.i = load i32, ptr %.phi.trans.insert1932.i, align 4, !tbaa !20 ; 3 uses
  %.not13281547.i = icmp slt i32 %.promoted1546.i, %.01174.i
  br i1 %.not13281547.i, label %.lr.ph1549.i, label %.._crit_edge1550_crit_edge.i

.._crit_edge1550_crit_edge.i:                     ; preds = %bb.ek
  %.pre1920.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1550.i

.lr.ph1549.i:                                     ; preds = %bb.ek
  %i.bnv = load ptr, ptr %i.d, align 8, !tbaa !14 ; 5 uses
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 8 ; 2 uses
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnv, i64 12 ; 2 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnv, i64 16 ; 2 uses
  %.promoted1553.i = load i32, ptr %i.bnw, align 8, !tbaa !76 ; 2 uses
  %i.bnz = icmp eq i32 %.promoted1553.i, 0
  br i1 %i.bnz, label %BZ2_decompress.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph1549.i
  %.promoted = load i32, ptr %i.v, align 8, !tbaa !21
  %.promoted857 = load ptr, ptr %i.bnv, align 8, !tbaa !77
  %.promoted858 = load i32, ptr %i.bnx, align 4, !tbaa !23
  br label %.lr.ph
end_hunk_0
