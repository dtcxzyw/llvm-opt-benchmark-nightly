Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 136
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 156
begin_hunk_0_@process:bb.a
bb.rk:                                            ; preds = %_cs_precalc_gauss_idx.exit.i, %.thread1.i
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.213, ptr noundef %.val452, ptr noundef nonnull %0, i32 noundef -1, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.214) #27
  br label %.thread12.i

.thread12.i:                                      ; preds = %.lr.ph30.i, %.loopexit.i592, %.lr.ph28.i, %middle.block1979, %middle.block1894, %middle.block1820, %vec.epilog.middle.block1841, %bb.rk, %.preheader.i591, %.preheader20.i, %.preheader22.i
  %.017015.i = phi ptr [ null, %bb.rk ], [ %i.pxk, %.preheader.i591 ], [ %i.pxk, %.preheader20.i ], [ null, %.preheader22.i ], [ null, %middle.block1820 ], [ %i.pxk, %middle.block1894 ], [ %i.pxk, %middle.block1979 ], [ null, %vec.epilog.middle.block1841 ], [ %i.pxk, %.loopexit.i592 ], [ null, %.lr.ph28.i ], [ %i.pxk, %.lr.ph30.i ]
  tail call void @free(ptr noundef %.017015.i) #27
  tail call void @free(ptr noundef %i.pgn) #27
  tail call void @free(ptr noundef %i.pgo) #27
  tail call void @free(ptr noundef %i.pgm) #27
  tail call void @free(ptr noundef %i.pgp) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_capture_sharpen.exit

_capture_sharpen.exit:                            ; preds = %.thread12.i, %bb.qd, %bb.qc, %demosaic_box3.exit
  br i1 %spec.select432.not, label %dual_demosaic.exit, label %bb.rl

bb.rl:                                            ; preds = %_capture_sharpen.exit
  %i.rgp = load float, ptr %i.atj, align 8, !tbaa !599 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.rgq = icmp slt i32 %i.awp, 16
  %or.cond.i611 = or i1 %i.br, %i.rgq
  %or.cond.i611.not = xor i1 %or.cond.i611, true
  %i.rgr = fcmp reassoc nsz arcp contract afn ugt float %i.rgp, 0.000000e+00
  %or.cond3.i612 = or i1 %i.atk, %i.rgr
  %or.cond = select i1 %or.cond.i611.not, i1 %or.cond3.i612, i1 false
  br i1 %or.cond, label %bb.rm, label %dual_demosaic.exit

bb.rm:                                            ; preds = %bb.rl
  %i.rgs = load ptr, ptr %i.r, align 8, !tbaa !439, !noalias !601
  %i.rgt = zext nneg i32 %i.awp to i64            ; 4 uses
  %i.rgu = mul nuw nsw i64 %i.rgt, %i.aob         ; 13 uses
  %i.rgv = tail call ptr @dt_masks_calc_scharr_mask(ptr noundef %i.rgs, ptr noundef nonnull %i.anu, i32 noundef %i.bo, i32 noundef %i.awp, i32 noundef 1) #27, !noalias !602 ; 13 uses
  %i.rgw = mul nuw i64 %i.atl, %i.rgt             ; 2 uses
  %i.rgx = tail call ptr @dt_alloc_aligned(i64 noundef %i.rgw) #27, !noalias !602 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.rgx, i64 64) ]
  %i.rgy = icmp ne ptr %i.rgv, null
  %i.rgz = icmp ne ptr %i.rgx, null
  %or.cond5.i613 = select i1 %i.rgy, i1 %i.rgz, i1 false
  br i1 %or.cond5.i613, label %bb.rn, label %.sink.split.i

bb.rn:                                            ; preds = %bb.rm
  %i.rha = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.rgp, float 1.100000e+00)
  %i.rhb = fmul reassoc nsz arcp contract afn float %i.rha, 5.000000e-03
  tail call void @dt_masks_calc_detail_blend(ptr noundef nonnull %i.rgv, ptr noundef nonnull %i.rgx, i64 noundef %i.rgu, float noundef %i.rhb, i32 noundef 1) #27, !noalias !602
  tail call void @dt_gaussian_fast_blur(ptr noundef nonnull %i.rgx, ptr noundef nonnull %i.rgv, i32 noundef %i.bo, i32 noundef %i.awp, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 1) #27, !noalias !602
  br i1 %i.atk, label %iter.check1725, label %bb.ro

iter.check1725:                                   ; preds = %bb.rn
  %min.iters.check1697 = icmp samesign ult i64 %i.rgu, 4
  br i1 %min.iters.check1697, label %.lr.ph82.i.preheader, label %vector.memcheck1698

vector.memcheck1698:                              ; preds = %iter.check1725
  %i.rhc = mul nuw nsw i64 %i.rgt, %i.aob         ; 2 uses
  %i.rhd = shl i64 %i.rhc, 4
  %i.rhe = getelementptr i8, ptr %i.anu, i64 %i.rhd
  %i.rhf = shl nuw i64 %i.rhc, 2
  %i.rhg = getelementptr i8, ptr %i.rgv, i64 %i.rhf
  %bound01699 = icmp ult ptr %scevgep1695, %i.rhg
  %bound11700 = icmp ult ptr %i.rgv, %i.rhe
  %found.conflict1701 = and i1 %bound01699, %bound11700
  br i1 %found.conflict1701, label %.lr.ph82.i.preheader, label %vector.main.loop.iter.check1702

vector.main.loop.iter.check1702:                  ; preds = %vector.memcheck1698
  %min.iters.check1703 = icmp samesign ult i64 %i.rgu, 32
  br i1 %min.iters.check1703, label %vec.epilog.ph1729, label %vector.ph1704

vector.ph1704:                                    ; preds = %vector.main.loop.iter.check1702
  %i.rhh = and i64 %i.rgu, 28
  %n.vec1705 = and i64 %i.rgu, 4611686018427387872 ; 4 uses
  br label %vector.body1706

vector.body1706:                                  ; preds = %vector.ph1704, %vector.body1706
  %index1707 = phi i64 [ 0, %vector.ph1704 ], [ %index.next1721, %vector.body1706 ] ; 2 uses
  %vec.ind1708 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1704 ], [ %vec.ind.next1722, %vector.body1706 ] ; 5 uses
  %i.rhi = getelementptr inbounds nuw [4 x i8], ptr %i.rgv, i64 %index1707 ; 4 uses
  %i.rhj = getelementptr inbounds nuw i8, ptr %i.rhi, i64 32
  %i.rhk = getelementptr inbounds nuw i8, ptr %i.rhi, i64 64
  %i.rhl = getelementptr inbounds nuw i8, ptr %i.rhi, i64 96
  %wide.load1709 = load <8 x float>, ptr %i.rhi, align 4, !tbaa !12, !alias.scope !603, !noalias !602
  %wide.load1710 = load <8 x float>, ptr %i.rhj, align 4, !tbaa !12, !alias.scope !603, !noalias !602
  %wide.load1711 = load <8 x float>, ptr %i.rhk, align 4, !tbaa !12, !alias.scope !603, !noalias !602
  %wide.load1712 = load <8 x float>, ptr %i.rhl, align 4, !tbaa !12, !alias.scope !603, !noalias !602
  %i.rhm = shl nuw <8 x i64> %vec.ind1708, splat (i64 4)
  %step.add = shl <8 x i64> %vec.ind1708, splat (i64 4)
  %i.rhn = add <8 x i64> %step.add, splat (i64 128)
  %step.add.2 = shl <8 x i64> %vec.ind1708, splat (i64 4)
  %i.rho = add <8 x i64> %step.add.2, splat (i64 256)
  %step.add.3 = shl <8 x i64> %vec.ind1708, splat (i64 4)
  %i.rhp = add <8 x i64> %step.add.3, splat (i64 384)
  %wide.gep1713 = getelementptr inbounds nuw i8, ptr %i.anu, <8 x i64> %i.rhm
  %wide.gep1714 = getelementptr inbounds nuw i8, ptr %i.anu, <8 x i64> %i.rhn
  %wide.gep1715 = getelementptr inbounds nuw i8, ptr %i.anu, <8 x i64> %i.rho
  %wide.gep1716 = getelementptr inbounds nuw i8, ptr %i.anu, <8 x i64> %i.rhp
  %wide.gep1717 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1713, i64 12
  %wide.gep1718 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1714, i64 12
  %wide.gep1719 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1715, i64 12
  %wide.gep1720 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1716, i64 12
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load1709, <8 x ptr> align 4 %wide.gep1717, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !604, !noalias !603
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load1710, <8 x ptr> align 4 %wide.gep1718, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !604, !noalias !603
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load1711, <8 x ptr> align 4 %wide.gep1719, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !604, !noalias !603
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load1712, <8 x ptr> align 4 %wide.gep1720, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !604, !noalias !603
  %index.next1721 = add nuw i64 %index1707, 32    ; 2 uses
  %vec.ind.next1722 = add nuw <8 x i64> %vec.ind1708, splat (i64 32)
  %i.rhq = icmp eq i64 %index.next1721, %n.vec1705
  br i1 %i.rhq, label %middle.block1723, label %vector.body1706, !llvm.loop !431

middle.block1723:                                 ; preds = %vector.body1706
  %cmp.n1724 = icmp eq i64 %i.rgu, %n.vec1705
  br i1 %cmp.n1724, label %.sink.split.i, label %vec.epilog.iter.check1726

vec.epilog.iter.check1726:                        ; preds = %middle.block1723
  %min.epilog.iters.check1728 = icmp eq i64 %i.rhh, 0
  br i1 %min.epilog.iters.check1728, label %.lr.ph82.i.preheader, label %vec.epilog.ph1729, !prof !462

vec.epilog.ph1729:                                ; preds = %vector.main.loop.iter.check1702, %vec.epilog.iter.check1726
  %vec.epilog.resume.val1730 = phi i64 [ %n.vec1705, %vec.epilog.iter.check1726 ], [ 0, %vector.main.loop.iter.check1702 ] ; 2 uses
  %n.vec1731 = and i64 %i.rgu, 4611686018427387900 ; 3 uses
  %broadcast.splatinsert1732 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1730, i64 0
  %broadcast.splat1733 = shufflevector <4 x i64> %broadcast.splatinsert1732, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat1733, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1734

vec.epilog.vector.body1734:                       ; preds = %vec.epilog.vector.body1734, %vec.epilog.ph1729
  %index1735 = phi i64 [ %vec.epilog.resume.val1730, %vec.epilog.ph1729 ], [ %index.next1740, %vec.epilog.vector.body1734 ] ; 2 uses
  %vec.ind1736 = phi <4 x i64> [ %induction, %vec.epilog.ph1729 ], [ %vec.ind.next1741, %vec.epilog.vector.body1734 ] ; 2 uses
  %i.rhr = getelementptr inbounds nuw [4 x i8], ptr %i.rgv, i64 %index1735
  %wide.load1737 = load <4 x float>, ptr %i.rhr, align 4, !tbaa !12, !alias.scope !603, !noalias !602
  %i.rhs = shl nuw <4 x i64> %vec.ind1736, splat (i64 4)
  %wide.gep1738 = getelementptr inbounds nuw i8, ptr %i.anu, <4 x i64> %i.rhs
  %wide.gep1739 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep1738, i64 12
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %wide.load1737, <4 x ptr> align 4 %wide.gep1739, <4 x i1> splat (i1 true)), !tbaa !12, !alias.scope !604, !noalias !603
  %index.next1740 = add nuw i64 %index1735, 4     ; 2 uses
  %vec.ind.next1741 = add nuw nsw <4 x i64> %vec.ind1736, splat (i64 4)
  %i.rht = icmp eq i64 %index.next1740, %n.vec1731
  br i1 %i.rht, label %vec.epilog.middle.block1742, label %vec.epilog.vector.body1734, !llvm.loop !432

vec.epilog.middle.block1742:                      ; preds = %vec.epilog.vector.body1734
  %cmp.n1743 = icmp eq i64 %i.rgu, %n.vec1731
  br i1 %cmp.n1743, label %.sink.split.i, label %.lr.ph82.i.preheader

.lr.ph82.i.preheader:                             ; preds = %iter.check1725, %vector.memcheck1698, %vec.epilog.iter.check1726, %vec.epilog.middle.block1742
  %.07381.i.ph = phi i64 [ 0, %iter.check1725 ], [ 0, %vector.memcheck1698 ], [ %n.vec1705, %vec.epilog.iter.check1726 ], [ %n.vec1731, %vec.epilog.middle.block1742 ]
  br label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %.lr.ph82.i.preheader, %.lr.ph82.i
  %.07381.i = phi i64 [ %i.rhy, %.lr.ph82.i ], [ %.07381.i.ph, %.lr.ph82.i.preheader ] ; 3 uses
  %i.rhu = getelementptr inbounds nuw [4 x i8], ptr %i.rgv, i64 %.07381.i
  %i.rhv = load float, ptr %i.rhu, align 4, !tbaa !12, !noalias !602
  %.idx.i618 = shl nuw i64 %.07381.i, 4
  %i.rhw = getelementptr inbounds nuw i8, ptr %i.anu, i64 %.idx.i618
  %i.rhx = getelementptr inbounds nuw i8, ptr %i.rhw, i64 12
  store float %i.rhv, ptr %i.rhx, align 4, !tbaa !12, !alias.scope !600
  %i.rhy = add nuw nsw i64 %.07381.i, 1           ; 2 uses
  %exitcond86.not.i = icmp eq i64 %i.rhy, %i.rgu
  br i1 %exitcond86.not.i, label %.sink.split.i, label %.lr.ph82.i, !llvm.loop !433

bb.ro:                                            ; preds = %bb.rn
  %i.rhz = shl i64 %i.rgw, 2
  %i.ria = tail call ptr @dt_alloc_aligned(i64 noundef %i.rhz) #27, !noalias !602 ; 11 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ria, i64 64) ]
  %.not.i614 = icmp eq ptr %i.ria, null
  br i1 %.not.i614, label %.sink.split.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ro
  tail call fastcc void @vng_interpolate(ptr noundef %i.ria, ptr noundef readonly %i.awz, i32 noundef %i.bo, i32 noundef %i.awp, i32 noundef %.fr1070, ptr noundef nonnull readonly %i.x, i32 noundef 1)
  tail call fastcc void @color_smoothing(ptr noundef %i.ria, i32 noundef %i.bo, i32 noundef %i.awp, i32 noundef 2), !noalias !602
  %min.iters.check1757 = icmp samesign ult i64 %i.rgu, 5
  br i1 %min.iters.check1757, label %.lr.ph.i615.preheader, label %vector.memcheck1758

.lr.ph.i615.preheader:                            ; preds = %vector.body1767, %vector.memcheck1758, %.lr.ph.preheader.i
  %.07280.i.ph = phi i64 [ 0, %vector.memcheck1758 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec1766, %vector.body1767 ]
  br label %.lr.ph.i615

vector.memcheck1758:                              ; preds = %.lr.ph.preheader.i
  %i.rib = mul nuw nsw i64 %i.rgt, %i.aob         ; 2 uses
  %i.ric = shl i64 %i.rib, 4                      ; 2 uses
  %i.rid = getelementptr i8, ptr %i.anu, i64 %i.ric ; 2 uses
  %i.rie = shl nuw i64 %i.rib, 2
  %i.rif = getelementptr i8, ptr %i.rgv, i64 %i.rie
  %i.rig = getelementptr i8, ptr %i.ria, i64 %i.ric
  %i.rih = getelementptr i8, ptr %i.rig, i64 -4
  %bound01759 = icmp ult ptr %i.anu, %i.rif
  %bound11760 = icmp ult ptr %i.rgv, %i.rid
  %found.conflict1761 = and i1 %bound01759, %bound11760
  %bound01762 = icmp ult ptr %i.anu, %i.rih
  %bound11763 = icmp ult ptr %i.ria, %i.rid
  %found.conflict1764 = and i1 %bound01762, %bound11763
  %conflict.rdx = or i1 %found.conflict1761, %found.conflict1764
  br i1 %conflict.rdx, label %.lr.ph.i615.preheader, label %vector.ph1765

vector.ph1765:                                    ; preds = %vector.memcheck1758
  %i.rii = and i64 %i.rgu, 3                      ; 2 uses
  %i.rij = icmp eq i64 %i.rii, 0
  %i.rik = select i1 %i.rij, i64 4, i64 %i.rii
  %n.vec1766 = sub nsw i64 %i.rgu, %i.rik         ; 2 uses
  br label %vector.body1767

vector.body1767:                                  ; preds = %vector.body1767, %vector.ph1765
  %index1768 = phi i64 [ 0, %vector.ph1765 ], [ %index.next1778, %vector.body1767 ] ; 3 uses
  %i.ril = shl nuw i64 %index1768, 2              ; 2 uses
  %i.rim = getelementptr inbounds nuw [4 x i8], ptr %i.rgv, i64 %index1768
  %wide.load1769 = load <4 x float>, ptr %i.rim, align 4, !tbaa !12, !alias.scope !605, !noalias !602 ; 3 uses
  %i.rin = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %i.ril ; 2 uses
  %wide.vec1770 = load <16 x float>, ptr %i.rin, align 4, !tbaa !12, !alias.scope !600, !noalias !606 ; 3 uses
  %strided.vec1771 = shufflevector <16 x float> %wide.vec1770, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1772 = shufflevector <16 x float> %wide.vec1770, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1773 = shufflevector <16 x float> %wide.vec1770, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.rio = getelementptr inbounds nuw [4 x i8], ptr %i.ria, i64 %i.ril
  %wide.vec1774 = load <16 x float>, ptr %i.rio, align 64, !tbaa !12, !alias.scope !607, !noalias !602 ; 3 uses
  %strided.vec1775 = shufflevector <16 x float> %wide.vec1774, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec1776 = shufflevector <16 x float> %wide.vec1774, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec1777 = shufflevector <16 x float> %wide.vec1774, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %i.rip = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec1771, %strided.vec1775
  %i.riq = fmul reassoc nsz arcp contract afn <4 x float> %i.rip, %wide.load1769
  %i.rir = fadd reassoc nsz arcp contract afn <4 x float> %i.riq, %strided.vec1775
  %i.ris = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec1772, %strided.vec1776
  %i.rit = fmul reassoc nsz arcp contract afn <4 x float> %i.ris, %wide.load1769
  %i.riu = fadd reassoc nsz arcp contract afn <4 x float> %i.rit, %strided.vec1776
  %i.riv = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec1773, %strided.vec1777
  %i.riw = fmul reassoc nsz arcp contract afn <4 x float> %i.riv, %wide.load1769
  %i.rix = fadd reassoc nsz arcp contract afn <4 x float> %i.riw, %strided.vec1777
  %i.riy = shufflevector <4 x float> %i.rir, <4 x float> %i.riu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.riz = shufflevector <4 x float> %i.rix, <4 x float> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.riy, <8 x float> %i.riz, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.rin, align 4, !tbaa !12, !alias.scope !600, !noalias !606
  %index.next1778 = add nuw i64 %index1768, 4     ; 2 uses
  %i.rja = icmp eq i64 %index.next1778, %n.vec1766
  br i1 %i.rja, label %.lr.ph.i615.preheader, label %vector.body1767, !llvm.loop !437

._crit_edge.i617:                                 ; preds = %.lr.ph.i615
  tail call void @free(ptr noundef nonnull %i.ria) #27, !noalias !602
  br label %.sink.split.i

.lr.ph.i615:                                      ; preds = %.lr.ph.i615.preheader, %.lr.ph.i615
  %.07280.i = phi i64 [ %i.rke, %.lr.ph.i615 ], [ %.07280.i.ph, %.lr.ph.i615.preheader ] ; 3 uses
  %i.rjb = shl nuw i64 %.07280.i, 2               ; 4 uses
  %i.rjc = getelementptr inbounds nuw [4 x i8], ptr %i.rgv, i64 %.07280.i ; 3 uses
  %i.rjd = load float, ptr %i.rjc, align 4, !tbaa !12, !noalias !602
  %i.rje = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %i.rjb ; 3 uses
  %i.rjf = load float, ptr %i.rje, align 4, !tbaa !12, !alias.scope !600
  %i.rjg = getelementptr inbounds nuw [4 x i8], ptr %i.ria, i64 %i.rjb
  %i.rjh = load float, ptr %i.rjg, align 16, !tbaa !12, !noalias !602 ; 2 uses
  %i.rji = fsub reassoc nsz arcp contract afn float %i.rjf, %i.rjh
  %i.rjj = fmul reassoc nsz arcp contract afn float %i.rji, %i.rjd
  %i.rjk = fadd reassoc nsz arcp contract afn float %i.rjj, %i.rjh
  store float %i.rjk, ptr %i.rje, align 4, !tbaa !12, !alias.scope !600
  %i.rjl = load float, ptr %i.rjc, align 4, !tbaa !12, !noalias !602
  %i.rjm = or disjoint i64 %i.rjb, 1              ; 2 uses
  %i.rjn = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %i.rjm ; 2 uses
  %i.rjo = load float, ptr %i.rjn, align 4, !tbaa !12, !alias.scope !600
  %i.rjp = getelementptr inbounds nuw [4 x i8], ptr %i.ria, i64 %i.rjm
  %i.rjq = load float, ptr %i.rjp, align 4, !tbaa !12, !noalias !602 ; 2 uses
  %i.rjr = fsub reassoc nsz arcp contract afn float %i.rjo, %i.rjq
  %i.rjs = fmul reassoc nsz arcp contract afn float %i.rjr, %i.rjl
  %i.rjt = fadd reassoc nsz arcp contract afn float %i.rjs, %i.rjq
  store float %i.rjt, ptr %i.rjn, align 4, !tbaa !12, !alias.scope !600
  %i.rju = load float, ptr %i.rjc, align 4, !tbaa !12, !noalias !602
  %i.rjv = or disjoint i64 %i.rjb, 2              ; 2 uses
  %i.rjw = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %i.rjv ; 2 uses
  %i.rjx = load float, ptr %i.rjw, align 4, !tbaa !12, !alias.scope !600
  %i.rjy = getelementptr inbounds nuw [4 x i8], ptr %i.ria, i64 %i.rjv
  %i.rjz = load float, ptr %i.rjy, align 8, !tbaa !12, !noalias !602 ; 2 uses
  %i.rka = fsub reassoc nsz arcp contract afn float %i.rjx, %i.rjz
  %i.rkb = fmul reassoc nsz arcp contract afn float %i.rka, %i.rju
  %i.rkc = fadd reassoc nsz arcp contract afn float %i.rkb, %i.rjz
  store float %i.rkc, ptr %i.rjw, align 4, !tbaa !12, !alias.scope !600
  %i.rkd = getelementptr inbounds nuw i8, ptr %i.rje, i64 12
  store float 0.000000e+00, ptr %i.rkd, align 4, !tbaa !12, !alias.scope !600
  %i.rke = add nuw nsw i64 %.07280.i, 1           ; 2 uses
  %exitcond.not.i616 = icmp eq i64 %i.rke, %i.rgu
  br i1 %exitcond.not.i616, label %._crit_edge.i617, label %.lr.ph.i615, !llvm.loop !438

.sink.split.i:                                    ; preds = %.lr.ph82.i, %middle.block1723, %vec.epilog.middle.block1742, %._crit_edge.i617, %bb.ro, %bb.rm
  tail call void @free(ptr noundef %i.rgv) #27, !noalias !602
  tail call void @free(ptr noundef %i.rgx) #27, !noalias !602
  br label %dual_demosaic.exit

dual_demosaic.exit:                               ; preds = %.sink.split.i, %bb.rl, %_capture_sharpen.exit
  br i1 %.not75.i, label %bb.rp, label %bb.rq

bb.rp:                                            ; preds = %dual_demosaic.exit
  %i.rkf = mul i32 %i.aou, %i.awj
  %i.rkg = sext i32 %i.rkf to i64
  %i.rkh = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.rkg
  %i.rki = mul i32 %i.aou, %i.awr
  %i.rkj = sext i32 %i.rki to i64
  %i.rkk = getelementptr inbounds [4 x i8], ptr %i.anu, i64 %i.rkj
  %i.rkl = mul nsw i32 %i.aou, %i.aws
  %i.rkm = sext i32 %i.rkl to i64
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.rkh, ptr noundef nonnull %i.rkk, i64 noundef %i.rkm) #27
  br label %bb.rq

bb.rq:                                            ; preds = %dual_demosaic.exit, %bb.rp, %bb.hc
  %indvars.iv.next1250 = add nuw nsw i64 %indvars.iv1249, 1 ; 2 uses
  %exitcond1252.not = icmp eq i64 %indvars.iv.next1250, %wide.trip.count
  br i1 %exitcond1252.not, label %._crit_edge, label %bb.hc

bb.rr:                                            ; preds = %._crit_edge
  tail call void @free(ptr noundef %i.anu) #27
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %._crit_edge
  tail call void @free(ptr noundef %.0387) #27
  %i.rkn = getelementptr inbounds nuw i8, ptr %i.s, i64 552
  %i.rko = load i32, ptr %i.rkn, align 8, !tbaa !449
  %.not425 = icmp eq i32 %i.rko, 0
  br i1 %.not425, label %bb.ru, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.rkp = tail call i32 @dt_dev_write_scharr_mask(ptr noundef %1, ptr noundef nonnull %i.anc, ptr noundef %4, i32 noundef 1) #27 ; 0 uses
  br label %bb.ru

bb.ru:                                            ; preds = %bb.rt, %bb.rs
  %i.rkq = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.rkr = load i32, ptr %i.rkq, align 4, !tbaa !146 ; 2 uses
  %i.rks = icmp eq i32 %i.rkr, 0
  %or.cond33.not428 = select i1 %i.rks, i1 true, i1 %i.cw
  %or.cond35 = select i1 %or.cond33.not428, i1 true, i1 %i.v
  br i1 %or.cond35, label %bb.rw, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  tail call fastcc void @color_smoothing(ptr noundef %i.anc, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %i.rkr)
  br label %bb.rw

bb.rw:                                            ; preds = %bb.rv, %bb.ru
  br i1 %i.dn, label %bb.ry, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  tail call void @dt_iop_clip_and_zoom_roi(ptr noundef %3, ptr noundef nonnull %i.anc, ptr noundef %5, ptr noundef %4) #27
  tail call void @free(ptr noundef %i.anc) #27
  br label %bb.ry

bb.ry:                                            ; preds = %bb.go, %bb.rw, %bb.rx, %bb.hb, %bb.t, %bb.w, %bb.v
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
  %i.x = fpext reassoc nsz arcp contract afn <2 x float> %i.w to <2 x double>
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

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ak = and i32 %4, 1
  %i.al = xor i32 %i.ak, 1
  %i.am = zext nneg i32 %i.al to i64              ; 3 uses
  %i.an = zext nneg i32 %i.ai to i64              ; 3 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.f, i64 2)
  %i.ao = add nuw i64 %smax, 4611686018427387903
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = mul i64 %i.ap, %i.b
  %i.ar = shl i64 %i.aq, 3
  %i.as = xor i64 %i.g, -1
  %i.at = add nsw i64 %i.as, %i.an
  %i.au = shl nsw i64 %i.at, 2
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.ar, %i.av
end_hunk_0
