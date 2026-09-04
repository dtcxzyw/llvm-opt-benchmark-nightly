Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
vector.body1684:                                  ; preds = %vector.body1684, %vector.ph1682
  %index1685 = phi i64 [ 0, %vector.ph1682 ], [ %index.next1699, %vector.body1684 ] ; 2 uses
  %vec.ind1686 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1682 ], [ %vec.ind.next1700, %vector.body1684 ] ; 5 uses
  %i.rvw = getelementptr inbounds nuw [4 x i8], ptr %i.rvm, i64 %index1685 ; 4 uses
  %i.rvx = getelementptr inbounds nuw i8, ptr %i.rvw, i64 32
  %i.rvy = getelementptr inbounds nuw i8, ptr %i.rvw, i64 64
  %i.rvz = getelementptr inbounds nuw i8, ptr %i.rvw, i64 96
  %wide.load1687 = load <8 x float>, ptr %i.rvw, align 4, !tbaa !12, !alias.scope !612, !noalias !611
  %wide.load1688 = load <8 x float>, ptr %i.rvx, align 4, !tbaa !12, !alias.scope !612, !noalias !611
  %wide.load1689 = load <8 x float>, ptr %i.rvy, align 4, !tbaa !12, !alias.scope !612, !noalias !611
  %wide.load1690 = load <8 x float>, ptr %i.rvz, align 4, !tbaa !12, !alias.scope !612, !noalias !611
  %i.rwa = shl nuw <8 x i64> %vec.ind1686, splat (i64 4)
  %step.add = shl <8 x i64> %vec.ind1686, splat (i64 4)
  %i.rwb = add <8 x i64> %step.add, splat (i64 128)
  %step.add.2 = shl <8 x i64> %vec.ind1686, splat (i64 4)
  %i.rwc = add <8 x i64> %step.add.2, splat (i64 256)
  %step.add.3 = shl <8 x i64> %vec.ind1686, splat (i64 4)
  %i.rwd = add <8 x i64> %step.add.3, splat (i64 384)
  %wide.gep1691 = getelementptr inbounds nuw i8, ptr %i.anw, <8 x i64> %i.rwa
  %wide.gep1692 = getelementptr inbounds nuw i8, ptr %i.anw, <8 x i64> %i.rwb
  %wide.gep1693 = getelementptr inbounds nuw i8, ptr %i.anw, <8 x i64> %i.rwc
  %wide.gep1694 = getelementptr inbounds nuw i8, ptr %i.anw, <8 x i64> %i.rwd
  %wide.gep1695 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1691, i64 12
  %wide.gep1696 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1692, i64 12
  %wide.gep1697 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1693, i64 12
  %wide.gep1698 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1694, i64 12
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load1687, <8 x ptr> align 4 %wide.gep1695, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !613, !noalias !614
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load1688, <8 x ptr> align 4 %wide.gep1696, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !613, !noalias !614
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load1689, <8 x ptr> align 4 %wide.gep1697, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !613, !noalias !614
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load1690, <8 x ptr> align 4 %wide.gep1698, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !613, !noalias !614
  %index.next1699 = add nuw i64 %index1685, 32    ; 2 uses
  %vec.ind.next1700 = add nuw <8 x i64> %vec.ind1686, splat (i64 32)
  %i.rwe = icmp eq i64 %index.next1699, %n.vec1683
  br i1 %i.rwe, label %middle.block1701, label %vector.body1684, !llvm.loop !437

middle.block1701:                                 ; preds = %vector.body1684
  %cmp.n1702 = icmp eq i64 %i.rvl, %n.vec1683
  br i1 %cmp.n1702, label %.sink.split.i, label %vec.epilog.iter.check1706

vec.epilog.iter.check1706:                        ; preds = %middle.block1701
  %min.epilog.iters.check1707 = icmp eq i64 %i.rvv, 0
  br i1 %min.epilog.iters.check1707, label %.lr.ph82.i.preheader, label %vec.epilog.ph1708, !prof !469

vec.epilog.ph1708:                                ; preds = %vector.main.loop.iter.check1680, %vec.epilog.iter.check1706
  %vec.epilog.resume.val1703 = phi i64 [ %n.vec1683, %vec.epilog.iter.check1706 ], [ 0, %vector.main.loop.iter.check1680 ] ; 2 uses
  %n.vec1709 = and i64 %i.rvl, 4611686018427387900 ; 3 uses
  %broadcast.splatinsert1710 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1703, i64 0
  %broadcast.splat1711 = shufflevector <4 x i64> %broadcast.splatinsert1710, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat1711, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1712

vec.epilog.vector.body1712:                       ; preds = %vec.epilog.vector.body1712, %vec.epilog.ph1708
  %index1713 = phi i64 [ %vec.epilog.resume.val1703, %vec.epilog.ph1708 ], [ %index.next1718, %vec.epilog.vector.body1712 ] ; 2 uses
  %vec.ind1714 = phi <4 x i64> [ %induction, %vec.epilog.ph1708 ], [ %vec.ind.next1719, %vec.epilog.vector.body1712 ] ; 2 uses
  %i.rwf = getelementptr inbounds nuw [4 x i8], ptr %i.rvm, i64 %index1713
  %wide.load1715 = load <4 x float>, ptr %i.rwf, align 4, !tbaa !12, !alias.scope !612, !noalias !611
  %i.rwg = shl nuw <4 x i64> %vec.ind1714, splat (i64 4)
  %wide.gep1716 = getelementptr inbounds nuw i8, ptr %i.anw, <4 x i64> %i.rwg
  %wide.gep1717 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep1716, i64 12
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %wide.load1715, <4 x ptr> align 4 %wide.gep1717, <4 x i1> splat (i1 true)), !tbaa !12, !alias.scope !613, !noalias !614
  %index.next1718 = add nuw i64 %index1713, 4     ; 2 uses
  %vec.ind.next1719 = add nuw nsw <4 x i64> %vec.ind1714, splat (i64 4)
  %i.rwh = icmp eq i64 %index.next1718, %n.vec1709
  br i1 %i.rwh, label %vec.epilog.middle.block1720, label %vec.epilog.vector.body1712, !llvm.loop !438

vec.epilog.middle.block1720:                      ; preds = %vec.epilog.vector.body1712
  %cmp.n1721 = icmp eq i64 %i.rvl, %n.vec1709
  br i1 %cmp.n1721, label %.sink.split.i, label %.lr.ph82.i.preheader

.lr.ph82.i.preheader:                             ; preds = %vector.memcheck1671, %iter.check1704, %vec.epilog.iter.check1706, %vec.epilog.middle.block1720
  %.07381.i.ph = phi i64 [ 0, %iter.check1704 ], [ 0, %vector.memcheck1671 ], [ %n.vec1683, %vec.epilog.iter.check1706 ], [ %n.vec1709, %vec.epilog.middle.block1720 ] ; 4 uses
  %i.rwi = sub nsw i64 %i.rvl, %.07381.i.ph
  %xtraiter4812 = and i64 %i.rwi, 7               ; 2 uses
  %lcmp.mod4813.not = icmp eq i64 %xtraiter4812, 0
  br i1 %lcmp.mod4813.not, label %.lr.ph82.i.prol.loopexit, label %.lr.ph82.i.prol

.lr.ph82.i.prol:                                  ; preds = %.lr.ph82.i.preheader, %.lr.ph82.i.prol
  %.07381.i.prol = phi i64 [ %i.rwn, %.lr.ph82.i.prol ], [ %.07381.i.ph, %.lr.ph82.i.preheader ] ; 3 uses
  %prol.iter4814 = phi i64 [ %prol.iter4814.next, %.lr.ph82.i.prol ], [ 0, %.lr.ph82.i.preheader ]
  %i.rwj = getelementptr inbounds nuw [4 x i8], ptr %i.rvm, i64 %.07381.i.prol
  %i.rwk = load float, ptr %i.rwj, align 4, !tbaa !12, !noalias !611
  %.idx.i616.prol = shl nuw i64 %.07381.i.prol, 4
  %i.rwl = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i616.prol
  %i.rwm = getelementptr inbounds nuw i8, ptr %i.rwl, i64 12
  store float %i.rwk, ptr %i.rwm, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.rwn = add nuw nsw i64 %.07381.i.prol, 1      ; 2 uses
  %prol.iter4814.next = add i64 %prol.iter4814, 1 ; 2 uses
  %prol.iter4814.cmp.not = icmp eq i64 %prol.iter4814.next, %xtraiter4812
  br i1 %prol.iter4814.cmp.not, label %.lr.ph82.i.prol.loopexit, label %.lr.ph82.i.prol, !llvm.loop !439

.lr.ph82.i.prol.loopexit:                         ; preds = %.lr.ph82.i.prol, %.lr.ph82.i.preheader
  %.07381.i.unr = phi i64 [ %.07381.i.ph, %.lr.ph82.i.preheader ], [ %i.rwn, %.lr.ph82.i.prol ]
  %i.rwo = sub nsw i64 %.07381.i.ph, %i.rvl
  %i.rwp = icmp ugt i64 %i.rwo, -8
  br i1 %i.rwp, label %.sink.split.i, label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %.lr.ph82.i.prol.loopexit, %.lr.ph82.i
  %.07381.i = phi i64 [ %i.ryd, %.lr.ph82.i ], [ %.07381.i.unr, %.lr.ph82.i.prol.loopexit ] ; 10 uses
  %i.rwq = getelementptr inbounds nuw [4 x i8], ptr %i.rvm, i64 %.07381.i
  %i.rwr = load float, ptr %i.rwq, align 4, !tbaa !12, !noalias !611
  %.idx.i616 = shl nuw i64 %.07381.i, 4
  %i.rws = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i616
  %i.rwt = getelementptr inbounds nuw i8, ptr %i.rws, i64 12
  store float %i.rwr, ptr %i.rwt, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.rwu = add nuw nsw i64 %.07381.i, 1           ; 2 uses
  %i.rwv = getelementptr inbounds nuw [4 x i8], ptr %i.rvm, i64 %i.rwu
  %i.rww = load float, ptr %i.rwv, align 4, !tbaa !12, !noalias !611
  %.idx.i616.1 = shl nuw i64 %i.rwu, 4
  %i.rwx = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i616.1
  %i.rwy = getelementptr inbounds nuw i8, ptr %i.rwx, i64 12
  store float %i.rww, ptr %i.rwy, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.rwz = add nuw nsw i64 %.07381.i, 2           ; 2 uses
  %i.rxa = getelementptr inbounds nuw [4 x i8], ptr %i.rvm, i64 %i.rwz
  %i.rxb = load float, ptr %i.rxa, align 4, !tbaa !12, !noalias !611
  %.idx.i616.2 = shl nuw i64 %i.rwz, 4
  %i.rxc = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i616.2
  %i.rxd = getelementptr inbounds nuw i8, ptr %i.rxc, i64 12
  store float %i.rxb, ptr %i.rxd, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.rxe = add nuw nsw i64 %.07381.i, 3           ; 2 uses
  %i.rxf = getelementptr inbounds nuw [4 x i8], ptr %i.rvm, i64 %i.rxe
  %i.rxg = load float, ptr %i.rxf, align 4, !tbaa !12, !noalias !611
  %.idx.i616.3 = shl nuw i64 %i.rxe, 4
  %i.rxh = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i616.3
  %i.rxi = getelementptr inbounds nuw i8, ptr %i.rxh, i64 12
  store float %i.rxg, ptr %i.rxi, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.rxj = add nuw nsw i64 %.07381.i, 4           ; 2 uses
  %i.rxk = getelementptr inbounds nuw [4 x i8], ptr %i.rvm, i64 %i.rxj
  %i.rxl = load float, ptr %i.rxk, align 4, !tbaa !12, !noalias !611
  %.idx.i616.4 = shl nuw i64 %i.rxj, 4
  %i.rxm = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i616.4
  %i.rxn = getelementptr inbounds nuw i8, ptr %i.rxm, i64 12
  store float %i.rxl, ptr %i.rxn, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.rxo = add nuw nsw i64 %.07381.i, 5           ; 2 uses
  %i.rxp = getelementptr inbounds nuw [4 x i8], ptr %i.rvm, i64 %i.rxo
  %i.rxq = load float, ptr %i.rxp, align 4, !tbaa !12, !noalias !611
  %.idx.i616.5 = shl nuw i64 %i.rxo, 4
  %i.rxr = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i616.5
  %i.rxs = getelementptr inbounds nuw i8, ptr %i.rxr, i64 12
  store float %i.rxq, ptr %i.rxs, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.rxt = add nuw nsw i64 %.07381.i, 6           ; 2 uses
  %i.rxu = getelementptr inbounds nuw [4 x i8], ptr %i.rvm, i64 %i.rxt
  %i.rxv = load float, ptr %i.rxu, align 4, !tbaa !12, !noalias !611
  %.idx.i616.6 = shl nuw i64 %i.rxt, 4
  %i.rxw = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i616.6
  %i.rxx = getelementptr inbounds nuw i8, ptr %i.rxw, i64 12
  store float %i.rxv, ptr %i.rxx, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.rxy = add nuw nsw i64 %.07381.i, 7           ; 2 uses
  %i.rxz = getelementptr inbounds nuw [4 x i8], ptr %i.rvm, i64 %i.rxy
  %i.rya = load float, ptr %i.rxz, align 4, !tbaa !12, !noalias !611
  %.idx.i616.7 = shl nuw i64 %i.rxy, 4
  %i.ryb = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx.i616.7
  %i.ryc = getelementptr inbounds nuw i8, ptr %i.ryb, i64 12
  store float %i.rya, ptr %i.ryc, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.ryd = add nuw nsw i64 %.07381.i, 8           ; 2 uses
  %exitcond86.not.i.7 = icmp eq i64 %i.ryd, %i.rvl
  br i1 %exitcond86.not.i.7, label %.sink.split.i, label %.lr.ph82.i, !llvm.loop !440

bb.se:                                            ; preds = %bb.sd
  %i.rye = shl i64 %i.rvn, 2
  %i.ryf = tail call ptr @dt_alloc_aligned(i64 noundef %i.rye) #27, !noalias !611 ; 11 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ryf, i64 64) ]
  %.not.i612 = icmp eq ptr %i.ryf, null
  br i1 %.not.i612, label %.sink.split.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.se
  tail call fastcc void @vng_interpolate(ptr noundef %i.ryf, ptr noundef readonly %i.axt, i32 noundef %i.bo, i32 noundef %i.axj, i32 noundef %.fr1063, ptr noundef nonnull readonly %i.x, i32 noundef 1)
  tail call fastcc void @color_smoothing(ptr noundef %i.ryf, i32 noundef %i.bo, i32 noundef %i.axj, i32 noundef 2), !noalias !611
  %min.iters.check1735 = icmp samesign ult i64 %i.rvl, 5
  br i1 %min.iters.check1735, label %.lr.ph.i613.preheader, label %vector.memcheck1723

.lr.ph.i613.preheader:                            ; preds = %vector.body1738, %vector.memcheck1723, %.lr.ph.preheader.i
  %.07280.i.ph = phi i64 [ 0, %vector.memcheck1723 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec1737, %vector.body1738 ]
  br label %.lr.ph.i613

vector.memcheck1723:                              ; preds = %.lr.ph.preheader.i
  %i.ryg = mul i64 %i.ats, %i.rvk                 ; 2 uses
  %scevgep1724 = getelementptr i8, ptr %i.anw, i64 %i.ryg ; 2 uses
  %i.ryh = mul nuw i64 %i.att, %i.rvk
  %scevgep1725 = getelementptr i8, ptr %i.rvm, i64 %i.ryh
  %scevgep1726 = getelementptr i8, ptr %i.ryf, i64 -4
  %scevgep1727 = getelementptr i8, ptr %scevgep1726, i64 %i.ryg
  %bound01728 = icmp ult ptr %i.anw, %scevgep1725
  %bound11729 = icmp ult ptr %i.rvm, %scevgep1724
  %found.conflict1730 = and i1 %bound01728, %bound11729
  %bound01731 = icmp ult ptr %i.anw, %scevgep1727
  %bound11732 = icmp ult ptr %i.ryf, %scevgep1724
  %found.conflict1733 = and i1 %bound01731, %bound11732
  %conflict.rdx = or i1 %found.conflict1730, %found.conflict1733
  br i1 %conflict.rdx, label %.lr.ph.i613.preheader, label %vector.ph1736

vector.ph1736:                                    ; preds = %vector.memcheck1723
  %i.ryi = and i64 %i.rvl, 3                      ; 2 uses
  %i.ryj = icmp eq i64 %i.ryi, 0
  %i.ryk = select i1 %i.ryj, i64 4, i64 %i.ryi
  %n.vec1737 = sub nsw i64 %i.rvl, %i.ryk         ; 2 uses
  br label %vector.body1738

vector.body1738:                                  ; preds = %vector.body1738, %vector.ph1736
  %index1739 = phi i64 [ 0, %vector.ph1736 ], [ %index.next1751, %vector.body1738 ] ; 3 uses
  %i.ryl = shl nuw i64 %index1739, 2              ; 2 uses
  %i.rym = getelementptr inbounds nuw [4 x i8], ptr %i.rvm, i64 %index1739 ; 2 uses
  %wide.load1740 = load <4 x float>, ptr %i.rym, align 4, !tbaa !12, !alias.scope !615, !noalias !611
  %i.ryn = getelementptr inbounds nuw [4 x i8], ptr %i.anw, i64 %i.ryl ; 2 uses
  %wide.vec1741 = load <16 x float>, ptr %i.ryn, align 4, !tbaa !12, !alias.scope !609, !noalias !611 ; 3 uses
  %strided.vec1742 = shufflevector <16 x float> %wide.vec1741, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1743 = shufflevector <16 x float> %wide.vec1741, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1744 = shufflevector <16 x float> %wide.vec1741, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.ryo = getelementptr inbounds nuw [4 x i8], ptr %i.ryf, i64 %i.ryl
  %wide.vec1745 = load <16 x float>, ptr %i.ryo, align 64, !tbaa !12, !alias.scope !616, !noalias !611 ; 3 uses
  %strided.vec1746 = shufflevector <16 x float> %wide.vec1745, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec1747 = shufflevector <16 x float> %wide.vec1745, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec1748 = shufflevector <16 x float> %wide.vec1745, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %i.ryp = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec1742, %strided.vec1746
  %i.ryq = fmul reassoc nsz arcp contract afn <4 x float> %i.ryp, %wide.load1740
  %i.ryr = fadd reassoc nsz arcp contract afn <4 x float> %i.ryq, %strided.vec1746
  %wide.load1749 = load <4 x float>, ptr %i.rym, align 4, !tbaa !12, !alias.scope !615, !noalias !611 ; 2 uses
  %i.rys = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec1743, %strided.vec1747
  %i.ryt = fmul reassoc nsz arcp contract afn <4 x float> %i.rys, %wide.load1749
  %i.ryu = fadd reassoc nsz arcp contract afn <4 x float> %i.ryt, %strided.vec1747
  %i.ryv = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec1744, %strided.vec1748
  %i.ryw = fmul reassoc nsz arcp contract afn <4 x float> %i.ryv, %wide.load1749
  %i.ryx = fadd reassoc nsz arcp contract afn <4 x float> %i.ryw, %strided.vec1748
  %i.ryy = shufflevector <4 x float> %i.ryr, <4 x float> %i.ryu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ryz = shufflevector <4 x float> %i.ryx, <4 x float> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ryy, <8 x float> %i.ryz, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ryn, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %index.next1751 = add nuw i64 %index1739, 4     ; 2 uses
  %i.rza = icmp eq i64 %index.next1751, %n.vec1737
  br i1 %i.rza, label %.lr.ph.i613.preheader, label %vector.body1738, !llvm.loop !444

._crit_edge.i615:                                 ; preds = %.lr.ph.i613
  tail call void @free(ptr noundef nonnull %i.ryf) #27, !noalias !611
  br label %.sink.split.i

.lr.ph.i613:                                      ; preds = %.lr.ph.i613.preheader, %.lr.ph.i613
  %.07280.i = phi i64 [ %i.sae, %.lr.ph.i613 ], [ %.07280.i.ph, %.lr.ph.i613.preheader ] ; 3 uses
  %i.rzb = shl nuw i64 %.07280.i, 2               ; 4 uses
  %i.rzc = getelementptr inbounds nuw [4 x i8], ptr %i.rvm, i64 %.07280.i ; 3 uses
  %i.rzd = load float, ptr %i.rzc, align 4, !tbaa !12, !noalias !611
  %i.rze = getelementptr inbounds nuw [4 x i8], ptr %i.anw, i64 %i.rzb ; 3 uses
  %i.rzf = load float, ptr %i.rze, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.rzg = getelementptr inbounds nuw [4 x i8], ptr %i.ryf, i64 %i.rzb
  %i.rzh = load float, ptr %i.rzg, align 16, !tbaa !12, !noalias !611 ; 2 uses
  %i.rzi = fsub reassoc nsz arcp contract afn float %i.rzf, %i.rzh
  %i.rzj = fmul reassoc nsz arcp contract afn float %i.rzi, %i.rzd
  %i.rzk = fadd reassoc nsz arcp contract afn float %i.rzj, %i.rzh
  store float %i.rzk, ptr %i.rze, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.rzl = load float, ptr %i.rzc, align 4, !tbaa !12, !noalias !611
  %i.rzm = or disjoint i64 %i.rzb, 1              ; 2 uses
  %i.rzn = getelementptr inbounds nuw [4 x i8], ptr %i.anw, i64 %i.rzm ; 2 uses
  %i.rzo = load float, ptr %i.rzn, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.rzp = getelementptr inbounds nuw [4 x i8], ptr %i.ryf, i64 %i.rzm
  %i.rzq = load float, ptr %i.rzp, align 4, !tbaa !12, !noalias !611 ; 2 uses
  %i.rzr = fsub reassoc nsz arcp contract afn float %i.rzo, %i.rzq
  %i.rzs = fmul reassoc nsz arcp contract afn float %i.rzr, %i.rzl
  %i.rzt = fadd reassoc nsz arcp contract afn float %i.rzs, %i.rzq
  store float %i.rzt, ptr %i.rzn, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.rzu = load float, ptr %i.rzc, align 4, !tbaa !12, !noalias !611
  %i.rzv = or disjoint i64 %i.rzb, 2              ; 2 uses
  %i.rzw = getelementptr inbounds nuw [4 x i8], ptr %i.anw, i64 %i.rzv ; 2 uses
  %i.rzx = load float, ptr %i.rzw, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.rzy = getelementptr inbounds nuw [4 x i8], ptr %i.ryf, i64 %i.rzv
  %i.rzz = load float, ptr %i.rzy, align 8, !tbaa !12, !noalias !611 ; 2 uses
  %i.saa = fsub reassoc nsz arcp contract afn float %i.rzx, %i.rzz
  %i.sab = fmul reassoc nsz arcp contract afn float %i.saa, %i.rzu
  %i.sac = fadd reassoc nsz arcp contract afn float %i.sab, %i.rzz
  store float %i.sac, ptr %i.rzw, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.sad = getelementptr inbounds nuw i8, ptr %i.rze, i64 12
  store float 0.000000e+00, ptr %i.sad, align 4, !tbaa !12, !alias.scope !609, !noalias !611
  %i.sae = add nuw nsw i64 %.07280.i, 1           ; 2 uses
  %exitcond.not.i614 = icmp eq i64 %i.sae, %i.rvl
  br i1 %exitcond.not.i614, label %._crit_edge.i615, label %.lr.ph.i613, !llvm.loop !445

.sink.split.i:                                    ; preds = %.lr.ph82.i.prol.loopexit, %.lr.ph82.i, %middle.block1701, %vec.epilog.middle.block1720, %._crit_edge.i615, %bb.se, %bb.sc
  tail call void @free(ptr noundef %i.rvm) #27, !noalias !611
  tail call void @free(ptr noundef %i.rvo) #27, !noalias !611
  br label %dual_demosaic.exit

dual_demosaic.exit:                               ; preds = %.sink.split.i, %bb.sb, %_capture_sharpen.exit
  br i1 %.not75.i, label %bb.sf, label %bb.sg

bb.sf:                                            ; preds = %dual_demosaic.exit
  %i.saf = mul i32 %i.aow, %i.axd
  %i.sag = sext i32 %i.saf to i64
  %i.sah = getelementptr inbounds [4 x i8], ptr %i.ane, i64 %i.sag
  %i.sai = mul i32 %i.aow, %i.axl
  %i.saj = sext i32 %i.sai to i64
  %i.sak = getelementptr inbounds [4 x i8], ptr %i.anw, i64 %i.saj
  %i.sal = mul nsw i32 %i.aow, %i.axm
  %i.sam = sext i32 %i.sal to i64
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.sah, ptr noundef nonnull %i.sak, i64 noundef %i.sam) #27
  br label %bb.sg

bb.sg:                                            ; preds = %dual_demosaic.exit, %bb.sf, %bb.hc
  %indvars.iv.next1242 = add nuw nsw i64 %indvars.iv1241, 1 ; 2 uses
  %exitcond1244.not = icmp eq i64 %indvars.iv.next1242, %wide.trip.count
  br i1 %exitcond1244.not, label %._crit_edge, label %bb.hc

bb.sh:                                            ; preds = %._crit_edge
  tail call void @free(ptr noundef %i.anw) #27
  br label %bb.si

bb.si:                                            ; preds = %bb.sh, %._crit_edge
  tail call void @free(ptr noundef %.0387) #27
  %i.san = getelementptr inbounds nuw i8, ptr %i.s, i64 552
  %i.sao = load i32, ptr %i.san, align 8, !tbaa !456
  %.not425 = icmp eq i32 %i.sao, 0
  br i1 %.not425, label %bb.sk, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.sap = tail call i32 @dt_dev_write_scharr_mask(ptr noundef %1, ptr noundef nonnull %i.ane, ptr noundef %4, i32 noundef 1) #27 ; 0 uses
  br label %bb.sk

bb.sk:                                            ; preds = %bb.sj, %bb.si
  %i.saq = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.sar = load i32, ptr %i.saq, align 4, !tbaa !146 ; 2 uses
  %i.sas = icmp eq i32 %i.sar, 0
  %or.cond33.not428 = select i1 %i.sas, i1 true, i1 %i.cw
  %or.cond35 = select i1 %or.cond33.not428, i1 true, i1 %i.v
  br i1 %or.cond35, label %bb.sm, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  tail call fastcc void @color_smoothing(ptr noundef %i.ane, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %i.sar)
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sl, %bb.sk
  br i1 %i.dn, label %bb.so, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  tail call void @dt_iop_clip_and_zoom_roi(ptr noundef %3, ptr noundef nonnull %i.ane, ptr noundef %5, ptr noundef %4) #27
  tail call void @free(ptr noundef %i.ane) #27
  br label %bb.so

bb.so:                                            ; preds = %bb.go, %bb.sm, %bb.sn, %bb.hb, %bb.t, %bb.w, %bb.v
  ret void
}

declare void @dt_dev_clear_scharr_mask(ptr noundef) local_unnamed_addr #3

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @dt_iop_clip_and_zoom_demosaic_passthrough_monochrome_f(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_iop_clip_and_zoom_demosaic_third_size_xtrans_f(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_iop_clip_and_zoom_demosaic_half_size_f(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @green_equilibration_favg(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 1                            ; 2 uses
  %.not.not.not = icmp eq i32 %i.a, 0
  %spec.select = select i1 %.not.not.not, i32 -1, i32 1 ; 3 uses
  %spec.select58 = xor i32 %i.a, 1                ; 3 uses
  %i.b = sext i32 %2 to i64                       ; 5 uses
  %i.c = sext i32 %3 to i64
  %i.d = mul nsw i64 %i.c, %i.b
  tail call void @dt_iop_image_copy(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.d) #27
  %i.e = add nsw i32 %3, -1                       ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.a
  %i.g = zext nneg i32 %spec.select58 to i64      ; 4 uses
  %i.h = xor i32 %spec.select, -1
  %i.i = add i32 %2, %i.h                         ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp ult i32 %spec.select58, %i.i
  %i.l = sext i32 %spec.select to i64
  %invariant.gep73 = getelementptr [4 x i8], ptr %1, i64 %i.l
  br i1 %i.k, label %.lr.ph.us, label %.lr.ph68.split

.lr.ph.us:                                        ; preds = %.lr.ph68, %._crit_edge.us
  %.05366.us = phi i64 [ %i.ab, %._crit_edge.us ], [ 0, %.lr.ph68 ] ; 3 uses
  %i.m = phi <2 x double> [ %i.y, %._crit_edge.us ], [ zeroinitializer, %.lr.ph68 ]
  %i.n = mul i64 %.05366.us, %i.b
  %i.o = getelementptr [4 x i8], ptr %1, i64 %i.n
  %i.p = or disjoint i64 %.05366.us, 1
  %i.q = mul i64 %i.p, %i.b
  %gep74.us = getelementptr [4 x i8], ptr %invariant.gep73, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %.05262.us = phi i64 [ %i.g, %.lr.ph.us ], [ %i.z, %bb.b ] ; 3 uses
  %i.r = phi <2 x double> [ %i.m, %.lr.ph.us ], [ %i.y, %bb.b ]
  %i.s = getelementptr [4 x i8], ptr %i.o, i64 %.05262.us
  %i.t = load float, ptr %i.s, align 4, !tbaa !12
  %gep.us = getelementptr [4 x i8], ptr %gep74.us, i64 %.05262.us
  %i.u = load float, ptr %gep.us, align 4, !tbaa !12
  %i.v = insertelement <2 x float> poison, float %i.u, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.t, i64 1
  %i.x = fpext <2 x float> %i.w to <2 x double>
  %i.y = fadd reassoc nsz arcp contract afn <2 x double> %i.r, %i.x ; 7 uses
  %i.z = add i64 %.05262.us, 2                    ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %bb.b, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.b
  %i.ab = add i64 %.05366.us, 2                   ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.f
  br i1 %i.ac, label %.lr.ph.us, label %._crit_edge69

._crit_edge69:                                    ; preds = %._crit_edge.us
  %i.ad = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.y, zeroinitializer ; 2 uses
  %i.ae = extractelement <2 x i1> %i.ad, i64 0
  %i.af = extractelement <2 x i1> %i.ad, i64 1
  %or.cond = select i1 %i.af, i1 %i.ae, i1 false
  %i.ag = icmp sgt i32 %3, 1
  %or.cond93 = and i1 %or.cond, %i.ag
  br i1 %or.cond93, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %._crit_edge69
  %i.ah = xor i32 %spec.select, -1
  %i.ai = add i32 %2, %i.ah                       ; 2 uses
  %i.aj = icmp slt i32 %spec.select58, %i.ai
  br i1 %i.aj, label %.preheader.preheader, label %.loopexit
end_hunk_0
