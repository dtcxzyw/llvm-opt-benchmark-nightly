Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lodepng?download=true
inline.NumInlined: 863
inline.NumDeleted: 192
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 142
begin_hunk_0_@_ZL8unfilterPhPKhjjj:bb.a
  %i.axp = sub nsw <16 x i32> %i.axo, %i.axl
  %i.axq = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.axp, i1 true) ; 2 uses
  %i.axr = add nuw nsw <16 x i32> %i.axk, %i.axo
  %i.axs = shl nuw nsw <16 x i32> %i.axl, splat (i32 1)
  %i.axt = sub nsw <16 x i32> %i.axr, %i.axs
  %i.axu = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.axt, i1 true)
  %i.axv = icmp samesign ult <16 x i32> %i.axq, %i.axn
  %i.axw = select <16 x i1> %i.axv, <16 x i8> %strided.vec1664, <16 x i8> %strided.vec1659
  %i.axx = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.axq, <16 x i32> %i.axn)
  %i.axy = icmp samesign ult <16 x i32> %i.axu, %i.axx
  %i.axz = select <16 x i1> %i.axy, <16 x i8> %strided.vec1669, <16 x i8> %i.axw
  %i.aya = add <16 x i8> %i.axz, %strided.vec1654
  %i.ayb = zext <16 x i8> %strided.vec1665 to <16 x i32> ; 2 uses
  %i.ayc = zext <16 x i8> %strided.vec1670 to <16 x i32> ; 3 uses
  %i.ayd = sub nsw <16 x i32> %i.ayb, %i.ayc
  %i.aye = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ayd, i1 true) ; 2 uses
  %i.ayf = zext <16 x i8> %strided.vec1660 to <16 x i32> ; 2 uses
  %i.ayg = sub nsw <16 x i32> %i.ayf, %i.ayc
  %i.ayh = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ayg, i1 true) ; 2 uses
  %i.ayi = add nuw nsw <16 x i32> %i.ayb, %i.ayf
  %i.ayj = shl nuw nsw <16 x i32> %i.ayc, splat (i32 1)
  %i.ayk = sub nsw <16 x i32> %i.ayi, %i.ayj
  %i.ayl = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ayk, i1 true)
  %i.aym = icmp samesign ult <16 x i32> %i.ayh, %i.aye
  %i.ayn = select <16 x i1> %i.aym, <16 x i8> %strided.vec1665, <16 x i8> %strided.vec1660
  %i.ayo = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ayh, <16 x i32> %i.aye)
  %i.ayp = icmp samesign ult <16 x i32> %i.ayl, %i.ayo
  %i.ayq = select <16 x i1> %i.ayp, <16 x i8> %strided.vec1670, <16 x i8> %i.ayn
  %i.ayr = add <16 x i8> %i.ayq, %strided.vec1655
  %i.ays = zext <16 x i8> %strided.vec1666 to <16 x i32> ; 2 uses
  %i.ayt = zext <16 x i8> %strided.vec1671 to <16 x i32> ; 3 uses
  %i.ayu = sub nsw <16 x i32> %i.ays, %i.ayt
  %i.ayv = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ayu, i1 true) ; 2 uses
  %i.ayw = zext <16 x i8> %strided.vec1661 to <16 x i32> ; 2 uses
  %i.ayx = sub nsw <16 x i32> %i.ayw, %i.ayt
  %i.ayy = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ayx, i1 true) ; 2 uses
  %i.ayz = add nuw nsw <16 x i32> %i.ays, %i.ayw
  %i.aza = shl nuw nsw <16 x i32> %i.ayt, splat (i32 1)
  %i.azb = sub nsw <16 x i32> %i.ayz, %i.aza
  %i.azc = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.azb, i1 true)
  %i.azd = icmp samesign ult <16 x i32> %i.ayy, %i.ayv
  %i.aze = select <16 x i1> %i.azd, <16 x i8> %strided.vec1666, <16 x i8> %strided.vec1661
  %i.azf = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ayy, <16 x i32> %i.ayv)
  %i.azg = icmp samesign ult <16 x i32> %i.azc, %i.azf
  %i.azh = select <16 x i1> %i.azg, <16 x i8> %strided.vec1671, <16 x i8> %i.aze
  %i.azi = add <16 x i8> %i.azh, %strided.vec1656
  %i.azj = shufflevector <16 x i8> %i.axi, <16 x i8> %i.aya, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azk = shufflevector <16 x i8> %i.ayr, <16 x i8> %i.azi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec1672 = shufflevector <32 x i8> %i.azj, <32 x i8> %i.azk, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i8> %interleaved.vec1672, ptr %i.axj, align 1, !tbaa !29
  %index.next1673 = add nuw i64 %index1651, 16    ; 2 uses
  %i.azl = icmp eq i64 %index.next1673, %n.vec1649
  br i1 %i.azl, label %middle.block1674, label %vector.body1650, !llvm.loop !944

middle.block1674:                                 ; preds = %vector.body1650
  br i1 %cmp.n1675, label %.loopexit483.i, label %vec.epilog.iter.check1677

vec.epilog.iter.check1677:                        ; preds = %middle.block1674
  br i1 %min.epilog.iters.check1679, label %.lr.ph503.i.preheader, label %vec.epilog.ph1680, !prof !50

vec.epilog.ph1680:                                ; preds = %vector.main.loop.iter.check1646, %vec.epilog.iter.check1677
  %vec.epilog.resume.val1681 = phi i64 [ %n.vec1649, %vec.epilog.iter.check1677 ], [ 0, %vector.main.loop.iter.check1646 ]
  br label %vec.epilog.vector.body1683

vec.epilog.vector.body1683:                       ; preds = %vec.epilog.vector.body1683, %vec.epilog.ph1680
  %index1684 = phi i64 [ %vec.epilog.resume.val1681, %vec.epilog.ph1680 ], [ %index.next1706, %vec.epilog.vector.body1683 ] ; 2 uses
  %i.azm = shl nuw i64 %index1684, 2              ; 3 uses
  %i.azn = add nuw i64 %i.azm, %i.d               ; 3 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.azn
  %wide.vec1685 = load <16 x i8>, ptr %i.azo, align 1, !tbaa !29, !alias.scope !993 ; 4 uses
  %strided.vec1686 = shufflevector <16 x i8> %wide.vec1685, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1687 = shufflevector <16 x i8> %wide.vec1685, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1688 = shufflevector <16 x i8> %wide.vec1685, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec1689 = shufflevector <16 x i8> %wide.vec1685, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.azp = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.azm
  %wide.vec1690 = load <16 x i8>, ptr %i.azp, align 1, !tbaa !29 ; 4 uses
  %strided.vec1691 = shufflevector <16 x i8> %wide.vec1690, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec1692 = shufflevector <16 x i8> %wide.vec1690, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec1693 = shufflevector <16 x i8> %wide.vec1690, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %strided.vec1694 = shufflevector <16 x i8> %wide.vec1690, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.azn
  %wide.vec1695 = load <16 x i8>, ptr %i.azq, align 1, !tbaa !29 ; 4 uses
  %strided.vec1696 = shufflevector <16 x i8> %wide.vec1695, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec1697 = shufflevector <16 x i8> %wide.vec1695, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec1698 = shufflevector <16 x i8> %wide.vec1695, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %strided.vec1699 = shufflevector <16 x i8> %wide.vec1695, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.azm
  %wide.vec1700 = load <16 x i8>, ptr %i.azr, align 1, !tbaa !29 ; 4 uses
  %strided.vec1701 = shufflevector <16 x i8> %wide.vec1700, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec1702 = shufflevector <16 x i8> %wide.vec1700, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec1703 = shufflevector <16 x i8> %wide.vec1700, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %strided.vec1704 = shufflevector <16 x i8> %wide.vec1700, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.azs = zext <4 x i8> %strided.vec1696 to <4 x i32> ; 2 uses
  %i.azt = zext <4 x i8> %strided.vec1701 to <4 x i32> ; 3 uses
  %i.azu = sub nsw <4 x i32> %i.azs, %i.azt
  %i.azv = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.azu, i1 true) ; 2 uses
  %i.azw = zext <4 x i8> %strided.vec1691 to <4 x i32> ; 2 uses
  %i.azx = sub nsw <4 x i32> %i.azw, %i.azt
  %i.azy = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.azx, i1 true) ; 2 uses
  %i.azz = add nuw nsw <4 x i32> %i.azs, %i.azw
  %i.baa = shl nuw nsw <4 x i32> %i.azt, splat (i32 1)
  %i.bab = sub nsw <4 x i32> %i.azz, %i.baa
  %i.bac = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bab, i1 true)
  %i.bad = icmp samesign ult <4 x i32> %i.azy, %i.azv
  %i.bae = select <4 x i1> %i.bad, <4 x i8> %strided.vec1696, <4 x i8> %strided.vec1691
  %i.baf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.azy, <4 x i32> %i.azv)
  %i.bag = icmp samesign ult <4 x i32> %i.bac, %i.baf
  %i.bah = select <4 x i1> %i.bag, <4 x i8> %strided.vec1701, <4 x i8> %i.bae
  %i.bai = add <4 x i8> %i.bah, %strided.vec1686
  %i.baj = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.azn
  %i.bak = zext <4 x i8> %strided.vec1697 to <4 x i32> ; 2 uses
  %i.bal = zext <4 x i8> %strided.vec1702 to <4 x i32> ; 3 uses
  %i.bam = sub nsw <4 x i32> %i.bak, %i.bal
  %i.ban = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bam, i1 true) ; 2 uses
  %i.bao = zext <4 x i8> %strided.vec1692 to <4 x i32> ; 2 uses
  %i.bap = sub nsw <4 x i32> %i.bao, %i.bal
  %i.baq = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bap, i1 true) ; 2 uses
  %i.bar = add nuw nsw <4 x i32> %i.bak, %i.bao
  %i.bas = shl nuw nsw <4 x i32> %i.bal, splat (i32 1)
  %i.bat = sub nsw <4 x i32> %i.bar, %i.bas
  %i.bau = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bat, i1 true)
  %i.bav = icmp samesign ult <4 x i32> %i.baq, %i.ban
  %i.baw = select <4 x i1> %i.bav, <4 x i8> %strided.vec1697, <4 x i8> %strided.vec1692
  %i.bax = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.baq, <4 x i32> %i.ban)
  %i.bay = icmp samesign ult <4 x i32> %i.bau, %i.bax
  %i.baz = select <4 x i1> %i.bay, <4 x i8> %strided.vec1702, <4 x i8> %i.baw
  %i.bba = add <4 x i8> %i.baz, %strided.vec1687
  %i.bbb = zext <4 x i8> %strided.vec1698 to <4 x i32> ; 2 uses
  %i.bbc = zext <4 x i8> %strided.vec1703 to <4 x i32> ; 3 uses
  %i.bbd = sub nsw <4 x i32> %i.bbb, %i.bbc
  %i.bbe = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bbd, i1 true) ; 2 uses
  %i.bbf = zext <4 x i8> %strided.vec1693 to <4 x i32> ; 2 uses
  %i.bbg = sub nsw <4 x i32> %i.bbf, %i.bbc
  %i.bbh = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bbg, i1 true) ; 2 uses
  %i.bbi = add nuw nsw <4 x i32> %i.bbb, %i.bbf
  %i.bbj = shl nuw nsw <4 x i32> %i.bbc, splat (i32 1)
  %i.bbk = sub nsw <4 x i32> %i.bbi, %i.bbj
  %i.bbl = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bbk, i1 true)
  %i.bbm = icmp samesign ult <4 x i32> %i.bbh, %i.bbe
  %i.bbn = select <4 x i1> %i.bbm, <4 x i8> %strided.vec1698, <4 x i8> %strided.vec1693
  %i.bbo = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bbh, <4 x i32> %i.bbe)
  %i.bbp = icmp samesign ult <4 x i32> %i.bbl, %i.bbo
  %i.bbq = select <4 x i1> %i.bbp, <4 x i8> %strided.vec1703, <4 x i8> %i.bbn
  %i.bbr = add <4 x i8> %i.bbq, %strided.vec1688
  %i.bbs = zext <4 x i8> %strided.vec1699 to <4 x i32> ; 2 uses
  %i.bbt = zext <4 x i8> %strided.vec1704 to <4 x i32> ; 3 uses
  %i.bbu = sub nsw <4 x i32> %i.bbs, %i.bbt
  %i.bbv = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bbu, i1 true) ; 2 uses
  %i.bbw = zext <4 x i8> %strided.vec1694 to <4 x i32> ; 2 uses
  %i.bbx = sub nsw <4 x i32> %i.bbw, %i.bbt
  %i.bby = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bbx, i1 true) ; 2 uses
  %i.bbz = add nuw nsw <4 x i32> %i.bbs, %i.bbw
  %i.bca = shl nuw nsw <4 x i32> %i.bbt, splat (i32 1)
  %i.bcb = sub nsw <4 x i32> %i.bbz, %i.bca
  %i.bcc = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bcb, i1 true)
  %i.bcd = icmp samesign ult <4 x i32> %i.bby, %i.bbv
  %i.bce = select <4 x i1> %i.bcd, <4 x i8> %strided.vec1699, <4 x i8> %strided.vec1694
  %i.bcf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bby, <4 x i32> %i.bbv)
  %i.bcg = icmp samesign ult <4 x i32> %i.bcc, %i.bcf
  %i.bch = select <4 x i1> %i.bcg, <4 x i8> %strided.vec1704, <4 x i8> %i.bce
  %i.bci = add <4 x i8> %i.bch, %strided.vec1689
  %i.bcj = shufflevector <4 x i8> %i.bai, <4 x i8> %i.bba, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bck = shufflevector <4 x i8> %i.bbr, <4 x i8> %i.bci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec1705 = shufflevector <8 x i8> %i.bcj, <8 x i8> %i.bck, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec1705, ptr %i.baj, align 1, !tbaa !29
  %index.next1706 = add nuw i64 %index1684, 4     ; 2 uses
  %i.bcl = icmp eq i64 %index.next1706, %n.vec1682
  br i1 %i.bcl, label %vec.epilog.middle.block1707, label %vec.epilog.vector.body1683, !llvm.loop !945

vec.epilog.middle.block1707:                      ; preds = %vec.epilog.vector.body1683
  br i1 %cmp.n1708, label %.loopexit483.i, label %.lr.ph503.i.preheader

.lr.ph503.i.preheader:                            ; preds = %iter.check1676, %vector.memcheck1414, %vec.epilog.iter.check1677, %vec.epilog.middle.block1707
  %.ph1816 = phi i64 [ %i.x, %iter.check1676 ], [ %i.x, %vector.memcheck1414 ], [ %i.le, %vec.epilog.iter.check1677 ], [ %i.lh, %vec.epilog.middle.block1707 ]
  %.14502.i.ph = phi i64 [ %i.d, %iter.check1676 ], [ %i.d, %vector.memcheck1414 ], [ %i.lf, %vec.epilog.iter.check1677 ], [ %i.li, %vec.epilog.middle.block1707 ]
  %.0390501.i.ph = phi i64 [ 0, %iter.check1676 ], [ 0, %vector.memcheck1414 ], [ %i.ld, %vec.epilog.iter.check1677 ], [ %i.lg, %vec.epilog.middle.block1707 ]
  br label %.lr.ph503.i

.lr.ph503.i:                                      ; preds = %.lr.ph503.i.preheader, %.lr.ph503.i
  %i.bcm = phi i64 [ %i.beh, %.lr.ph503.i ], [ %.ph1816, %.lr.ph503.i.preheader ] ; 3 uses
  %.14502.i = phi i64 [ %i.bef, %.lr.ph503.i ], [ %.14502.i.ph, %.lr.ph503.i.preheader ] ; 7 uses
  %.0390501.i = phi i64 [ %i.beg, %.lr.ph503.i ], [ %.0390501.i.ph, %.lr.ph503.i.preheader ] ; 3 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.14502.i
  %i.bco = add nuw nsw i64 %.14502.i, 2           ; 3 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.bco
  %i.bcq = load i8, ptr %i.bcp, align 1, !tbaa !29
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.bcm
  %i.bcs = load i8, ptr %i.bcr, align 1, !tbaa !29
  %i.bct = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.0390501.i
  %i.bcu = getelementptr inbounds nuw i8, ptr %.02771, i64 %.14502.i
  %i.bcv = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.bco
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !29
  %i.bcx = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.bcm
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !29
  %i.bcz = getelementptr inbounds nuw i8, ptr %.02771, i64 %.0390501.i
  %i.bda = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.14502.i
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.14502.i
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 1
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.bco
  %i.bde = load <2 x i8>, ptr %i.bcn, align 1, !tbaa !29
  %i.bdf = load <4 x i8>, ptr %i.bct, align 1, !tbaa !29 ; 3 uses
  %i.bdg = load <2 x i8>, ptr %i.bcu, align 1, !tbaa !29
  %i.bdh = load <4 x i8>, ptr %i.bcz, align 1, !tbaa !29 ; 3 uses
  %i.bdi = shufflevector <2 x i8> %i.bdg, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bdj = insertelement <4 x i8> %i.bdi, i8 %i.bcw, i64 2
  %i.bdk = insertelement <4 x i8> %i.bdj, i8 %i.bcy, i64 3 ; 3 uses
  %5 = zext <4 x i8> %i.bdk to <4 x i16>
  %6 = zext <4 x i8> %i.bdh to <4 x i16>
  %i.bdl = zext <4 x i8> %i.bdk to <4 x i32>
  %i.bdm = zext <4 x i8> %i.bdh to <4 x i32>      ; 2 uses
  %i.bdn = sub nsw <4 x i32> %i.bdl, %i.bdm
  %i.bdo = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bdn, i1 true) ; 2 uses
  %7 = zext <4 x i8> %i.bdf to <4 x i16>
  %i.bdp = zext <4 x i8> %i.bdf to <4 x i32>
  %i.bdq = sub nsw <4 x i32> %i.bdp, %i.bdm
  %i.bdr = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bdq, i1 true) ; 2 uses
  %8 = add nuw nsw <4 x i16> %5, %7
  %9 = shl nuw nsw <4 x i16> %6, splat (i16 1)
  %10 = sub nsw <4 x i16> %8, %9
  %11 = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %10, i1 false)
  %i.bds = icmp samesign ult <4 x i32> %i.bdr, %i.bdo
  %i.bdt = select <4 x i1> %i.bds, <4 x i8> %i.bdk, <4 x i8> %i.bdf
  %i.bdu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bdr, <4 x i32> %i.bdo)
  %12 = zext <4 x i16> %11 to <4 x i32>
  %13 = icmp samesign ugt <4 x i32> %i.bdu, %12
  %i.bdv = select <4 x i1> %13, <4 x i8> %i.bdh, <4 x i8> %i.bdt
  %i.bdw = shufflevector <2 x i8> %i.bde, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bdx = insertelement <4 x i8> %i.bdw, i8 %i.bcq, i64 2
  %i.bdy = insertelement <4 x i8> %i.bdx, i8 %i.bcs, i64 3
  %i.bdz = add <4 x i8> %i.bdv, %i.bdy            ; 4 uses
  %i.bea = extractelement <4 x i8> %i.bdz, i64 0
  store i8 %i.bea, ptr %i.bda, align 1, !tbaa !29
  %i.beb = extractelement <4 x i8> %i.bdz, i64 1
  store i8 %i.beb, ptr %i.bdc, align 1, !tbaa !29
  %i.bec = extractelement <4 x i8> %i.bdz, i64 2
  store i8 %i.bec, ptr %i.bdd, align 1, !tbaa !29
  %i.bed = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.bcm
  %i.bee = extractelement <4 x i8> %i.bdz, i64 3
  store i8 %i.bee, ptr %i.bed, align 1, !tbaa !29
  %i.bef = add nuw nsw i64 %.14502.i, 4           ; 2 uses
  %i.beg = add nuw nsw i64 %.0390501.i, 4         ; 2 uses
  %i.beh = add nuw nsw i64 %.14502.i, 7           ; 2 uses
  %i.bei = icmp samesign ult i64 %i.beh, %i.n
  br i1 %i.bei, label %.lr.ph503.i, label %.loopexit483.i, !llvm.loop !946

bb.h:                                             ; preds = %._crit_edge.i
  br i1 %i.r, label %.preheader484.i, label %bb.i

.preheader484.i:                                  ; preds = %bb.h
  br i1 %i.w, label %.lr.ph498.i, label %.loopexit483.i

.lr.ph498.i:                                      ; preds = %.preheader484.i, %.lr.ph498.i
  %i.bej = phi i64 [ %i.bgj, %.lr.ph498.i ], [ 5, %.preheader484.i ]
  %.15497.i = phi i64 [ %i.bgh, %.lr.ph498.i ], [ 3, %.preheader484.i ] ; 6 uses
  %.1391496.i = phi i64 [ %i.bgi, %.lr.ph498.i ], [ 0, %.preheader484.i ] ; 4 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.15497.i
  %i.bel = load i8, ptr %i.bek, align 1, !tbaa !29
  %i.bem = add nuw nsw i64 %.15497.i, 1           ; 3 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.bem
  %i.beo = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.1391496.i
  %i.bep = load i8, ptr %i.beo, align 1, !tbaa !29 ; 2 uses
  %i.beq = add nuw nsw i64 %.1391496.i, 1         ; 2 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.beq
  %i.bes = getelementptr inbounds nuw i8, ptr %.02771, i64 %.15497.i
  %i.bet = load i8, ptr %i.bes, align 1, !tbaa !29 ; 2 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.bem
  %i.bev = getelementptr inbounds nuw i8, ptr %.02771, i64 %.1391496.i
  %i.bew = load i8, ptr %i.bev, align 1, !tbaa !29 ; 2 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.beq
  %i.bey = zext i8 %i.bet to i32                  ; 2 uses
  %i.bez = zext i8 %i.bew to i32                  ; 3 uses
  %i.bfa = sub nsw i32 %i.bey, %i.bez
  %i.bfb = tail call i32 @llvm.abs.i32(i32 %i.bfa, i1 true) ; 2 uses
  %i.bfc = zext i8 %i.bep to i32                  ; 2 uses
  %i.bfd = sub nsw i32 %i.bfc, %i.bez
  %i.bfe = tail call i32 @llvm.abs.i32(i32 %i.bfd, i1 true) ; 2 uses
  %i.bff = add nuw nsw i32 %i.bey, %i.bfc
  %i.bfg = shl nuw nsw i32 %i.bez, 1
  %i.bfh = sub nsw i32 %i.bff, %i.bfg
  %i.bfi = tail call i32 @llvm.abs.i32(i32 %i.bfh, i1 true)
  %i.bfj = icmp samesign ult i32 %i.bfe, %i.bfb
  %.032.i430.v.i = select i1 %i.bfj, i8 %i.bet, i8 %i.bep
  %.0.in.i431.i = tail call i32 @llvm.umin.i32(i32 %i.bfe, i32 %i.bfb)
  %i.bfk = icmp samesign ult i32 %i.bfi, %.0.in.i431.i
  %.v443.i = select i1 %i.bfk, i8 %i.bew, i8 %.032.i430.v.i
  %i.bfl = add i8 %.v443.i, %i.bel
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.15497.i
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.bem
  %i.bfo = load <2 x i8>, ptr %i.ben, align 1, !tbaa !29
  %i.bfp = load <2 x i8>, ptr %i.ber, align 1, !tbaa !29 ; 3 uses
  %i.bfq = load <2 x i8>, ptr %i.beu, align 1, !tbaa !29 ; 3 uses
  %i.bfr = load <2 x i8>, ptr %i.bex, align 1, !tbaa !29 ; 3 uses
  store i8 %i.bfl, ptr %i.bfm, align 1, !tbaa !29
  %14 = zext <2 x i8> %i.bfq to <2 x i16>
  %15 = zext <2 x i8> %i.bfr to <2 x i16>
  %i.bfs = zext <2 x i8> %i.bfq to <2 x i32>
  %i.bft = zext <2 x i8> %i.bfr to <2 x i32>      ; 2 uses
  %i.bfu = sub nsw <2 x i32> %i.bfs, %i.bft
  %i.bfv = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.bfu, i1 true) ; 2 uses
  %16 = zext <2 x i8> %i.bfp to <2 x i16>
  %i.bfw = zext <2 x i8> %i.bfp to <2 x i32>
  %i.bfx = sub nsw <2 x i32> %i.bfw, %i.bft
  %i.bfy = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.bfx, i1 true) ; 2 uses
  %17 = add nuw nsw <2 x i16> %14, %16
  %18 = shl nuw nsw <2 x i16> %15, splat (i16 1)
  %19 = sub nsw <2 x i16> %17, %18
  %20 = tail call <2 x i16> @llvm.abs.v2i16(<2 x i16> %19, i1 false)
  %i.bfz = icmp samesign ult <2 x i32> %i.bfy, %i.bfv
  %i.bga = select <2 x i1> %i.bfz, <2 x i8> %i.bfq, <2 x i8> %i.bfp
  %i.bgb = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.bfy, <2 x i32> %i.bfv)
  %21 = zext <2 x i16> %20 to <2 x i32>
  %22 = icmp samesign ugt <2 x i32> %i.bgb, %21
  %i.bgc = select <2 x i1> %22, <2 x i8> %i.bfr, <2 x i8> %i.bga
  %i.bgd = add <2 x i8> %i.bgc, %i.bfo            ; 2 uses
  %i.bge = extractelement <2 x i8> %i.bgd, i64 0
  store i8 %i.bge, ptr %i.bfn, align 1, !tbaa !29
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.bej
  %i.bgg = extractelement <2 x i8> %i.bgd, i64 1
  store i8 %i.bgg, ptr %i.bgf, align 1, !tbaa !29
  %i.bgh = add nuw nsw i64 %.15497.i, 3           ; 2 uses
  %i.bgi = add nuw nsw i64 %.1391496.i, 3         ; 2 uses
  %i.bgj = add nuw nsw i64 %.15497.i, 5           ; 2 uses
  %i.bgk = icmp samesign ult i64 %i.bgj, %i.n
  br i1 %i.bgk, label %.lr.ph498.i, label %.loopexit483.i, !llvm.loop !947

bb.i:                                             ; preds = %bb.h
  br i1 %or.cond568.i, label %.lr.ph493.i, label %.loopexit483.i

.lr.ph493.i:                                      ; preds = %bb.i, %.lr.ph493.i
  %i.bgl = phi i64 [ %i.bhm, %.lr.ph493.i ], [ 3, %bb.i ]
  %.16492.i = phi i64 [ %i.bhk, %.lr.ph493.i ], [ 2, %bb.i ] ; 5 uses
  %.2392491.i = phi i64 [ %i.bhl, %.lr.ph493.i ], [ 0, %bb.i ] ; 3 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.16492.i
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.2392491.i
  %i.bgo = getelementptr inbounds nuw i8, ptr %.02771, i64 %.16492.i
  %i.bgp = getelementptr inbounds nuw i8, ptr %.02771, i64 %.2392491.i
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.16492.i
  %i.bgr = load <2 x i8>, ptr %i.bgm, align 1, !tbaa !29
  %i.bgs = load <2 x i8>, ptr %i.bgn, align 1, !tbaa !29 ; 3 uses
  %i.bgt = load <2 x i8>, ptr %i.bgo, align 1, !tbaa !29 ; 3 uses
  %i.bgu = load <2 x i8>, ptr %i.bgp, align 1, !tbaa !29 ; 3 uses
  %23 = zext <2 x i8> %i.bgt to <2 x i16>
  %24 = zext <2 x i8> %i.bgu to <2 x i16>
  %i.bgv = zext <2 x i8> %i.bgt to <2 x i32>
  %i.bgw = zext <2 x i8> %i.bgu to <2 x i32>      ; 2 uses
  %i.bgx = sub nsw <2 x i32> %i.bgv, %i.bgw
  %i.bgy = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.bgx, i1 true) ; 2 uses
  %25 = zext <2 x i8> %i.bgs to <2 x i16>
  %i.bgz = zext <2 x i8> %i.bgs to <2 x i32>
  %i.bha = sub nsw <2 x i32> %i.bgz, %i.bgw
  %i.bhb = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.bha, i1 true) ; 2 uses
  %26 = add nuw nsw <2 x i16> %23, %25
  %27 = shl nuw nsw <2 x i16> %24, splat (i16 1)
  %28 = sub nsw <2 x i16> %26, %27
  %29 = tail call <2 x i16> @llvm.abs.v2i16(<2 x i16> %28, i1 false)
  %i.bhc = icmp samesign ult <2 x i32> %i.bhb, %i.bgy
  %i.bhd = select <2 x i1> %i.bhc, <2 x i8> %i.bgt, <2 x i8> %i.bgs
  %i.bhe = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.bhb, <2 x i32> %i.bgy)
  %30 = zext <2 x i16> %29 to <2 x i32>
  %31 = icmp samesign ugt <2 x i32> %i.bhe, %30
  %i.bhf = select <2 x i1> %31, <2 x i8> %i.bgu, <2 x i8> %i.bhd
  %i.bhg = add <2 x i8> %i.bhf, %i.bgr            ; 2 uses
  %i.bhh = extractelement <2 x i8> %i.bhg, i64 0
  store i8 %i.bhh, ptr %i.bgq, align 1, !tbaa !29
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.bgl
  %i.bhj = extractelement <2 x i8> %i.bhg, i64 1
  store i8 %i.bhj, ptr %i.bhi, align 1, !tbaa !29
  %i.bhk = add nuw nsw i64 %.16492.i, 2           ; 2 uses
  %i.bhl = add nuw nsw i64 %.2392491.i, 2         ; 2 uses
  %i.bhm = add nuw nsw i64 %.16492.i, 3           ; 2 uses
  %i.bhn = icmp samesign ult i64 %i.bhm, %i.n
  br i1 %i.bhn, label %.lr.ph493.i, label %.loopexit483.i, !llvm.loop !948

.loopexit483.i:                                   ; preds = %.lr.ph493.i, %.lr.ph498.i, %.lr.ph503.i, %middle.block1674, %vec.epilog.middle.block1707, %bb.i, %.preheader484.i, %.preheader482.i, %.preheader488.i
  %.3393.i = phi i64 [ 0, %bb.i ], [ %i.beg, %.lr.ph503.i ], [ 0, %.preheader488.i ], [ 0, %.preheader482.i ], [ 0, %.preheader484.i ], [ %i.bgi, %.lr.ph498.i ], [ %i.lg, %vec.epilog.middle.block1707 ], [ %i.ld, %middle.block1674 ], [ %i.bhl, %.lr.ph493.i ] ; 7 uses
  %.17.i = phi i64 [ %i.d, %bb.i ], [ %i.bef, %.lr.ph503.i ], [ 0, %.preheader488.i ], [ %i.d, %.preheader482.i ], [ 3, %.preheader484.i ], [ %i.bgh, %.lr.ph498.i ], [ %i.li, %vec.epilog.middle.block1707 ], [ %i.lf, %middle.block1674 ], [ %i.bhk, %.lr.ph493.i ] ; 9 uses
  %.not412506.i = icmp eq i64 %.17.i, %i.n
  br i1 %.not412506.i, label %.loopexit, label %iter.check1114

iter.check1114:                                   ; preds = %.loopexit483.i
  %i.bho = sub i64 %i.ef, %.17.i                  ; 7 uses
  %min.iters.check1092 = icmp ult i64 %i.bho, 8
  br i1 %min.iters.check1092, label %.lr.ph510.i.preheader, label %vector.memcheck1093

vector.memcheck1093:                              ; preds = %iter.check1114
  %.reass = add i64 %indvars.iv, %invariant.op
  %diff.check1094 = icmp ult i64 %.reass, 31
  %conflict.rdx1096 = or i1 %diff.check1094, %diff.check1095
  %i.bhp = add i64 %i.mj, %i.a                    ; 2 uses
  %i.bhq = sub i64 %.02771462, %i.bhp
  %diff.check1097 = icmp ugt i64 %i.bhq, -32
  %conflict.rdx1098 = or i1 %conflict.rdx1096, %diff.check1097
  %i.bhr = add i64 %.3393.i, %.02771462
  %i.bhs = add i64 %.17.i, %i.bhp
  %i.bht = sub i64 %i.bhr, %i.bhs
  %diff.check1099 = icmp ugt i64 %i.bht, -32
  %conflict.rdx1100 = or i1 %conflict.rdx1098, %diff.check1099
  br i1 %conflict.rdx1100, label %.lr.ph510.i.preheader, label %vector.main.loop.iter.check1101

vector.main.loop.iter.check1101:                  ; preds = %vector.memcheck1093
  %min.iters.check1102 = icmp ult i64 %i.bho, 32
  br i1 %min.iters.check1102, label %vec.epilog.ph1118, label %vector.ph1103

vector.ph1103:                                    ; preds = %vector.main.loop.iter.check1101
  %i.bhu = and i64 %i.bho, 24
  %n.vec1104 = and i64 %i.bho, -32                ; 5 uses
  %i.bhv = add i64 %.17.i, %n.vec1104
  %i.bhw = add i64 %.3393.i, %n.vec1104
  %i.bhx = getelementptr i8, ptr %.02771, i64 %.3393.i
  br label %vector.body1105

vector.body1105:                                  ; preds = %vector.ph1103, %vector.body1105
  %index1106 = phi i64 [ 0, %vector.ph1103 ], [ %index.next1111, %vector.body1105 ] ; 3 uses
  %i.bhy = add i64 %.17.i, %index1106             ; 4 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.bhy
  %wide.load1107 = load <32 x i8>, ptr %i.bhz, align 1, !tbaa !29
  %i.bia = sub i64 %i.bhy, %i.d
  %i.bib = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.bia
  %wide.load1108 = load <32 x i8>, ptr %i.bib, align 1, !tbaa !29 ; 2 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.bhy
  %wide.load1109 = load <32 x i8>, ptr %i.bic, align 1, !tbaa !29 ; 2 uses
  %i.bid = getelementptr i8, ptr %i.bhx, i64 %index1106
  %wide.load1110 = load <32 x i8>, ptr %i.bid, align 1, !tbaa !29 ; 2 uses
  %i.bie = zext <32 x i8> %wide.load1109 to <32 x i32> ; 2 uses
  %i.bif = zext <32 x i8> %wide.load1110 to <32 x i32> ; 3 uses
  %i.big = sub nsw <32 x i32> %i.bie, %i.bif
  %i.bih = tail call <32 x i32> @llvm.abs.v32i32(<32 x i32> %i.big, i1 true) ; 2 uses
  %i.bii = zext <32 x i8> %wide.load1108 to <32 x i32> ; 2 uses
  %i.bij = sub nsw <32 x i32> %i.bii, %i.bif
  %i.bik = tail call <32 x i32> @llvm.abs.v32i32(<32 x i32> %i.bij, i1 true) ; 2 uses
  %i.bil = add nuw nsw <32 x i32> %i.bie, %i.bii
  %i.bim = shl nuw nsw <32 x i32> %i.bif, splat (i32 1)
  %i.bin = sub nsw <32 x i32> %i.bil, %i.bim
  %i.bio = tail call <32 x i32> @llvm.abs.v32i32(<32 x i32> %i.bin, i1 true)
  %i.bip = icmp samesign ult <32 x i32> %i.bik, %i.bih
  %i.biq = select <32 x i1> %i.bip, <32 x i8> %wide.load1109, <32 x i8> %wide.load1108
  %i.bir = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.bik, <32 x i32> %i.bih)
  %i.bis = icmp samesign ult <32 x i32> %i.bio, %i.bir
  %i.bit = select <32 x i1> %i.bis, <32 x i8> %wide.load1110, <32 x i8> %i.biq
  %i.biu = add <32 x i8> %i.bit, %wide.load1107
  %i.biv = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.bhy
  store <32 x i8> %i.biu, ptr %i.biv, align 1, !tbaa !29
  %index.next1111 = add nuw i64 %index1106, 32    ; 2 uses
  %i.biw = icmp eq i64 %index.next1111, %n.vec1104
  br i1 %i.biw, label %middle.block1112, label %vector.body1105, !llvm.loop !949

middle.block1112:                                 ; preds = %vector.body1105
  %cmp.n1113 = icmp eq i64 %i.bho, %n.vec1104
  br i1 %cmp.n1113, label %.loopexit, label %vec.epilog.iter.check1115

vec.epilog.iter.check1115:                        ; preds = %middle.block1112
  %min.epilog.iters.check1117 = icmp eq i64 %i.bhu, 0
  br i1 %min.epilog.iters.check1117, label %.lr.ph510.i.preheader, label %vec.epilog.ph1118, !prof !53

vec.epilog.ph1118:                                ; preds = %vector.main.loop.iter.check1101, %vec.epilog.iter.check1115
  %vec.epilog.resume.val1119 = phi i64 [ %n.vec1104, %vec.epilog.iter.check1115 ], [ 0, %vector.main.loop.iter.check1101 ]
  %n.vec1120 = and i64 %i.bho, -8                 ; 4 uses
  %i.bix = add i64 %.17.i, %n.vec1120
  %i.biy = add i64 %.3393.i, %n.vec1120
  %i.biz = getelementptr i8, ptr %.02771, i64 %.3393.i
  br label %vec.epilog.vector.body1121

vec.epilog.vector.body1121:                       ; preds = %vec.epilog.vector.body1121, %vec.epilog.ph1118
  %index1122 = phi i64 [ %vec.epilog.resume.val1119, %vec.epilog.ph1118 ], [ %index.next1127, %vec.epilog.vector.body1121 ] ; 3 uses
  %i.bja = add i64 %.17.i, %index1122             ; 4 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.bja
  %wide.load1123 = load <8 x i8>, ptr %i.bjb, align 1, !tbaa !29
  %i.bjc = sub i64 %i.bja, %i.d
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.bjc
  %wide.load1124 = load <8 x i8>, ptr %i.bjd, align 1, !tbaa !29 ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.bja
  %wide.load1125 = load <8 x i8>, ptr %i.bje, align 1, !tbaa !29 ; 2 uses
  %i.bjf = getelementptr i8, ptr %i.biz, i64 %index1122
  %wide.load1126 = load <8 x i8>, ptr %i.bjf, align 1, !tbaa !29 ; 2 uses
  %i.bjg = zext <8 x i8> %wide.load1125 to <8 x i32> ; 2 uses
  %i.bjh = zext <8 x i8> %wide.load1126 to <8 x i32> ; 3 uses
  %i.bji = sub nsw <8 x i32> %i.bjg, %i.bjh
  %i.bjj = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.bji, i1 true) ; 2 uses
  %i.bjk = zext <8 x i8> %wide.load1124 to <8 x i32> ; 2 uses
  %i.bjl = sub nsw <8 x i32> %i.bjk, %i.bjh
  %i.bjm = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.bjl, i1 true) ; 2 uses
  %i.bjn = add nuw nsw <8 x i32> %i.bjg, %i.bjk
  %i.bjo = shl nuw nsw <8 x i32> %i.bjh, splat (i32 1)
  %i.bjp = sub nsw <8 x i32> %i.bjn, %i.bjo
  %i.bjq = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.bjp, i1 true)
  %i.bjr = icmp samesign ult <8 x i32> %i.bjm, %i.bjj
  %i.bjs = select <8 x i1> %i.bjr, <8 x i8> %wide.load1125, <8 x i8> %wide.load1124
  %i.bjt = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.bjm, <8 x i32> %i.bjj)
  %i.bju = icmp samesign ult <8 x i32> %i.bjq, %i.bjt
  %i.bjv = select <8 x i1> %i.bju, <8 x i8> %wide.load1126, <8 x i8> %i.bjs
  %i.bjw = add <8 x i8> %i.bjv, %wide.load1123
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.bja
  store <8 x i8> %i.bjw, ptr %i.bjx, align 1, !tbaa !29
  %index.next1127 = add nuw i64 %index1122, 8     ; 2 uses
  %i.bjy = icmp eq i64 %index.next1127, %n.vec1120
  br i1 %i.bjy, label %vec.epilog.middle.block1128, label %vec.epilog.vector.body1121, !llvm.loop !950

vec.epilog.middle.block1128:                      ; preds = %vec.epilog.vector.body1121
  %cmp.n1129 = icmp eq i64 %i.bho, %n.vec1120
  br i1 %cmp.n1129, label %.loopexit, label %.lr.ph510.i.preheader

.lr.ph510.i.preheader:                            ; preds = %iter.check1114, %vector.memcheck1093, %vec.epilog.iter.check1115, %vec.epilog.middle.block1128
  %.18508.i.ph = phi i64 [ %.17.i, %iter.check1114 ], [ %.17.i, %vector.memcheck1093 ], [ %i.bhv, %vec.epilog.iter.check1115 ], [ %i.bix, %vec.epilog.middle.block1128 ]
  %.4394507.i.ph = phi i64 [ %.3393.i, %iter.check1114 ], [ %.3393.i, %vector.memcheck1093 ], [ %i.bhw, %vec.epilog.iter.check1115 ], [ %i.biy, %vec.epilog.middle.block1128 ]
  br label %.lr.ph510.i

.lr.ph510.i:                                      ; preds = %.lr.ph510.i.preheader, %.lr.ph510.i
  %.18508.i = phi i64 [ %i.bkx, %.lr.ph510.i ], [ %.18508.i.ph, %.lr.ph510.i.preheader ] ; 5 uses
  %.4394507.i = phi i64 [ %i.bky, %.lr.ph510.i ], [ %.4394507.i.ph, %.lr.ph510.i.preheader ] ; 2 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.18508.i
  %i.bka = load i8, ptr %i.bjz, align 1, !tbaa !29
  %i.bkb = sub i64 %.18508.i, %i.d
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.bkb
  %i.bkd = load i8, ptr %i.bkc, align 1, !tbaa !29 ; 2 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %.02771, i64 %.18508.i
  %i.bkf = load i8, ptr %i.bke, align 1, !tbaa !29 ; 2 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %.02771, i64 %.4394507.i
  %i.bkh = load i8, ptr %i.bkg, align 1, !tbaa !29 ; 2 uses
  %i.bki = zext i8 %i.bkf to i32                  ; 2 uses
  %i.bkj = zext i8 %i.bkh to i32                  ; 3 uses
  %i.bkk = sub nsw i32 %i.bki, %i.bkj
  %i.bkl = tail call i32 @llvm.abs.i32(i32 %i.bkk, i1 true) ; 2 uses
  %i.bkm = zext i8 %i.bkd to i32                  ; 2 uses
  %i.bkn = sub nsw i32 %i.bkm, %i.bkj
  %i.bko = tail call i32 @llvm.abs.i32(i32 %i.bkn, i1 true) ; 2 uses
  %i.bkp = add nuw nsw i32 %i.bki, %i.bkm
  %i.bkq = shl nuw nsw i32 %i.bkj, 1
  %i.bkr = sub nsw i32 %i.bkp, %i.bkq
  %i.bks = tail call i32 @llvm.abs.i32(i32 %i.bkr, i1 true)
  %i.bkt = icmp samesign ult i32 %i.bko, %i.bkl
  %.032.i440.v.i = select i1 %i.bkt, i8 %i.bkf, i8 %i.bkd
  %.0.in.i441.i = tail call i32 @llvm.umin.i32(i32 %i.bko, i32 %i.bkl)
  %i.bku = icmp samesign ult i32 %i.bks, %.0.in.i441.i
  %.v446.i = select i1 %i.bku, i8 %i.bkh, i8 %.032.i440.v.i
  %i.bkv = add i8 %.v446.i, %i.bka
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.18508.i
  store i8 %i.bkv, ptr %i.bkw, align 1, !tbaa !29
  %i.bkx = add i64 %.18508.i, 1                   ; 2 uses
  %i.bky = add i64 %.4394507.i, 1
  %.not412.i = icmp eq i64 %i.bkx, %i.n
  br i1 %.not412.i, label %.loopexit, label %.lr.ph510.i, !llvm.loop !951

.preheader478.i:                                  ; preds = %.lr.ph513.i.prol.loopexit, %.lr.ph513.i, %middle.block1068, %vec.epilog.middle.block1081, %.preheader480.i
  br i1 %.not410514.i, label %.loopexit, label %iter.check1026

iter.check1026:                                   ; preds = %.preheader478.i
  %brmerge1905 = select i1 %min.iters.check1004, i1 true, i1 %conflict.rdx1012
  br i1 %brmerge1905, label %.lr.ph517.i.preheader, label %vector.main.loop.iter.check1013

vector.main.loop.iter.check1013:                  ; preds = %iter.check1026
  br i1 %min.iters.check1014, label %vec.epilog.ph1030, label %vector.body1017

vector.body1017:                                  ; preds = %vector.main.loop.iter.check1013, %vector.body1017
  %index1018 = phi i64 [ %index.next1023, %vector.body1017 ], [ 0, %vector.main.loop.iter.check1013 ] ; 3 uses
  %i.bkz = add i64 %index1018, %i.d               ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.bkz ; 2 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bla, i64 32
  %wide.load1019 = load <32 x i8>, ptr %i.bla, align 1, !tbaa !29, !alias.scope !994
  %wide.load1020 = load <32 x i8>, ptr %i.blb, align 1, !tbaa !29, !alias.scope !994
  %i.blc = getelementptr inbounds nuw i8, ptr %i.mn, i64 %index1018 ; 2 uses
  %i.bld = getelementptr inbounds nuw i8, ptr %i.blc, i64 32
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag:bb.a
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.116) #36
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #37
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !1095

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !29
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !29
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ad, label %bb.ae, !prof !1095

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load i8, ptr %2, align 1, !tbaa !29
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !1095

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bt = load i8, ptr %1, align 1, !tbaa !29
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !29
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i59 = icmp eq ptr %i.av, null
  br i1 %.not.i59, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !194
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bx) #35
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bf, ptr %0, align 8, !tbaa !193
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !192
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.by, ptr %i.d, align 8, !tbaa !194
  br label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i9 @llvm.bitreverse.i9(i9) #25

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8i32.p0(<8 x i32>, ptr captures(none), <8 x i1>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x i32> @llvm.masked.load.v8i32.p0(ptr captures(none), <8 x i1>, <8 x i32>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i8> @llvm.masked.load.v3i8.p0(ptr captures(none), <3 x i1>, <3 x i8>) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <7 x i8> @llvm.masked.load.v7i8.p0(ptr captures(none), <7 x i1>, <7 x i8>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v8i32(<8 x i32>) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i32> @llvm.abs.v32i32(<32 x i32>, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i32> @llvm.umin.v32i32(<32 x i32>, <32 x i32>) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.abs.v4i16(<4 x i16>, i1 immarg) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.abs.v2i16(<2 x i16>, i1 immarg) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #25

attributes #0 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { nounwind }
attributes #34 = { nounwind allocsize(1) }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn }
attributes #37 = { builtin allocsize(0) }

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}
!llvm.errno.tbaa = !{!23}

!0 = distinct !{!0, !31}
!1 = distinct !{!1, !31}
!2 = distinct !{!2, !31}
!3 = distinct !{!3, !31}
!4 = distinct !{!4, !31}
!5 = distinct !{!5, !31}
!6 = distinct !{!6, !31}
!7 = distinct !{!7, !31}
!8 = distinct !{!8, !31}
!9 = distinct !{!9, !31}
!10 = distinct !{!10, !31}
!11 = distinct !{!11, !31}
!12 = distinct !{!12, !31}
!13 = distinct !{!13, !31}
!14 = distinct !{null}
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!19 = !{!"Simple C++ TBAA"}
!20 = !{!"omnipotent char", !19, i64 0}
!21 = !{!"int", !20, i64 0}
!22 = !{!"__libc_errno", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"long", !20, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"any pointer", !20, i64 0}
!27 = !{!"p1 omnipotent char", !26, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!20, !20, i64 0}
!30 = !{!21, !21, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"p1 _ZTS7BPMNode", !26, i64 0}
!33 = !{!"_ZTS7BPMNode", !21, i64 0, !21, i64 4, !32, i64 8, !21, i64 16}
!34 = !{!33, !21, i64 0}
!35 = !{!33, !21, i64 4}
!36 = !{!"any p2 pointer", !26, i64 0}
!37 = !{!"p2 _ZTS7BPMNode", !36, i64 0}
!38 = !{!"_ZTS8BPMLists", !21, i64 0, !32, i64 8, !21, i64 16, !21, i64 20, !37, i64 24, !21, i64 32, !37, i64 40, !37, i64 48}
!39 = !{!38, !21, i64 32}
!40 = !{!38, !21, i64 0}
!41 = !{!38, !21, i64 20}
!42 = !{!38, !21, i64 16}
!43 = !{!38, !32, i64 8}
!44 = !{!38, !37, i64 24}
!45 = !{!38, !37, i64 40}
!46 = !{!38, !37, i64 48}
!47 = !{!32, !32, i64 0}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!"branch_weights", i32 4, i32 12}
!51 = !{!33, !21, i64 16}
!52 = !{!33, !32, i64 8}
!53 = !{!"branch_weights", i32 8, i32 24}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!"_ZTS8ucvector", !27, i64 0, !24, i64 8, !24, i64 16}
!56 = !{!55, !27, i64 0}
!57 = !{!55, !24, i64 8}
!58 = !{!55, !24, i64 16}
!59 = !{!"_ZTS25LodePNGDecompressSettings", !21, i64 0, !21, i64 4, !24, i64 8, !26, i64 16, !26, i64 24, !26, i64 32}
!60 = !{!59, !24, i64 8}
!61 = !{!"p1 int", !26, i64 0}
!62 = !{!"p1 short", !26, i64 0}
!63 = !{!"_ZTS11HuffmanTree", !61, i64 0, !61, i64 8, !21, i64 16, !21, i64 20, !27, i64 24, !62, i64 32}
!64 = !{!63, !27, i64 24}
!65 = !{!63, !62, i64 32}
!66 = !{!63, !61, i64 8}
!67 = !{!63, !21, i64 20}
!68 = !{!63, !21, i64 16}
!69 = !{!"short", !20, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!63, !61, i64 0}
!72 = !{!"p1 _ZTS8ucvector", !26, i64 0}
!73 = !{!"_ZTS16LodePNGBitWriter", !72, i64 0, !20, i64 8}
!74 = !{!73, !72, i64 0}
!75 = !{!73, !20, i64 8}
!76 = !{!"_ZTS23LodePNGCompressSettings", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !26, i64 24, !26, i64 32, !26, i64 40}
!77 = !{!76, !21, i64 0}
!78 = !{!"_ZTS4Hash", !61, i64 0, !62, i64 8, !61, i64 16, !61, i64 24, !62, i64 32, !62, i64 40}
!79 = !{!78, !61, i64 0}
!80 = !{!78, !61, i64 16}
!81 = !{!78, !62, i64 8}
!82 = !{!78, !62, i64 40}
!83 = !{!78, !61, i64 24}
!84 = !{!78, !62, i64 32}
!85 = !{!"branch_weights", i32 8, i32 56}
!86 = !{!76, !21, i64 16}
!87 = !{!76, !21, i64 20}
!88 = !{!"_ZTS8uivector", !61, i64 0, !24, i64 8, !24, i64 16}
!89 = !{!88, !61, i64 0}
!90 = !{!88, !24, i64 8}
!91 = !{!88, !24, i64 16}
!92 = !{!"branch_weights", i32 4, i32 28}
!93 = !{!"branch_weights", i32 8, i32 120}
!94 = !{!"_ZTS16LodePNGColorType", !20, i64 0}
!95 = !{!"_ZTS16LodePNGColorMode", !94, i64 0, !21, i64 4, !27, i64 8, !24, i64 16, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36}
!96 = !{!95, !94, i64 0}
!97 = !{!95, !21, i64 4}
!98 = !{!95, !27, i64 8}
!99 = !{!95, !24, i64 16}
!100 = !{!95, !21, i64 24}
!101 = !{!"p2 omnipotent char", !36, i64 0}
!102 = !{!"_ZTS11LodePNGTime", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20}
!103 = !{!"_ZTS11LodePNGInfo", !21, i64 0, !21, i64 4, !21, i64 8, !95, i64 16, !21, i64 56, !21, i64 60, !21, i64 64, !21, i64 68, !24, i64 72, !101, i64 80, !101, i64 88, !24, i64 96, !101, i64 104, !101, i64 112, !101, i64 120, !101, i64 128, !21, i64 136, !102, i64 140, !21, i64 164, !21, i64 168, !21, i64 172, !21, i64 176, !21, i64 180, !21, i64 184, !21, i64 188, !21, i64 192, !21, i64 196, !21, i64 200, !21, i64 204, !21, i64 208, !21, i64 212, !21, i64 216, !21, i64 220, !21, i64 224, !21, i64 228, !21, i64 232, !27, i64 240, !27, i64 248, !21, i64 256, !20, i64 264, !20, i64 288}
!104 = !{!103, !101, i64 80}
!105 = !{!103, !24, i64 72}
!106 = !{!103, !101, i64 88}
!107 = !{!103, !24, i64 96}
!108 = !{!103, !101, i64 104}
!109 = !{!103, !101, i64 112}
!110 = !{!103, !101, i64 120}
!111 = !{!103, !101, i64 128}
!112 = !{!103, !27, i64 240}
!113 = !{!103, !27, i64 248}
!114 = !{!103, !21, i64 256}
!115 = !{!103, !21, i64 232}
!116 = !{!103, !21, i64 8}
!117 = !{!103, !21, i64 0}
!118 = !{!103, !21, i64 4}
!119 = !{!103, !21, i64 164}
!120 = !{!103, !21, i64 180}
!121 = !{!103, !21, i64 188}
!122 = !{!103, !21, i64 224}
!123 = !{!95, !21, i64 28}
!124 = !{!95, !21, i64 32}
!125 = !{!95, !21, i64 36}
!126 = !{!"_ZTS9ColorTree", !20, i64 0, !21, i64 128}
!127 = !{!126, !21, i64 128}
!128 = !{!"p1 _ZTS9ColorTree", !26, i64 0}
!129 = !{!128, !128, i64 0}
!130 = !{!"_ZTS17LodePNGColorStats", !21, i64 0, !21, i64 4, !69, i64 8, !69, i64 10, !69, i64 12, !21, i64 16, !21, i64 20, !20, i64 24, !21, i64 1048, !24, i64 1056, !21, i64 1064, !21, i64 1068}
!131 = !{!130, !21, i64 16}
!132 = !{!130, !21, i64 20}
!133 = !{!130, !21, i64 1048}
!134 = !{!130, !24, i64 1056}
!135 = !{!130, !21, i64 1064}
!136 = !{!130, !21, i64 1068}
!137 = !{!130, !21, i64 0}
!138 = !{!130, !69, i64 8}
!139 = !{!130, !69, i64 10}
!140 = !{!130, !69, i64 12}
!141 = !{!130, !21, i64 4}
!142 = !{!"_ZTS22LodePNGDecoderSettings", !59, i64 0, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52, !21, i64 56, !21, i64 60, !24, i64 64, !24, i64 72}
!143 = !{!"_ZTS21LodePNGFilterStrategy", !20, i64 0}
!144 = !{!"_ZTS22LodePNGEncoderSettings", !76, i64 0, !21, i64 48, !21, i64 52, !143, i64 56, !27, i64 64, !21, i64 72, !21, i64 76, !21, i64 80}
!145 = !{!"_ZTS12LodePNGState", !142, i64 0, !144, i64 80, !95, i64 168, !103, i64 208, !21, i64 520}
!146 = !{!145, !21, i64 520}
!147 = !{!103, !21, i64 20}
!148 = !{!103, !94, i64 16}
!149 = !{!145, !21, i64 40}
!150 = !{!103, !21, i64 184}
!151 = !{!103, !21, i64 228}
end_hunk_1
