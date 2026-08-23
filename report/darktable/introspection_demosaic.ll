Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.idw = shl nsw i32 %i.idv, 2
  %i.idx = sext i32 %i.idw to i64
  %i.idy = insertelement <2 x float> poison, float %.sroa.12.1.i514.lcssa, i64 0
  %i.idz = shufflevector <2 x float> %i.idy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iea = fdiv reassoc nsz arcp contract afn <2 x float> %i.idt, %i.idz
  %i.ieb = getelementptr inbounds [4 x i8], ptr %i.aop, i64 %i.idx ; 2 uses
  %i.iec = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.iea, <2 x float> zeroinitializer)
  store <2 x float> %i.iec, ptr %i.ieb, align 4, !tbaa !22
  %i.ied = fdiv reassoc nsz arcp contract afn float %.sroa.9.1.i513.lcssa, %.sroa.12.1.i514.lcssa
  %i.iee = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ied, float 0.000000e+00)
  %i.ief = getelementptr i8, ptr %i.ieb, i64 8
  store float %i.iee, ptr %i.ief, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %indvars.iv.next1505.i = add nuw nsw i64 %indvars.iv1504.i, 1 ; 2 uses
  %i.ieg = icmp samesign ult i64 %indvars.iv.next1505.i, %i.izp
  br i1 %i.ieg, label %bb.og, label %._crit_edge1233.us.i

.preheader1037.us.i:                              ; preds = %.preheader1048.us.i, %middle.block2722
  %indvars.iv1458.i = phi i64 [ %i.aqw, %.preheader1048.us.i ], [ %i.hvc, %middle.block2722 ] ; 10 uses
  %invariant.gep1184.us.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1182.us.i, i64 %indvars.iv1458.i ; 9 uses
  br i1 %i.apt, label %.preheader1037.us.i.new, label %.epil.preheader4770

.preheader1038.us.i:                              ; preds = %.preheader1038.us.i.preheader, %._crit_edge1178.us.i
  %indvars.iv1435.i = phi i64 [ %indvars.iv.next1436.i, %._crit_edge1178.us.i ], [ %i.aqv, %.preheader1038.us.i.preheader ] ; 3 uses
  %i.ieh = getelementptr inbounds nuw [488 x i8], ptr %i.gao, i64 %indvars.iv1435.i ; 2 uses
  %i.iei = getelementptr inbounds nuw [488 x i8], ptr %i.ixx, i64 %indvars.iv1435.i ; 2 uses
  %brmerge4918 = select i1 %min.iters.check2744, i1 true, i1 %op.rdx4615
  br i1 %brmerge4918, label %scalar.ph2743.preheader, label %vector.body2747

vector.body2747:                                  ; preds = %.preheader1038.us.i, %vector.body2747
  %index2748 = phi i64 [ %index.next2758, %vector.body2747 ], [ 0, %.preheader1038.us.i ] ; 2 uses
  %i.iej = add nuw i64 %index2748, %i.aqv         ; 2 uses
  %i.iek = getelementptr inbounds nuw [4 x i8], ptr %i.ieh, i64 %i.iej ; 5 uses
  %wide.load2749 = load <8 x float>, ptr %i.iek, align 4, !tbaa !22
  %i.iel = fmul reassoc nsz arcp contract afn <8 x float> %wide.load2749, splat (float 2.000000e+00)
  %i.iem = getelementptr inbounds [4 x i8], ptr %i.iek, i64 %i.hss
  %wide.load2750 = load <8 x float>, ptr %i.iem, align 4, !tbaa !22
  %i.ien = getelementptr inbounds [4 x i8], ptr %i.iek, i64 %i.ixw
  %wide.load2751 = load <8 x float>, ptr %i.ien, align 4, !tbaa !22
  %i.ieo = fadd reassoc nsz arcp contract afn <8 x float> %wide.load2750, %wide.load2751
  %i.iep = fsub reassoc nsz arcp contract afn <8 x float> %i.iel, %i.ieo ; 2 uses
  %i.ieq = fmul reassoc nsz arcp contract afn <8 x float> %i.iep, %i.iep
  %i.ier = getelementptr inbounds nuw i8, ptr %i.iek, i64 59536 ; 3 uses
  %wide.load2752 = load <8 x float>, ptr %i.ier, align 4, !tbaa !22
  %i.ies = fmul reassoc nsz arcp contract afn <8 x float> %wide.load2752, splat (float 2.000000e+00)
  %i.iet = getelementptr inbounds [4 x i8], ptr %i.ier, i64 %i.hss
  %wide.load2753 = load <8 x float>, ptr %i.iet, align 4, !tbaa !22
  %i.ieu = getelementptr inbounds [4 x i8], ptr %i.ier, i64 %i.ixw
  %wide.load2754 = load <8 x float>, ptr %i.ieu, align 4, !tbaa !22
  %i.iev = fadd reassoc nsz arcp contract afn <8 x float> %wide.load2753, %wide.load2754
  %i.iew = fsub reassoc nsz arcp contract afn <8 x float> %i.ies, %i.iev ; 2 uses
  %i.iex = fmul reassoc nsz arcp contract afn <8 x float> %i.iew, %i.iew
  %i.iey = fadd reassoc nsz arcp contract afn <8 x float> %i.iex, %i.ieq
  %i.iez = getelementptr inbounds nuw i8, ptr %i.iek, i64 119072 ; 3 uses
  %wide.load2755 = load <8 x float>, ptr %i.iez, align 4, !tbaa !22
  %i.ifa = fmul reassoc nsz arcp contract afn <8 x float> %wide.load2755, splat (float 2.000000e+00)
  %i.ifb = getelementptr inbounds [4 x i8], ptr %i.iez, i64 %i.hss
  %wide.load2756 = load <8 x float>, ptr %i.ifb, align 4, !tbaa !22
  %i.ifc = getelementptr inbounds [4 x i8], ptr %i.iez, i64 %i.ixw
  %wide.load2757 = load <8 x float>, ptr %i.ifc, align 4, !tbaa !22
  %i.ifd = fadd reassoc nsz arcp contract afn <8 x float> %wide.load2756, %wide.load2757
  %i.ife = fsub reassoc nsz arcp contract afn <8 x float> %i.ifa, %i.ifd ; 2 uses
  %i.iff = fmul reassoc nsz arcp contract afn <8 x float> %i.ife, %i.ife
  %i.ifg = fadd reassoc nsz arcp contract afn <8 x float> %i.iey, %i.iff
  %i.ifh = getelementptr inbounds nuw [4 x i8], ptr %i.iei, i64 %i.iej
  store <8 x float> %i.ifg, ptr %i.ifh, align 4, !tbaa !22
  %index.next2758 = add nuw i64 %index2748, 8     ; 2 uses
  %i.ifi = icmp eq i64 %index.next2758, %n.vec2746
  br i1 %i.ifi, label %middle.block2759, label %vector.body2747, !llvm.loop !270

middle.block2759:                                 ; preds = %vector.body2747
  br i1 %cmp.n2760, label %._crit_edge1178.us.i, label %scalar.ph2743.preheader

scalar.ph2743.preheader:                          ; preds = %.preheader1038.us.i, %middle.block2759
  %indvars.iv1432.i.ph = phi i64 [ %i.hrp, %middle.block2759 ], [ %i.aqv, %.preheader1038.us.i ]
  br label %scalar.ph2743

.preheader1039.us.i:                              ; preds = %.preheader1039.lr.ph.us.i, %._crit_edge1173.us.i
  %indvars.iv1429.i = phi i64 [ %indvars.iv.next1430.i, %._crit_edge1173.us.i ], [ %i.aqu, %.preheader1039.lr.ph.us.i ] ; 5 uses
  %i.ifj = getelementptr inbounds nuw [1464 x i8], ptr %i.ixu, i64 %indvars.iv1429.i
  %i.ifk = getelementptr inbounds nuw [488 x i8], ptr %i.gao, i64 %indvars.iv1429.i
  %i.ifl = getelementptr inbounds nuw [488 x i8], ptr %i.gaq, i64 %indvars.iv1429.i
  %i.ifm = getelementptr inbounds nuw [488 x i8], ptr %i.gax, i64 %indvars.iv1429.i
  br label %bb.oc

.preheader1046.us.i:                              ; preds = %.preheader1046.us.preheader.i, %._crit_edge1233.us.i
  %indvars.iv1507.i = phi i64 [ %i.aqm, %.preheader1046.us.preheader.i ], [ %indvars.iv.next1508.i, %._crit_edge1233.us.i ] ; 4 uses
  %invariant.gep1214.us.i = getelementptr inbounds nuw [122 x i8], ptr %i.gar, i64 %indvars.iv1507.i
  %invariant.gep1226.us.i = getelementptr inbounds nuw [1464 x i8], ptr %i.fzo, i64 %indvars.iv1507.i
  %i.ifn = trunc i64 %indvars.iv1507.i to i32
  %i.ifo = add i32 %indvars.iv1335.i, %i.ifn
  %i.ifp = mul i32 %i.ifo, %i.bo
  %i.ifq = add i32 %i.ifp, %indvars.iv1330.i
  br label %bb.og

.preheader1047.us.i:                              ; preds = %.preheader1047.us.preheader.i, %._crit_edge1210.us.i.loopexit988.3
  %indvars.iv1476.i = phi i64 [ %indvars.iv.next1477.i.3, %._crit_edge1210.us.i.loopexit988.3 ], [ 0, %.preheader1047.us.preheader.i ] ; 5 uses
  %gep = getelementptr [14884 x i8], ptr %invariant.gep, i64 %indvars.iv1476.i
  br label %bb.of

.preheader1048.us.i:                              ; preds = %.preheader1048.us.preheader.i, %._crit_edge1200.us.i
  %indvar2628 = phi i64 [ 0, %.preheader1048.us.preheader.i ], [ %indvar.next2629, %._crit_edge1200.us.i ] ; 3 uses
  %indvars.iv1461.i = phi i64 [ %i.aqw, %.preheader1048.us.preheader.i ], [ %i.ift, %._crit_edge1200.us.i ] ; 5 uses
  %i.ifr = mul nuw nsw i64 %indvar2628, 122       ; 2 uses
  %scevgep2630 = getelementptr i8, ptr %i.gbi, i64 %i.ifr ; 9 uses
  %scevgep2635 = getelementptr i8, ptr %i.iyu, i64 %i.ifr ; 9 uses
  %i.ifs = mul nuw nsw i64 %indvar2628, 488       ; 18 uses
  %scevgep2636 = getelementptr i8, ptr %i.gbo, i64 %i.ifs
  %scevgep2637 = getelementptr i8, ptr %i.iyv, i64 %i.ifs
  %scevgep2638 = getelementptr i8, ptr %i.gbt, i64 %i.ifs
  %scevgep2639 = getelementptr i8, ptr %i.iyw, i64 %i.ifs
  %scevgep2640 = getelementptr i8, ptr %i.gby, i64 %i.ifs
  %scevgep2641 = getelementptr i8, ptr %i.iyx, i64 %i.ifs
  %scevgep2642 = getelementptr i8, ptr %i.gcd, i64 %i.ifs
  %scevgep2643 = getelementptr i8, ptr %i.iyy, i64 %i.ifs
  %scevgep2644 = getelementptr i8, ptr %i.gci, i64 %i.ifs
  %scevgep2645 = getelementptr i8, ptr %i.iyz, i64 %i.ifs
  %scevgep2646 = getelementptr i8, ptr %i.gcn, i64 %i.ifs
  %scevgep2647 = getelementptr i8, ptr %i.iza, i64 %i.ifs
  %scevgep2648 = getelementptr i8, ptr %i.gcs, i64 %i.ifs
  %scevgep2649 = getelementptr i8, ptr %i.izb, i64 %i.ifs
  %scevgep2650 = getelementptr i8, ptr %i.gcx, i64 %i.ifs
  %scevgep2651 = getelementptr i8, ptr %i.izc, i64 %i.ifs
  %scevgep2652 = getelementptr i8, ptr %i.gdc, i64 %i.ifs
  %scevgep2653 = getelementptr i8, ptr %i.izd, i64 %i.ifs
  %invariant.gep1182.us.i = getelementptr inbounds nuw [488 x i8], ptr %i.gap, i64 %indvars.iv1461.i
  %invariant.gep1194.us.i = getelementptr inbounds nuw [122 x i8], ptr %i.gao, i64 %indvars.iv1461.i
  %i.ift = add nuw nsw i64 %indvars.iv1461.i, 1   ; 4 uses
  %bound02654 = icmp ult ptr %scevgep2630, %scevgep2637
  %bound12655 = icmp ult ptr %scevgep2636, %scevgep2635
  %found.conflict2656 = and i1 %bound02654, %bound12655
  %bound02657 = icmp ult ptr %scevgep2630, %scevgep2639
  %bound12658 = icmp ult ptr %scevgep2638, %scevgep2635
  %found.conflict2659 = and i1 %bound02657, %bound12658
  %conflict.rdx2660 = or i1 %found.conflict2656, %found.conflict2659
  %bound02661 = icmp ult ptr %scevgep2630, %scevgep2641
  %bound12662 = icmp ult ptr %scevgep2640, %scevgep2635
  %found.conflict2663 = and i1 %bound02661, %bound12662
  %conflict.rdx2664 = or i1 %conflict.rdx2660, %found.conflict2663
  %bound02665 = icmp ult ptr %scevgep2630, %scevgep2643
  %bound12666 = icmp ult ptr %scevgep2642, %scevgep2635
  %found.conflict2667 = and i1 %bound02665, %bound12666
  %conflict.rdx2668 = or i1 %conflict.rdx2664, %found.conflict2667
  %bound02669 = icmp ult ptr %scevgep2630, %scevgep2645
  %bound12670 = icmp ult ptr %scevgep2644, %scevgep2635
  %found.conflict2671 = and i1 %bound02669, %bound12670
  %conflict.rdx2672 = or i1 %conflict.rdx2668, %found.conflict2671
  %bound02673 = icmp ult ptr %scevgep2630, %scevgep2647
  %bound12674 = icmp ult ptr %scevgep2646, %scevgep2635
  %found.conflict2675 = and i1 %bound02673, %bound12674
  %conflict.rdx2676 = or i1 %conflict.rdx2672, %found.conflict2675
  %bound02677 = icmp ult ptr %scevgep2630, %scevgep2649
  %bound12678 = icmp ult ptr %scevgep2648, %scevgep2635
  %found.conflict2679 = and i1 %bound02677, %bound12678
  %conflict.rdx2680 = or i1 %conflict.rdx2676, %found.conflict2679
  %bound02681 = icmp ult ptr %scevgep2630, %scevgep2651
  %bound12682 = icmp ult ptr %scevgep2650, %scevgep2635
  %found.conflict2683 = and i1 %bound02681, %bound12682
  %conflict.rdx2684 = or i1 %conflict.rdx2680, %found.conflict2683
  %bound02685 = icmp ult ptr %scevgep2630, %scevgep2653
  %bound12686 = icmp ult ptr %scevgep2652, %scevgep2635
  %found.conflict2687 = and i1 %bound02685, %bound12686
  %conflict.rdx2688 = or i1 %conflict.rdx2684, %found.conflict2687
  br label %.preheader1037.us.i

.preheader1050.us.i:                              ; preds = %._crit_edge.us.i, %.preheader1050.us.preheader.i
  %indvars.iv1159 = phi i32 [ %indvars.iv.next1160, %._crit_edge.us.i ], [ %indvars.iv1157, %.preheader1050.us.preheader.i ] ; 2 uses
  %indvars.iv1337.i = phi i64 [ %indvars.iv.next1338.i, %._crit_edge.us.i ], [ %i.gdn, %.preheader1050.us.preheader.i ] ; 6 uses
  %i.ifu = sext i32 %indvars.iv1159 to i64
  %i.ifv = sub nsw i64 %indvars.iv1337.i, %i.gdn
  %i.ifw = getelementptr inbounds [1464 x i8], ptr %i.fzo, i64 %i.ifv
  %i.ifx = icmp slt i64 %indvars.iv1337.i, %i.gay ; 2 uses
  %i.ify = trunc i64 %indvars.iv1337.i to i32     ; 4 uses
  %i.ifz = add i32 %i.ify, 600
  %i.iga = srem i32 %i.ifz, 6
  %i.igb = sext i32 %i.iga to i64
  %i.igc = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.igb
  %i.igd = sub i32 %i.gau, %i.ify
  %i.ige = tail call i32 @llvm.abs.i32(i32 %i.ify, i1 true)
  %i.igf = mul nsw i64 %indvars.iv1337.i, %i.aov
  %..i517 = select i1 %i.ifx, i32 %i.ige, i32 %i.igd ; 2 uses
  %i.igg = add nsw i32 %..i517, 600
  %i.igh = srem i32 %i.igg, 6
  %i.igi = sext i32 %i.igh to i64
  %i.igj = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.igi
  %i.igk = mul nsw i32 %..i517, %i.bo
  %invariant.gep.i518 = getelementptr [4 x i8], ptr %i.ayn, i64 %i.igf
  br label %bb.mk

.preheader1052.us.i:                              ; preds = %._crit_edge1200.us.i, %.preheader1048.lr.ph.us.i, %bb.od
  %i.igl = sub nsw i32 %i.hrg, %i.aqa             ; 4 uses
  br i1 %i.ger, label %.preheader1047.us.preheader.i, label %._crit_edge1235.split.us.i

.preheader1047.us.preheader.i:                    ; preds = %.preheader1052.us.i
  %i.igm = icmp slt i32 %i.aqn, %i.igl
  %i.ign = sext i32 %i.igl to i64
  br i1 %i.igm, label %.preheader1047.us.i.us, label %.preheader1047.us.i

.preheader1047.us.i.us:                           ; preds = %.preheader1047.us.preheader.i, %._crit_edge1210.us.i.loopexit.us
  %indvars.iv1476.i.us = phi i64 [ %indvars.iv.next1477.i.us, %._crit_edge1210.us.i.loopexit.us ], [ 0, %.preheader1047.us.preheader.i ] ; 4 uses
  %i.igo = mul i64 %indvars.iv1476.i.us, 14884
  %i.igp = getelementptr inbounds nuw [14884 x i8], ptr %i.gar, i64 %indvars.iv1476.i.us
  %i.igq = getelementptr inbounds nuw [14884 x i8], ptr %i.gao, i64 %indvars.iv1476.i.us
  %i.igr = getelementptr i8, ptr %i.gdi, i64 %i.igo
  br label %.preheader1031.lr.ph.us.us.i.us

.preheader1031.lr.ph.us.us.i.us:                  ; preds = %.preheader1047.us.i.us, %._crit_edge1207.us.us.i.us
  %indvar4548 = phi i64 [ 0, %.preheader1047.us.i.us ], [ %indvar.next4549, %._crit_edge1207.us.us.i.us ] ; 2 uses
  %indvars.iv1473.i.us = phi i64 [ %i.aqm, %.preheader1047.us.i.us ], [ %i.igw, %._crit_edge1207.us.us.i.us ] ; 3 uses
  %i.igs = mul nuw nsw i64 %indvar4548, 122
  %scevgep4550 = getelementptr i8, ptr %i.igr, i64 %i.igs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.f, i8 0, i64 5, i1 false)
  %i.igt = getelementptr inbounds nuw [122 x i8], ptr %i.igp, i64 %indvars.iv1473.i.us ; 2 uses
  %i.igu = getelementptr i8, ptr %i.igt, i64 %i.aqm
  %i.igv = getelementptr i8, ptr %i.igu, i64 -5
  store i8 0, ptr %i.igv, align 1, !tbaa !169
  %i.igw = add nuw nsw i64 %indvars.iv1473.i.us, 1 ; 3 uses
  %load_initial = load i8, ptr %scevgep4550, align 1
  br label %.preheader1031.us.us.i.us

.preheader1031.us.us.i.us:                        ; preds = %.preheader1031.us.us.i.us, %.preheader1031.lr.ph.us.us.i.us
  %store_forwarded = phi i8 [ %load_initial, %.preheader1031.lr.ph.us.us.i.us ], [ %i.ihu, %.preheader1031.us.us.i.us ]
  %indvars.iv1470.i.us = phi i64 [ %i.aqx, %.preheader1031.lr.ph.us.us.i.us ], [ %indvars.iv.next1471.i.us, %.preheader1031.us.us.i.us ] ; 4 uses
  %invariant.gep1202.us.us.i.us = getelementptr i8, ptr %i.igq, i64 %indvars.iv1470.i.us ; 2 uses
  %i.igx = getelementptr [122 x i8], ptr %invariant.gep1202.us.us.i.us, i64 %indvars.iv1473.i.us ; 4 uses
  %i.igy = getelementptr i8, ptr %i.igx, i64 -242
  %i.igz = load i8, ptr %i.igy, align 1, !tbaa !169
  %i.iha = getelementptr i8, ptr %i.igx, i64 -120
  %i.ihb = load i8, ptr %i.iha, align 1, !tbaa !169
  %i.ihc = getelementptr i8, ptr %i.igx, i64 2
  %i.ihd = load i8, ptr %i.ihc, align 1, !tbaa !169
  %gep1203.us.us.3.i.us = getelementptr [122 x i8], ptr %invariant.gep1202.us.us.i.us, i64 %i.igw
  %i.ihe = getelementptr i8, ptr %gep1203.us.us.3.i.us, i64 2
  %i.ihf = load i8, ptr %i.ihe, align 1, !tbaa !169
  %i.ihg = getelementptr i8, ptr %i.igx, i64 246
  %i.ihh = load i8, ptr %i.ihg, align 1, !tbaa !169
  %i.ihi = insertelement <4 x i8> poison, i8 %i.ihb, i64 0
  %i.ihj = insertelement <4 x i8> %i.ihi, i8 %i.igz, i64 1
  %i.ihk = insertelement <4 x i8> %i.ihj, i8 %i.ihd, i64 2
  %i.ihl = insertelement <4 x i8> %i.ihk, i8 %i.ihf, i64 3
  %i.ihm = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.ihl)
  %op.rdx4610.a = add i8 %i.ihm, %i.ihh           ; 2 uses
  %i.ihn = getelementptr i8, ptr %i.igt, i64 %indvars.iv1470.i.us
  %i.iho = trunc nsw i64 %indvars.iv1470.i.us to i32
  %i.ihp = srem i32 %i.iho, 5
  %i.ihq = sext i32 %i.ihp to i64
  %i.ihr = getelementptr inbounds i8, ptr %i.f, i64 %i.ihq ; 2 uses
  %i.ihs = load i8, ptr %i.ihr, align 1, !tbaa !169
  %i.iht = add i8 %store_forwarded, %op.rdx4610.a
  %i.ihu = sub i8 %i.iht, %i.ihs                  ; 2 uses
  store i8 %i.ihu, ptr %i.ihn, align 1, !tbaa !169
  store i8 %op.rdx4610.a, ptr %i.ihr, align 1, !tbaa !169
  %indvars.iv.next1471.i.us = add nsw i64 %indvars.iv1470.i.us, 1 ; 2 uses
  %i.ihv = icmp slt i64 %indvars.iv.next1471.i.us, %i.ign
  br i1 %i.ihv, label %.preheader1031.us.us.i.us, label %._crit_edge1207.us.us.i.us

._crit_edge1207.us.us.i.us:                       ; preds = %.preheader1031.us.us.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.ihw = icmp slt i64 %i.igw, %i.gfb
  %indvar.next4549 = add i64 %indvar4548, 1
  br i1 %i.ihw, label %.preheader1031.lr.ph.us.us.i.us, label %._crit_edge1210.us.i.loopexit.us

._crit_edge1210.us.i.loopexit.us:                 ; preds = %._crit_edge1207.us.us.i.us
  %indvars.iv.next1477.i.us = add nuw nsw i64 %indvars.iv1476.i.us, 1 ; 2 uses
  %exitcond1480.not.i.us = icmp eq i64 %indvars.iv.next1477.i.us, %i.aqs
  br i1 %exitcond1480.not.i.us, label %.preheader1051.split.us.i, label %.preheader1047.us.i.us

.preheader1053.us.i:                              ; preds = %._crit_edge1113.us.i, %.lr.ph1100.us.i, %.preheader1055.us.i
  %i.ihx = add nsw i32 %indvars.iv1330.i, 6
  %i.ihy = add nsw i32 %i.gft, -6                 ; 2 uses
  %i.ihz = icmp sge i32 %i.ihx, %i.ihy
  %i.iia = sub nsw i32 %indvars.iv1330.i, %i.gaw
  %.fr967.us.i = freeze i32 %i.iia
  %i.iib = add i32 %.fr967.us.i, %i.aqh           ; 2 uses
  %i.iic = srem i32 %i.iib, 3
  %i.iid = add i32 %i.iib, %i.gaw
  %i.iie = sub i32 %i.iid, %i.iic                 ; 2 uses
  %i.iif = sub nsw i32 %i.gft, %i.aqg             ; 3 uses
  %i.iig = icmp sge i32 %i.iie, %i.iif
  %i.iih = add nsw i32 %indvars.iv1330.i, %i.aqg
  %i.iii = icmp sge i32 %i.iih, %i.iif
  %i.iij = add nsw i32 %indvars.iv1330.i, %i.aqi
  %i.iik = sub nsw i32 %i.gft, %i.aqi             ; 2 uses
  %i.iil = icmp sge i32 %i.iij, %i.iik
  %i.iim = sext i32 %i.ihy to i64
  %i.iin = sext i32 %i.iie to i64
  %i.iio = sext i32 %i.iif to i64                 ; 2 uses
  %i.iip = sext i32 %i.iik to i64
  %brmerge1279.i = select i1 %i.gei, i1 true, i1 %i.ihz
  %brmerge1282.i = select i1 %i.gea, i1 true, i1 %i.iig
  %brmerge1285.i = select i1 %i.gec, i1 true, i1 %i.iii
  br label %bb.nh

.preheader1055.us.i:                              ; preds = %._crit_edge.us.i, %bb.mj
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.gbb, ptr noundef nonnull %i.fzo, i64 noundef 44652) #27
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.gbc, ptr noundef nonnull %i.fzo, i64 noundef 44652) #27
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.gbd, ptr noundef nonnull %i.fzo, i64 noundef 44652) #27
  br i1 %i.gds, label %.lr.ph1100.us.i, label %.preheader1053.us.i

iter.check2902:                                   ; preds = %.preheader.i520
  %i.iiq = sub i32 %i.gau, %i.ghk                 ; 2 uses
  %i.iir = add nsw i32 %i.iiq, 600
  %i.iis = srem i32 %i.iir, 6
  %i.iit = sext i32 %i.iis to i64
  %i.iiu = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.iit ; 21 uses
  %i.iiv = mul nsw i32 %i.iiq, %i.bo              ; 3 uses
  br i1 %min.iters.check2854, label %vec.epilog.scalar.ph2903.preheader, label %vector.main.loop.iter.check2855

vector.main.loop.iter.check2855:                  ; preds = %iter.check2902
  br i1 %min.iters.check2856, label %vec.epilog.ph2906, label %vector.ph2857

vector.ph2857:                                    ; preds = %vector.main.loop.iter.check2855
  %i.iiw = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.09001082.us.i, i64 0
  %i.iix = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.09031081.us.i, i64 0
  %broadcast.splatinsert2859 = insertelement <8 x i32> poison, i32 %i.iiv, i64 0
  %broadcast.splat2860 = shufflevector <8 x i32> %broadcast.splatinsert2859, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body2873

vector.body2873:                                  ; preds = %vector.body2873, %vector.ph2857
  %index2874 = phi i64 [ 0, %vector.ph2857 ], [ %index.next2891, %vector.body2873 ]
  %vec.ind2875 = phi <8 x i64> [ %induction2869, %vector.ph2857 ], [ %vec.ind.next2892, %vector.body2873 ] ; 3 uses
  %vec.phi2876 = phi <8 x i8> [ %i.iiw, %vector.ph2857 ], [ %predphi2889, %vector.body2873 ]
  %vec.phi2877 = phi <8 x i8> [ zeroinitializer, %vector.ph2857 ], [ %predphi2890, %vector.body2873 ]
  %vec.phi2878 = phi <8 x float> [ %i.iix, %vector.ph2857 ], [ %predphi2887, %vector.body2873 ] ; 2 uses
  %vec.phi2879 = phi <8 x float> [ zeroinitializer, %vector.ph2857 ], [ %predphi2888, %vector.body2873 ] ; 2 uses
  %vec.ind2880 = phi <8 x i32> [ %induction2872, %vector.ph2857 ], [ %vec.ind.next2893, %vector.body2873 ] ; 4 uses
  %step.add2881 = add nsw <8 x i64> %vec.ind2875, splat (i64 8)
  %step.add2882 = add <8 x i32> %vec.ind2880, splat (i32 8) ; 2 uses
  %i.iiy = icmp slt <8 x i64> %vec.ind2875, %broadcast.splat2862
  %i.iiz = icmp slt <8 x i64> %step.add2881, %broadcast.splat2862
  %i.ija = sub <8 x i32> %broadcast.splat2864, %vec.ind2880
  %i.ijb = sub <8 x i32> %broadcast.splat2864, %step.add2882
  %i.ijc = call <8 x i32> @llvm.abs.v8i32(<8 x i32> %vec.ind2880, i1 true)
  %i.ijd = call <8 x i32> @llvm.abs.v8i32(<8 x i32> %step.add2882, i1 true)
  %i.ije = select <8 x i1> %i.iiy, <8 x i32> %i.ijc, <8 x i32> %i.ija ; 2 uses
  %i.ijf = select <8 x i1> %i.iiz, <8 x i32> %i.ijd, <8 x i32> %i.ijb ; 2 uses
  %i.ijg = add nsw <8 x i32> %i.ije, splat (i32 600)
  %i.ijh = add nsw <8 x i32> %i.ijf, splat (i32 600)
  %i.iji = srem <8 x i32> %i.ijg, splat (i32 6)
  %i.ijj = srem <8 x i32> %i.ijh, splat (i32 6)
  %i.ijk = sext <8 x i32> %i.iji to <8 x i64>     ; 8 uses
  %i.ijl = sext <8 x i32> %i.ijj to <8 x i64>     ; 8 uses
  %i.ijm = extractelement <8 x i64> %i.ijk, i64 0
  %i.ijn = getelementptr inbounds i8, ptr %i.iiu, i64 %i.ijm
  %i.ijo = extractelement <8 x i64> %i.ijk, i64 1
  %i.ijp = getelementptr inbounds i8, ptr %i.iiu, i64 %i.ijo
  %i.ijq = extractelement <8 x i64> %i.ijk, i64 2
  %i.ijr = getelementptr inbounds i8, ptr %i.iiu, i64 %i.ijq
  %i.ijs = extractelement <8 x i64> %i.ijk, i64 3
  %i.ijt = getelementptr inbounds i8, ptr %i.iiu, i64 %i.ijs
  %i.iju = extractelement <8 x i64> %i.ijk, i64 4
  %i.ijv = getelementptr inbounds i8, ptr %i.iiu, i64 %i.iju
  %i.ijw = extractelement <8 x i64> %i.ijk, i64 5
  %i.ijx = getelementptr inbounds i8, ptr %i.iiu, i64 %i.ijw
  %i.ijy = extractelement <8 x i64> %i.ijk, i64 6
  %i.ijz = getelementptr inbounds i8, ptr %i.iiu, i64 %i.ijy
  %i.ika = extractelement <8 x i64> %i.ijk, i64 7
  %i.ikb = getelementptr inbounds i8, ptr %i.iiu, i64 %i.ika
  %i.ikc = extractelement <8 x i64> %i.ijl, i64 0
  %i.ikd = getelementptr inbounds i8, ptr %i.iiu, i64 %i.ikc
  %i.ike = extractelement <8 x i64> %i.ijl, i64 1
  %i.ikf = getelementptr inbounds i8, ptr %i.iiu, i64 %i.ike
  %i.ikg = extractelement <8 x i64> %i.ijl, i64 2
  %i.ikh = getelementptr inbounds i8, ptr %i.iiu, i64 %i.ikg
  %i.iki = extractelement <8 x i64> %i.ijl, i64 3
  %i.ikj = getelementptr inbounds i8, ptr %i.iiu, i64 %i.iki
  %i.ikk = extractelement <8 x i64> %i.ijl, i64 4
  %i.ikl = getelementptr inbounds i8, ptr %i.iiu, i64 %i.ikk
  %i.ikm = extractelement <8 x i64> %i.ijl, i64 5
  %i.ikn = getelementptr inbounds i8, ptr %i.iiu, i64 %i.ikm
  %i.iko = extractelement <8 x i64> %i.ijl, i64 6
  %i.ikp = getelementptr inbounds i8, ptr %i.iiu, i64 %i.iko
  %i.ikq = extractelement <8 x i64> %i.ijl, i64 7
  %i.ikr = getelementptr inbounds i8, ptr %i.iiu, i64 %i.ikq
  %i.iks = load i8, ptr %i.ijn, align 1, !tbaa !169
  %i.ikt = load i8, ptr %i.ijp, align 1, !tbaa !169
  %i.iku = load i8, ptr %i.ijr, align 1, !tbaa !169
  %i.ikv = load i8, ptr %i.ijt, align 1, !tbaa !169
  %i.ikw = load i8, ptr %i.ijv, align 1, !tbaa !169
  %i.ikx = load i8, ptr %i.ijx, align 1, !tbaa !169
  %i.iky = load i8, ptr %i.ijz, align 1, !tbaa !169
  %i.ikz = load i8, ptr %i.ikb, align 1, !tbaa !169
  %i.ila = insertelement <8 x i8> poison, i8 %i.iks, i64 0
  %i.ilb = insertelement <8 x i8> %i.ila, i8 %i.ikt, i64 1
  %i.ilc = insertelement <8 x i8> %i.ilb, i8 %i.iku, i64 2
  %i.ild = insertelement <8 x i8> %i.ilc, i8 %i.ikv, i64 3
  %i.ile = insertelement <8 x i8> %i.ild, i8 %i.ikw, i64 4
  %i.ilf = insertelement <8 x i8> %i.ile, i8 %i.ikx, i64 5
  %i.ilg = insertelement <8 x i8> %i.ilf, i8 %i.iky, i64 6
  %i.ilh = insertelement <8 x i8> %i.ilg, i8 %i.ikz, i64 7
  %i.ili = load i8, ptr %i.ikd, align 1, !tbaa !169
  %i.ilj = load i8, ptr %i.ikf, align 1, !tbaa !169
  %i.ilk = load i8, ptr %i.ikh, align 1, !tbaa !169
  %i.ill = load i8, ptr %i.ikj, align 1, !tbaa !169
  %i.ilm = load i8, ptr %i.ikl, align 1, !tbaa !169
  %i.iln = load i8, ptr %i.ikn, align 1, !tbaa !169
  %i.ilo = load i8, ptr %i.ikp, align 1, !tbaa !169
  %i.ilp = load i8, ptr %i.ikr, align 1, !tbaa !169
  %i.ilq = insertelement <8 x i8> poison, i8 %i.ili, i64 0
  %i.ilr = insertelement <8 x i8> %i.ilq, i8 %i.ilj, i64 1
end_hunk_0
begin_hunk_1_@process:bb.a
  br label %scalar.ph3344

vector.scevcheck3300:                             ; preds = %.lr.ph894.i
  %i.kov = zext i32 %indvars.iv1009.i to i64      ; 2 uses
  %i.kow = shl nuw nsw i64 %i.kov, 2              ; 7 uses
  %scevgep3320 = getelementptr i8, ptr %scevgep3319, i64 %i.kow ; 2 uses
  %scevgep3318 = getelementptr i8, ptr %scevgep3317, i64 %i.kow ; 2 uses
  %scevgep3316 = getelementptr i8, ptr %scevgep3315.a, i64 %i.kow ; 2 uses
  %scevgep3314 = getelementptr i8, ptr %scevgep3313.a, i64 %i.kow ; 2 uses
  %scevgep3312 = getelementptr i8, ptr %scevgep3311.a, i64 %i.kow ; 2 uses
  %scevgep3310 = getelementptr i8, ptr %scevgep3309.a, i64 %i.kow ; 2 uses
  %scevgep3305 = getelementptr i8, ptr %scevgep3304, i64 %i.kow ; 2 uses
  %i.kox = lshr exact i64 %i.kov, 1               ; 2 uses
  %i.koy = trunc nuw nsw i64 %i.kox to i32
  %i.koz = or disjoint i32 %i.koy, 1
  %i.kpa = add i32 %i.kcn, %i.koz
  %i.kpb = zext i32 %i.kpa to i64
  %i.kpc = xor i64 %i.kox, -2
  %i.kpd = add nsw i64 %i.kpc, %i.kpb             ; 2 uses
  %mul.result3307 = shl nsw i64 %i.kpd, 3         ; 7 uses
  %mul.overflow3308 = icmp ugt i64 %i.kpd, 2305843009213693951
  %i.kpe = getelementptr i8, ptr %scevgep3305, i64 %mul.result3307
  %i.kpf = icmp ult ptr %i.kpe, %scevgep3305
  %i.kpg = getelementptr i8, ptr %scevgep3310, i64 %mul.result3307
  %i.kph = icmp ult ptr %i.kpg, %scevgep3310
  %i.kpi = getelementptr i8, ptr %scevgep3312, i64 %mul.result3307
  %i.kpj = icmp ult ptr %i.kpi, %scevgep3312
  %i.kpk = or i1 %i.kpj, %mul.overflow3308
  %i.kpl = getelementptr i8, ptr %scevgep3314, i64 %mul.result3307
  %i.kpm = icmp ult ptr %i.kpl, %scevgep3314
  %i.kpn = getelementptr i8, ptr %scevgep3316, i64 %mul.result3307
  %i.kpo = icmp ult ptr %i.kpn, %scevgep3316
  %i.kpp = getelementptr i8, ptr %scevgep3318, i64 %mul.result3307
  %i.kpq = icmp ult ptr %i.kpp, %scevgep3318
  %i.kpr = getelementptr i8, ptr %scevgep3320, i64 %mul.result3307
  %i.kps = icmp ult ptr %i.kpr, %scevgep3320
  %i.kpt = or i1 %i.kph, %i.kpf
  %i.kpu = or i1 %i.kpt, %i.kpk
  %i.kpv = or i1 %i.kpm, %i.kpu
  %i.kpw = or i1 %i.kpo, %i.kpv
  %i.kpx = or i1 %i.kpq, %i.kpw
  %i.kpy = or i1 %i.kps, %i.kpx
  br i1 %i.kpy, label %scalar.ph3344.preheader, label %vector.memcheck3321

vector.memcheck3321:                              ; preds = %vector.scevcheck3300
  %bound03333 = icmp ult ptr %scevgep3322.a, %scevgep3328.a
  %bound13334 = icmp ult ptr %scevgep3327, %scevgep3326.a
  %found.conflict3335 = and i1 %bound03333, %bound13334
  %bound03336.a = icmp ult ptr %scevgep3322.a, %scevgep3332
  %bound13337.a = icmp ult ptr %scevgep3330, %scevgep3326.a
  %found.conflict3338.a = and i1 %bound03336.a, %bound13337.a
  %conflict.rdx3339.a = or i1 %found.conflict3335, %found.conflict3338.a
  %bound03340 = icmp ult ptr %scevgep3327, %scevgep3332
  %bound13341 = icmp ult ptr %scevgep3330, %scevgep3328.a
  %found.conflict3342 = and i1 %bound03340, %bound13341
  %conflict.rdx3343 = or i1 %conflict.rdx3339.a, %found.conflict3342
  br i1 %conflict.rdx3343, label %scalar.ph3344.preheader, label %vector.ph3346

vector.ph3346:                                    ; preds = %vector.memcheck3321
  %i.kpz = and i64 %i.kou, 7                      ; 2 uses
  %i.kqa = icmp eq i64 %i.kpz, 0
  %i.kqb = select i1 %i.kqa, i64 8, i64 %i.kpz
  %n.vec3347 = sub nsw i64 %i.kou, %i.kqb         ; 3 uses
  %i.kqc = shl nsw i64 %n.vec3347, 1
  %i.kqd = add nsw i64 %i.kqc, %i.kom
  %i.kqe = add nsw i64 %i.kon, %n.vec3347
  %broadcast.splatinsert3348 = insertelement <8 x i64> poison, i64 %i.kom, i64 0
  %broadcast.splat3349 = shufflevector <8 x i64> %broadcast.splatinsert3348, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3350 = add nuw nsw <8 x i64> %broadcast.splat3349, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body3351

vector.body3351:                                  ; preds = %vector.body3351, %vector.ph3346
  %index3352 = phi i64 [ 0, %vector.ph3346 ], [ %index.next3381, %vector.body3351 ] ; 2 uses
  %vec.ind3353 = phi <8 x i64> [ %induction3350, %vector.ph3346 ], [ %vec.ind.next3382, %vector.body3351 ] ; 2 uses
  %i.kqf = add nuw i64 %i.kon, %index3352         ; 2 uses
  %wide.gep3354 = getelementptr [4 x i8], ptr %i.jhm, <8 x i64> %vec.ind3353 ; 9 uses
  %i.kqg = extractelement <8 x ptr> %wide.gep3354, i64 0 ; 6 uses
  %wide.gep3355 = getelementptr i8, <8 x ptr> %wide.gep3354, i64 -1356
  %wide.masked.gather3356 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3355, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %wide.gep3357 = getelementptr i8, <8 x ptr> %wide.gep3354, i64 -452
  %wide.masked.gather3358 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3357, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqh = getelementptr inbounds nuw i8, ptr %i.kqg, i64 452
  %wide.vec3359 = load <16 x float>, ptr %i.kqh, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3360 = shufflevector <16 x float> %wide.vec3359, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqi = getelementptr inbounds nuw i8, ptr %i.kqg, i64 1356
  %wide.vec3361.a = load <16 x float>, ptr %i.kqi, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3362.a = shufflevector <16 x float> %wide.vec3361.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep3363 = getelementptr i8, <8 x ptr> %wide.gep3354, i64 -904
  %wide.masked.gather3364 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3363, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqj = getelementptr inbounds nuw i8, ptr %i.kqg, i64 904
  %wide.vec3365 = load <16 x float>, ptr %i.kqj, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3366 = shufflevector <16 x float> %wide.vec3365, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqk = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3366, %wide.masked.gather3364
  %i.kql = fmul reassoc nsz arcp contract afn <8 x float> %i.kqk, splat (float -3.000000e+00)
  %wide.masked.gather3367.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3354, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqm = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3367.a, splat (float 6.000000e+00)
  %i.kqn = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3360, %wide.masked.gather3358
  %i.kqo = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3356, %i.kqn
  %i.kqp = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3362.a, %i.kqo
  %i.kqq = fadd reassoc nsz arcp contract afn <8 x float> %i.kqp, %i.kql
  %i.kqr = fadd reassoc nsz arcp contract afn <8 x float> %i.kqq, %i.kqm ; 2 uses
  %i.kqs = fmul reassoc nsz arcp contract afn <8 x float> %i.kqr, %i.kqr
  %i.kqt = getelementptr inbounds nuw [4 x i8], ptr %i.jho, i64 %i.kqf
  store <8 x float> %i.kqs, ptr %i.kqt, align 4, !tbaa !22, !alias.scope !335, !noalias !337
  %wide.gep3368 = getelementptr i8, <8 x ptr> %wide.gep3354, i64 -1332
  %wide.masked.gather3369 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3368, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %wide.gep3370 = getelementptr i8, <8 x ptr> %wide.gep3354, i64 -444
  %wide.masked.gather3371 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3370, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqu = getelementptr inbounds nuw i8, ptr %i.kqg, i64 444
  %wide.vec3372 = load <16 x float>, ptr %i.kqu, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3373 = shufflevector <16 x float> %wide.vec3372, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqv = getelementptr inbounds nuw i8, ptr %i.kqg, i64 1332
  %wide.vec3374.a = load <16 x float>, ptr %i.kqv, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3375.a = shufflevector <16 x float> %wide.vec3374.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep3376 = getelementptr i8, <8 x ptr> %wide.gep3354, i64 -888
  %wide.masked.gather3377 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3376, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqw = getelementptr inbounds nuw i8, ptr %i.kqg, i64 888
  %wide.vec3378 = load <16 x float>, ptr %i.kqw, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3379 = shufflevector <16 x float> %wide.vec3378, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqx = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3379, %wide.masked.gather3377
  %i.kqy = fmul reassoc nsz arcp contract afn <8 x float> %i.kqx, splat (float -3.000000e+00)
  %wide.masked.gather3380 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3354, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3380, splat (float 6.000000e+00)
  %i.kra = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3373, %wide.masked.gather3371
  %i.krb = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3369, %i.kra
  %i.krc = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3375.a, %i.krb
  %i.krd = fadd reassoc nsz arcp contract afn <8 x float> %i.krc, %i.kqy
  %i.kre = fadd reassoc nsz arcp contract afn <8 x float> %i.krd, %i.kqz ; 2 uses
  %i.krf = fmul reassoc nsz arcp contract afn <8 x float> %i.kre, %i.kre
  %i.krg = getelementptr inbounds nuw [4 x i8], ptr %i.jhp, i64 %i.kqf
  store <8 x float> %i.krf, ptr %i.krg, align 4, !tbaa !22, !alias.scope !339, !noalias !340
  %index.next3381 = add nuw i64 %index3352, 8     ; 2 uses
  %vec.ind.next3382 = add nuw nsw <8 x i64> %vec.ind3353, splat (i64 16)
  %i.krh = icmp eq i64 %index.next3381, %n.vec3347
  br i1 %i.krh, label %scalar.ph3344.preheader, label %vector.body3351, !llvm.loop !341

._crit_edge895.i:                                 ; preds = %scalar.ph3344
  %i.kri = add nuw nsw i32 %.0767896.i, 1         ; 2 uses
  %i.krj = icmp slt i32 %i.kri, %i.jih
  %indvars.iv.next1010.i = add i32 %indvars.iv1009.i, 112
  br i1 %i.krj, label %.lr.ph894.i, label %.preheader829.i

scalar.ph3344:                                    ; preds = %scalar.ph3344.preheader, %scalar.ph3344
  %indvars.iv1013.i = phi i64 [ %indvars.iv.next1014.i, %scalar.ph3344 ], [ %indvars.iv1013.i.ph, %scalar.ph3344.preheader ] ; 2 uses
  %indvars.iv1011.i = phi i64 [ %indvars.iv.next1012.i, %scalar.ph3344 ], [ %indvars.iv1011.i.ph, %scalar.ph3344.preheader ] ; 3 uses
  %i.krk = getelementptr [4 x i8], ptr %i.jhm, i64 %indvars.iv1013.i ; 14 uses
  %i.krl = getelementptr i8, ptr %i.krk, i64 -1356
  %i.krm = load float, ptr %i.krl, align 4, !tbaa !22, !noalias !277
  %i.krn = getelementptr i8, ptr %i.krk, i64 -452
  %i.kro = load float, ptr %i.krn, align 4, !tbaa !22, !noalias !277
  %i.krp = getelementptr inbounds nuw i8, ptr %i.krk, i64 452
  %i.krq = load float, ptr %i.krp, align 4, !tbaa !22, !noalias !277
  %i.krr = getelementptr inbounds nuw i8, ptr %i.krk, i64 1356
  %i.krs = load float, ptr %i.krr, align 4, !tbaa !22, !noalias !277
  %i.krt = getelementptr i8, ptr %i.krk, i64 -904
  %i.kru = load float, ptr %i.krt, align 4, !tbaa !22, !noalias !277
  %i.krv = getelementptr inbounds nuw i8, ptr %i.krk, i64 904
  %i.krw = load float, ptr %i.krv, align 4, !tbaa !22, !noalias !277
  %i.krx = fadd reassoc nsz arcp contract afn float %i.krw, %i.kru
  %.neg806.i = fmul reassoc nsz arcp contract afn float %i.krx, -3.000000e+00
  %i.kry = load float, ptr %i.krk, align 4, !tbaa !22, !noalias !277
  %i.krz = fmul reassoc nsz arcp contract afn float %i.kry, 6.000000e+00
  %i.ksa = fadd reassoc nsz arcp contract afn float %i.krq, %i.kro
  %.neg807.i = fsub reassoc nsz arcp contract afn float %i.krm, %i.ksa
  %i.ksb = fadd reassoc nsz arcp contract afn float %i.krs, %.neg807.i
  %i.ksc = fadd reassoc nsz arcp contract afn float %i.ksb, %.neg806.i
  %i.ksd = fadd reassoc nsz arcp contract afn float %i.ksc, %i.krz ; 2 uses
  %i.kse = fmul reassoc nsz arcp contract afn float %i.ksd, %i.ksd
  %i.ksf = getelementptr inbounds nuw [4 x i8], ptr %i.jho, i64 %indvars.iv1011.i
  store float %i.kse, ptr %i.ksf, align 4, !tbaa !22, !noalias !277
  %i.ksg = getelementptr i8, ptr %i.krk, i64 -1332
  %i.ksh = load float, ptr %i.ksg, align 4, !tbaa !22, !noalias !277
  %i.ksi = getelementptr i8, ptr %i.krk, i64 -444
  %i.ksj = load float, ptr %i.ksi, align 4, !tbaa !22, !noalias !277
  %i.ksk = getelementptr inbounds nuw i8, ptr %i.krk, i64 444
  %i.ksl = load float, ptr %i.ksk, align 4, !tbaa !22, !noalias !277
  %i.ksm = getelementptr inbounds nuw i8, ptr %i.krk, i64 1332
  %i.ksn = load float, ptr %i.ksm, align 4, !tbaa !22, !noalias !277
  %i.kso = getelementptr i8, ptr %i.krk, i64 -888
  %i.ksp = load float, ptr %i.kso, align 4, !tbaa !22, !noalias !277
  %i.ksq = getelementptr inbounds nuw i8, ptr %i.krk, i64 888
  %i.ksr = load float, ptr %i.ksq, align 4, !tbaa !22, !noalias !277
  %i.kss = fadd reassoc nsz arcp contract afn float %i.ksr, %i.ksp
  %.neg811.i = fmul reassoc nsz arcp contract afn float %i.kss, -3.000000e+00
  %i.kst = load float, ptr %i.krk, align 4, !tbaa !22, !noalias !277
  %i.ksu = fmul reassoc nsz arcp contract afn float %i.kst, 6.000000e+00
  %i.ksv = fadd reassoc nsz arcp contract afn float %i.ksl, %i.ksj
  %.neg812.i = fsub reassoc nsz arcp contract afn float %i.ksh, %i.ksv
  %i.ksw = fadd reassoc nsz arcp contract afn float %i.ksn, %.neg812.i
  %i.ksx = fadd reassoc nsz arcp contract afn float %i.ksw, %.neg811.i
  %i.ksy = fadd reassoc nsz arcp contract afn float %i.ksx, %i.ksu ; 2 uses
  %i.ksz = fmul reassoc nsz arcp contract afn float %i.ksy, %i.ksy
  %i.kta = getelementptr inbounds nuw [4 x i8], ptr %i.jhp, i64 %indvars.iv1011.i
  store float %i.ksz, ptr %i.kta, align 4, !tbaa !22, !noalias !277
  %indvars.iv.next1014.i = add nuw nsw i64 %indvars.iv1013.i, 2
  %indvars.iv.next1012.i = add nuw nsw i64 %indvars.iv1011.i, 1 ; 2 uses
  %exitcond.not.i542 = icmp eq i64 %indvars.iv.next1012.i, %wide.trip.count.i
  br i1 %exitcond.not.i542, label %._crit_edge895.i, label %scalar.ph3344, !llvm.loop !342

bb.pg:                                            ; preds = %._crit_edge904.i, %.lr.ph906.i
  %indvar3268 = phi i32 [ %indvar.next3269, %._crit_edge904.i ], [ 0, %.lr.ph906.i ] ; 2 uses
  %indvars.iv1027.i = phi i32 [ %indvars.iv.next1028.i, %._crit_edge904.i ], [ 452, %.lr.ph906.i ] ; 2 uses
  %indvars.iv1021.i = phi i32 [ %indvars.iv.next1022.i, %._crit_edge904.i ], [ 563, %.lr.ph906.i ] ; 2 uses
  %.0763905.i = phi i32 [ %i.kvj, %._crit_edge904.i ], [ 4, %.lr.ph906.i ] ; 3 uses
  %i.ktb = mul i32 %indvar3268, 112
  %6 = add i32 %i.ktb, 448
  %i.ktc = zext i32 %6 to i64
  %i.ktd = shl nuw nsw i64 %i.ktc, 1
  %i.kte = shl i32 %.0763905.i, 2
  %i.ktf = and i32 %i.kte, 28
  %i.ktg = lshr i32 %.fr1043, %i.ktf
  %i.kth = and i32 %i.ktg, 1                      ; 3 uses
  %i.kti = or disjoint i32 %i.kth, 4              ; 5 uses
  %i.ktj = icmp slt i32 %i.kti, %i.knw
  br i1 %i.ktj, label %.lr.ph903.preheader.i, label %._crit_edge904.i

.lr.ph903.preheader.i:                            ; preds = %bb.pg
  %i.ktk = mul nuw nsw i32 %.0763905.i, 112
  %i.ktl = add nsw i32 %i.ktk, -113
  %i.ktm = add nsw i32 %i.ktl, %i.kti
  %i.ktn = sdiv i32 %i.ktm, 2
  %i.kto = add i32 %i.kth, %indvars.iv1021.i
  %i.ktp = lshr i32 %i.kto, 1
  %i.ktq = zext nneg i32 %i.ktp to i64            ; 5 uses
  %i.ktr = sext i32 %i.ktn to i64                 ; 5 uses
  %i.kts = lshr exact i32 %indvars.iv1027.i, 1
  %i.ktt = zext nneg i32 %i.kts to i64            ; 4 uses
  %i.ktu = sub i32 %i.knx, %i.kth                 ; 2 uses
  %i.ktv = lshr i32 %i.ktu, 1
  %narrow4583 = add nuw i32 %i.ktv, 1
  %i.ktw = zext i32 %narrow4583 to i64            ; 2 uses
  %min.iters.check3282 = icmp ult i32 %i.ktu, 14
  br i1 %min.iters.check3282, label %.lr.ph903.i.preheader, label %vector.memcheck3267

vector.memcheck3267:                              ; preds = %.lr.ph903.preheader.i
  %i.ktx = insertelement <2 x i64> poison, i64 %i.ktq, i64 0
  %i.kty = insertelement <2 x i64> %i.ktx, i64 %i.ktr, i64 1
  %i.ktz = shl nsw <2 x i64> %i.kty, splat (i64 2)
  %i.kua = shufflevector <2 x i64> %i.ktz, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.kub = insertelement <4 x i64> poison, i64 %i.ktd, i64 0
  %i.kuc = shufflevector <4 x i64> %i.kub, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.kud = add <4 x i64> %i.jhy, %i.kuc
  %i.kue = add <4 x i64> %i.kua, %i.jia
  %i.kuf = sub <4 x i64> %i.kue, %i.kud
  %i.kug = icmp ugt <4 x i64> %i.kuf, splat (i64 -32)
  %i.kuh = bitcast <4 x i1> %i.kug to i4
  %.not = icmp eq i4 %i.kuh, 0
  br i1 %.not, label %vector.ph3283, label %.lr.ph903.i.preheader

vector.ph3283:                                    ; preds = %vector.memcheck3267
  %n.vec3284 = and i64 %i.ktw, 4294967288         ; 6 uses
  %i.kui = add nuw nsw i64 %n.vec3284, %i.ktt
  %i.kuj = add nsw i64 %n.vec3284, %i.ktr
  %i.kuk = add nuw nsw i64 %n.vec3284, %i.ktq
  %i.kul = trunc nuw i64 %n.vec3284 to i32
  %i.kum = shl i32 %i.kul, 1
  %i.kun = or disjoint i32 %i.kti, %i.kum
  br label %vector.body3285

vector.body3285:                                  ; preds = %vector.body3285, %vector.ph3283
  %index3286 = phi i64 [ 0, %vector.ph3283 ], [ %index.next3293, %vector.body3285 ] ; 4 uses
  %i.kuo = add nuw i64 %index3286, %i.ktt         ; 3 uses
  %i.kup = add i64 %index3286, %i.ktr             ; 2 uses
  %i.kuq = add nuw i64 %index3286, %i.ktq         ; 2 uses
  %i.kur = getelementptr inbounds [4 x i8], ptr %i.jho, i64 %i.kup
  %wide.load3287.a = load <8 x float>, ptr %i.kur, align 4, !tbaa !22, !noalias !277
  %i.kus = getelementptr inbounds nuw [4 x i8], ptr %i.jho, i64 %i.kuo
  %wide.load3288.a = load <8 x float>, ptr %i.kus, align 8, !tbaa !22, !noalias !277
  %i.kut = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3288.a, %wide.load3287.a
  %i.kuu = getelementptr inbounds nuw [4 x i8], ptr %i.jho, i64 %i.kuq
  %i.kuv = getelementptr inbounds nuw i8, ptr %i.kuu, i64 4
  %wide.load3289 = load <8 x float>, ptr %i.kuv, align 4, !tbaa !22, !noalias !277
  %i.kuw = fadd reassoc nsz arcp contract afn <8 x float> %i.kut, %wide.load3289
  %i.kux = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kuw, <8 x float> splat (float 1.000000e-10)) ; 2 uses
  %i.kuy = getelementptr [4 x i8], ptr %i.jhp, i64 %i.kup
  %i.kuz = getelementptr i8, ptr %i.kuy, i64 4
  %wide.load3290 = load <8 x float>, ptr %i.kuz, align 4, !tbaa !22, !noalias !277
  %i.kva = getelementptr inbounds nuw [4 x i8], ptr %i.jhp, i64 %i.kuo
  %wide.load3291 = load <8 x float>, ptr %i.kva, align 8, !tbaa !22, !noalias !277
  %i.kvb = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3291, %wide.load3290
  %i.kvc = getelementptr inbounds nuw [4 x i8], ptr %i.jhp, i64 %i.kuq
  %wide.load3292 = load <8 x float>, ptr %i.kvc, align 4, !tbaa !22, !noalias !277
  %i.kvd = fadd reassoc nsz arcp contract afn <8 x float> %i.kvb, %wide.load3292
  %i.kve = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kvd, <8 x float> splat (float 1.000000e-10))
  %i.kvf = fadd reassoc nsz arcp contract afn <8 x float> %i.kve, %i.kux
  %i.kvg = fdiv reassoc nsz arcp contract afn <8 x float> %i.kux, %i.kvf
  %i.kvh = getelementptr inbounds nuw [4 x i8], ptr %i.jhk, i64 %i.kuo
  store <8 x float> %i.kvg, ptr %i.kvh, align 8, !tbaa !22, !noalias !277
  %index.next3293 = add nuw i64 %index3286, 8     ; 2 uses
  %i.kvi = icmp eq i64 %index.next3293, %n.vec3284
  br i1 %i.kvi, label %middle.block3294, label %vector.body3285, !llvm.loop !343

middle.block3294:                                 ; preds = %vector.body3285
  %cmp.n3295 = icmp eq i64 %n.vec3284, %i.ktw
  br i1 %cmp.n3295, label %._crit_edge904.i, label %.lr.ph903.i.preheader

.lr.ph903.i.preheader:                            ; preds = %vector.memcheck3267, %.lr.ph903.preheader.i, %middle.block3294
  %indvars.iv1029.i.ph = phi i64 [ %i.ktt, %vector.memcheck3267 ], [ %i.ktt, %.lr.ph903.preheader.i ], [ %i.kui, %middle.block3294 ]
  %indvars.iv1025.i.ph = phi i64 [ %i.ktr, %vector.memcheck3267 ], [ %i.ktr, %.lr.ph903.preheader.i ], [ %i.kuj, %middle.block3294 ]
  %indvars.iv1023.i.ph = phi i64 [ %i.ktq, %vector.memcheck3267 ], [ %i.ktq, %.lr.ph903.preheader.i ], [ %i.kuk, %middle.block3294 ]
  %.0762898.i.ph = phi i32 [ %i.kti, %vector.memcheck3267 ], [ %i.kti, %.lr.ph903.preheader.i ], [ %i.kun, %middle.block3294 ]
  br label %.lr.ph903.i

._crit_edge904.i:                                 ; preds = %.lr.ph903.i, %middle.block3294, %bb.pg
  %i.kvj = add nuw nsw i32 %.0763905.i, 1         ; 2 uses
  %i.kvk = icmp slt i32 %i.kvj, %i.jik
  %indvars.iv.next1022.i = add i32 %indvars.iv1021.i, 112
  %indvars.iv.next1028.i = add i32 %indvars.iv1027.i, 112
  %indvar.next3269 = add i32 %indvar3268, 1
  br i1 %i.kvk, label %bb.pg, label %.preheader828.i.preheader

.preheader828.i.preheader:                        ; preds = %._crit_edge904.i
  %i.kvl = add i32 %smin1147, -9
  %i.kvm = add i32 %smin1147, -9
  br label %.preheader828.i

.lr.ph903.i:                                      ; preds = %.lr.ph903.i.preheader, %.lr.ph903.i
  %indvars.iv1029.i = phi i64 [ %indvars.iv.next1030.i, %.lr.ph903.i ], [ %indvars.iv1029.i.ph, %.lr.ph903.i.preheader ] ; 4 uses
  %indvars.iv1025.i = phi i64 [ %indvars.iv.next1026.i, %.lr.ph903.i ], [ %indvars.iv1025.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %indvars.iv1023.i = phi i64 [ %indvars.iv.next1024.i, %.lr.ph903.i ], [ %indvars.iv1023.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %.0762898.i = phi i32 [ %i.kwi, %.lr.ph903.i ], [ %.0762898.i.ph, %.lr.ph903.i.preheader ]
  %i.kvn = getelementptr inbounds [4 x i8], ptr %i.jho, i64 %indvars.iv1025.i
  %i.kvo = load float, ptr %i.kvn, align 4, !tbaa !22, !noalias !277
  %i.kvp = getelementptr inbounds nuw [4 x i8], ptr %i.jho, i64 %indvars.iv1029.i
  %i.kvq = load float, ptr %i.kvp, align 4, !tbaa !22, !noalias !277
  %i.kvr = fadd reassoc nsz arcp contract afn float %i.kvq, %i.kvo
  %indvars.iv.next1024.i = add nuw nsw i64 %indvars.iv1023.i, 1 ; 2 uses
  %i.kvs = getelementptr inbounds nuw [4 x i8], ptr %i.jho, i64 %indvars.iv.next1024.i
  %i.kvt = load float, ptr %i.kvs, align 4, !tbaa !22, !noalias !277
  %i.kvu = fadd reassoc nsz arcp contract afn float %i.kvr, %i.kvt
  %i.kvv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kvu, float 1.000000e-10) ; 2 uses
  %indvars.iv.next1026.i = add nsw i64 %indvars.iv1025.i, 1 ; 2 uses
  %i.kvw = getelementptr inbounds [4 x i8], ptr %i.jhp, i64 %indvars.iv.next1026.i
  %i.kvx = load float, ptr %i.kvw, align 4, !tbaa !22, !noalias !277
  %i.kvy = getelementptr inbounds nuw [4 x i8], ptr %i.jhp, i64 %indvars.iv1029.i
  %i.kvz = load float, ptr %i.kvy, align 4, !tbaa !22, !noalias !277
  %i.kwa = fadd reassoc nsz arcp contract afn float %i.kvz, %i.kvx
  %i.kwb = getelementptr inbounds nuw [4 x i8], ptr %i.jhp, i64 %indvars.iv1023.i
  %i.kwc = load float, ptr %i.kwb, align 4, !tbaa !22, !noalias !277
  %i.kwd = fadd reassoc nsz arcp contract afn float %i.kwa, %i.kwc
  %i.kwe = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kwd, float 1.000000e-10)
  %i.kwf = fadd reassoc nsz arcp contract afn float %i.kwe, %i.kvv
  %i.kwg = fdiv reassoc nsz arcp contract afn float %i.kvv, %i.kwf
  %i.kwh = getelementptr inbounds nuw [4 x i8], ptr %i.jhk, i64 %indvars.iv1029.i
  store float %i.kwg, ptr %i.kwh, align 4, !tbaa !22, !noalias !277
  %i.kwi = add nuw nsw i32 %.0762898.i, 2         ; 2 uses
  %indvars.iv.next1030.i = add nuw nsw i64 %indvars.iv1029.i, 1
  %i.kwj = icmp slt i32 %i.kwi, %i.knw
  br i1 %i.kwj, label %.lr.ph903.i, label %._crit_edge904.i, !llvm.loop !344

.preheader828.i:                                  ; preds = %.preheader828.i.preheader, %._crit_edge914.i
  %indvar3057 = phi i32 [ 0, %.preheader828.i.preheader ], [ %indvar.next3058, %._crit_edge914.i ] ; 2 uses
  %indvars.iv1038.i = phi i32 [ 452, %.preheader828.i.preheader ], [ %indvars.iv.next1039.i, %._crit_edge914.i ] ; 4 uses
  %indvars.iv1032.i = phi i32 [ 563, %.preheader828.i.preheader ], [ %indvars.iv.next1033.i, %._crit_edge914.i ] ; 2 uses
  %.0755915.i = phi i32 [ 4, %.preheader828.i.preheader ], [ %i.lcl, %._crit_edge914.i ] ; 3 uses
  %i.kwk = mul i32 %indvar3057, 112
  %7 = add i32 %i.kwk, 448
  %i.kwl = zext i32 %7 to i64
  %i.kwm = shl nuw nsw i64 %i.kwl, 1              ; 2 uses
  %scevgep3059.a = getelementptr i8, ptr %scevgep3056, i64 %i.kwm
  %i.kwn = shl nuw i32 %.0755915.i, 1
  %i.kwo = and i32 %i.kwn, 14                     ; 2 uses
  %i.kwp = shl nuw nsw i32 %i.kwo, 1
  %i.kwq = lshr i32 %.fr1043, %i.kwp
  %i.kwr = and i32 %i.kwq, 1                      ; 7 uses
  %i.kws = or disjoint i32 %i.kwr, 4              ; 5 uses
  %i.kwt = icmp slt i32 %i.kws, %i.knw
  br i1 %i.kwt, label %.lr.ph913.i, label %._crit_edge914.i

.lr.ph913.i:                                      ; preds = %.preheader828.i
  %i.kwu = mul nuw nsw i32 %.0755915.i, 112
  %i.kwv = add nsw i32 %i.kwu, -113
  %i.kww = add nsw i32 %i.kwv, %i.kws
  %i.kwx = sdiv i32 %i.kww, 2
  %i.kwy = or disjoint i32 %i.kwr, %i.kwo
  %i.kwz = shl nuw nsw i32 %i.kwy, 1
  %i.kxa = lshr i32 %.fr1043, %i.kwz              ; 2 uses
  %i.kxb = and i32 %i.kxa, 3
  %i.kxc = sub nsw i32 2, %i.kxb
  %i.kxd = sext i32 %i.kxc to i64
  %i.kxe = getelementptr inbounds [50176 x i8], ptr %i.jhs, i64 %i.kxd ; 10 uses
  %i.kxf = add i32 %i.kwr, %indvars.iv1032.i
  %i.kxg = lshr i32 %i.kxf, 1
  %i.kxh = zext nneg i32 %i.kxg to i64            ; 5 uses
  %i.kxi = sext i32 %i.kwx to i64                 ; 5 uses
  %i.kxj = or disjoint i32 %i.kwr, %indvars.iv1038.i
  %i.kxk = lshr exact i32 %indvars.iv1038.i, 1
  %i.kxl = zext nneg i32 %i.kxk to i64            ; 4 uses
  %i.kxm = sext i32 %i.kxj to i64                 ; 5 uses
  %i.kxn = sub i32 %i.kvm, %i.kwr                 ; 2 uses
  %i.kxo = lshr i32 %i.kxn, 1
  %narrow4584 = add nuw i32 %i.kxo, 1
  %i.kxp = zext i32 %narrow4584 to i64            ; 2 uses
  %min.iters.check3210 = icmp ult i32 %i.kxn, 16
  br i1 %min.iters.check3210, label %scalar.ph3209.preheader, label %vector.memcheck3045

scalar.ph3209.preheader:                          ; preds = %vector.body3216, %vector.memcheck3045, %.lr.ph913.i
  %indvars.iv1042.i.ph = phi i64 [ %i.kxm, %vector.memcheck3045 ], [ %i.kxm, %.lr.ph913.i ], [ %i.kyn, %vector.body3216 ]
  %indvars.iv1040.i.ph = phi i64 [ %i.kxl, %vector.memcheck3045 ], [ %i.kxl, %.lr.ph913.i ], [ %i.kyo, %vector.body3216 ]
  %indvars.iv1036.i.ph = phi i64 [ %i.kxi, %vector.memcheck3045 ], [ %i.kxi, %.lr.ph913.i ], [ %i.kyp, %vector.body3216 ]
  %indvars.iv1034.i.ph = phi i64 [ %i.kxh, %vector.memcheck3045 ], [ %i.kxh, %.lr.ph913.i ], [ %i.kyq, %vector.body3216 ]
  %.0754907.i.ph = phi i32 [ %i.kws, %vector.memcheck3045 ], [ %i.kws, %.lr.ph913.i ], [ %i.kyt, %vector.body3216 ]
  br label %scalar.ph3209

vector.memcheck3045:                              ; preds = %.lr.ph913.i
  %i.kxq = or disjoint i32 %indvars.iv1038.i, %i.kwr
  %i.kxr = sext i32 %i.kxq to i64
  %i.kxs = shl nsw i64 %i.kxr, 2                  ; 12 uses
  %i.kxt = and i32 %i.kxa, 3
  %narrow4585 = mul nuw nsw i32 %i.kxt, 50176
  %i.kxu = zext nneg i32 %narrow4585 to i64       ; 2 uses
  %i.kxv = sub nsw i64 %i.kxs, %i.kxu             ; 9 uses
  %scevgep3047 = getelementptr i8, ptr %scevgep3046, i64 %i.kxv ; 20 uses
  %i.kxw = sub i32 %i.kvl, %i.kwr
  %i.kxx = lshr i32 %i.kxw, 1
  %i.kxy = zext nneg i32 %i.kxx to i64            ; 2 uses
  %i.kxz = shl nuw nsw i64 %i.kxy, 3              ; 2 uses
  %i.kya = add nsw i64 %i.kxz, %i.kxs
  %i.kyb = sub nsw i64 %i.kya, %i.kxu             ; 9 uses
  %scevgep3049 = getelementptr i8, ptr %scevgep3048, i64 %i.kyb ; 20 uses
  %i.kyc = shl nuw nsw i64 %i.kxh, 2              ; 2 uses
  %scevgep3050 = getelementptr i8, ptr %i.jhk, i64 %i.kyc
  %i.kyd = shl nuw nsw i64 %i.kxy, 2              ; 3 uses
  %i.kye = getelementptr i8, ptr %scevgep3051, i64 %i.kyd
  %scevgep3052 = getelementptr i8, ptr %i.kye, i64 %i.kyc
  %i.kyf = shl nsw i64 %i.kxi, 2                  ; 2 uses
  %scevgep3053 = getelementptr i8, ptr %i.jhk, i64 %i.kyf
  %i.kyg = getelementptr i8, ptr %scevgep3054, i64 %i.kyd
  %scevgep3055 = getelementptr i8, ptr %i.kyg, i64 %i.kyf
  %i.kyh = getelementptr i8, ptr %scevgep3060.a, i64 %i.kyd
  %scevgep3061.a = getelementptr i8, ptr %i.kyh, i64 %i.kwm
  %scevgep3063.a = getelementptr i8, ptr %scevgep3062.a, i64 %i.kxv
  %scevgep3065.a = getelementptr i8, ptr %scevgep3064.a, i64 %i.kyb
  %scevgep3067.a = getelementptr i8, ptr %scevgep3066.a, i64 %i.kxv
  %scevgep3069.a = getelementptr i8, ptr %scevgep3068.a, i64 %i.kyb
  %scevgep3071.a = getelementptr i8, ptr %scevgep3070.a, i64 %i.kxv
  %scevgep3073.a = getelementptr i8, ptr %scevgep3072.a, i64 %i.kyb
  %scevgep3075.a = getelementptr i8, ptr %scevgep3074.a, i64 %i.kxs
  %i.kyi = add nsw i64 %i.kxz, %i.kxs             ; 9 uses
  %scevgep3077.a = getelementptr i8, ptr %scevgep3076.a, i64 %i.kyi
  %scevgep3079.a = getelementptr i8, ptr %scevgep3078.a, i64 %i.kxs
  %scevgep3081.a = getelementptr i8, ptr %scevgep3080.a, i64 %i.kyi
  %scevgep3083.a = getelementptr i8, ptr %scevgep3082.a, i64 %i.kxv
  %scevgep3085.a = getelementptr i8, ptr %scevgep3084.a, i64 %i.kyb
  %scevgep3087.a = getelementptr i8, ptr %scevgep3086.a, i64 %i.kxv
  %scevgep3089.a = getelementptr i8, ptr %scevgep3088.a, i64 %i.kyb
  %scevgep3091.a = getelementptr i8, ptr %scevgep3090.a, i64 %i.kxv
  %scevgep3093.a = getelementptr i8, ptr %scevgep3092.a, i64 %i.kyb
  %scevgep3095.a = getelementptr i8, ptr %scevgep3094.a, i64 %i.kxs
  %scevgep3097.a = getelementptr i8, ptr %scevgep3096.a, i64 %i.kyi
  %scevgep3099.a = getelementptr i8, ptr %scevgep3098.a, i64 %i.kxv
  %scevgep3101.a = getelementptr i8, ptr %scevgep3100.a, i64 %i.kyb
  %scevgep3103.a = getelementptr i8, ptr %scevgep3102.a, i64 %i.kxs
  %scevgep3105.a = getelementptr i8, ptr %scevgep3104.a, i64 %i.kyi
  %scevgep3107.a = getelementptr i8, ptr %scevgep3106.a, i64 %i.kxv
  %scevgep3109.a = getelementptr i8, ptr %scevgep3108.a, i64 %i.kyb
  %scevgep3111.a = getelementptr i8, ptr %scevgep3110.a, i64 %i.kxs
  %scevgep3113.a = getelementptr i8, ptr %scevgep3112.a, i64 %i.kyi
  %scevgep3115.a = getelementptr i8, ptr %scevgep3114.a, i64 %i.kxs
  %scevgep3117.a = getelementptr i8, ptr %scevgep3116.a, i64 %i.kyi
  %scevgep3119.a = getelementptr i8, ptr %scevgep3118.a, i64 %i.kxs
  %scevgep3121.a = getelementptr i8, ptr %scevgep3120.a, i64 %i.kyi
  %scevgep3123.a = getelementptr i8, ptr %scevgep3122.a, i64 %i.kxs
  %scevgep3125.a = getelementptr i8, ptr %scevgep3124.a, i64 %i.kyi
  %scevgep3127.a = getelementptr i8, ptr %scevgep3126.a, i64 %i.kxs
  %scevgep3129 = getelementptr i8, ptr %scevgep3128, i64 %i.kyi
  %bound03130 = icmp ult ptr %scevgep3047, %scevgep3052
  %bound13131 = icmp ult ptr %scevgep3050, %scevgep3049
  %found.conflict3132 = and i1 %bound03130, %bound13131
  %bound03133 = icmp ult ptr %scevgep3047, %scevgep3055
  %bound13134 = icmp ult ptr %scevgep3053, %scevgep3049
  %found.conflict3135 = and i1 %bound03133, %bound13134
  %conflict.rdx3136 = or i1 %found.conflict3132, %found.conflict3135
  %bound03137 = icmp ult ptr %scevgep3047, %scevgep3061.a
  %bound13138 = icmp ult ptr %scevgep3059.a, %scevgep3049
  %found.conflict3139 = and i1 %bound03137, %bound13138
  %conflict.rdx3140 = or i1 %conflict.rdx3136, %found.conflict3139
  %bound03141 = icmp ult ptr %scevgep3047, %scevgep3065.a
  %bound13142 = icmp ult ptr %scevgep3063.a, %scevgep3049
  %found.conflict3143 = and i1 %bound03141, %bound13142
  %conflict.rdx3144 = or i1 %conflict.rdx3140, %found.conflict3143
  %bound03145 = icmp ult ptr %scevgep3047, %scevgep3069.a
  %bound13146 = icmp ult ptr %scevgep3067.a, %scevgep3049
  %found.conflict3147 = and i1 %bound03145, %bound13146
  %conflict.rdx3148 = or i1 %conflict.rdx3144, %found.conflict3147
  %bound03149 = icmp ult ptr %scevgep3047, %scevgep3073.a
  %bound13150 = icmp ult ptr %scevgep3071.a, %scevgep3049
  %found.conflict3151 = and i1 %bound03149, %bound13150
  %conflict.rdx3152 = or i1 %conflict.rdx3148, %found.conflict3151
  %bound03153 = icmp ult ptr %scevgep3047, %scevgep3077.a
  %bound13154 = icmp ult ptr %scevgep3075.a, %scevgep3049
  %found.conflict3155 = and i1 %bound03153, %bound13154
  %conflict.rdx3156 = or i1 %conflict.rdx3152, %found.conflict3155
  %bound03157 = icmp ult ptr %scevgep3047, %scevgep3081.a
  %bound13158 = icmp ult ptr %scevgep3079.a, %scevgep3049
  %found.conflict3159 = and i1 %bound03157, %bound13158
  %conflict.rdx3160 = or i1 %conflict.rdx3156, %found.conflict3159
  %bound03161 = icmp ult ptr %scevgep3047, %scevgep3085.a
  %bound13162 = icmp ult ptr %scevgep3083.a, %scevgep3049
  %found.conflict3163 = and i1 %bound03161, %bound13162
  %conflict.rdx3164 = or i1 %conflict.rdx3160, %found.conflict3163
  %bound03165 = icmp ult ptr %scevgep3047, %scevgep3089.a
  %bound13166 = icmp ult ptr %scevgep3087.a, %scevgep3049
  %found.conflict3167 = and i1 %bound03165, %bound13166
  %conflict.rdx3168 = or i1 %conflict.rdx3164, %found.conflict3167
  %bound03169 = icmp ult ptr %scevgep3047, %scevgep3093.a
  %bound13170 = icmp ult ptr %scevgep3091.a, %scevgep3049
  %found.conflict3171 = and i1 %bound03169, %bound13170
  %conflict.rdx3172 = or i1 %conflict.rdx3168, %found.conflict3171
  %bound03173 = icmp ult ptr %scevgep3047, %scevgep3097.a
  %bound13174 = icmp ult ptr %scevgep3095.a, %scevgep3049
  %found.conflict3175 = and i1 %bound03173, %bound13174
  %conflict.rdx3176 = or i1 %conflict.rdx3172, %found.conflict3175
  %bound03177 = icmp ult ptr %scevgep3047, %scevgep3101.a
  %bound13178 = icmp ult ptr %scevgep3099.a, %scevgep3049
  %found.conflict3179 = and i1 %bound03177, %bound13178
  %conflict.rdx3180 = or i1 %conflict.rdx3176, %found.conflict3179
  %bound03181 = icmp ult ptr %scevgep3047, %scevgep3105.a
  %bound13182 = icmp ult ptr %scevgep3103.a, %scevgep3049
  %found.conflict3183 = and i1 %bound03181, %bound13182
  %conflict.rdx3184 = or i1 %conflict.rdx3180, %found.conflict3183
  %bound03185 = icmp ult ptr %scevgep3047, %scevgep3109.a
  %bound13186 = icmp ult ptr %scevgep3107.a, %scevgep3049
  %found.conflict3187 = and i1 %bound03185, %bound13186
  %conflict.rdx3188 = or i1 %conflict.rdx3184, %found.conflict3187
  %bound03189 = icmp ult ptr %scevgep3047, %scevgep3113.a
  %bound13190 = icmp ult ptr %scevgep3111.a, %scevgep3049
  %found.conflict3191 = and i1 %bound03189, %bound13190
  %conflict.rdx3192 = or i1 %conflict.rdx3188, %found.conflict3191
  %bound03193 = icmp ult ptr %scevgep3047, %scevgep3117.a
  %bound13194 = icmp ult ptr %scevgep3115.a, %scevgep3049
  %found.conflict3195 = and i1 %bound03193, %bound13194
  %conflict.rdx3196 = or i1 %conflict.rdx3192, %found.conflict3195
  %bound03197 = icmp ult ptr %scevgep3047, %scevgep3121.a
  %bound13198 = icmp ult ptr %scevgep3119.a, %scevgep3049
  %found.conflict3199 = and i1 %bound03197, %bound13198
  %conflict.rdx3200 = or i1 %conflict.rdx3196, %found.conflict3199
  %bound03201 = icmp ult ptr %scevgep3047, %scevgep3125.a
  %bound13202 = icmp ult ptr %scevgep3123.a, %scevgep3049
  %found.conflict3203 = and i1 %bound03201, %bound13202
  %conflict.rdx3204 = or i1 %conflict.rdx3200, %found.conflict3203
  %bound03205 = icmp ult ptr %scevgep3047, %scevgep3129
  %bound13206 = icmp ult ptr %scevgep3127.a, %scevgep3049
  %found.conflict3207 = and i1 %bound03205, %bound13206
  %conflict.rdx3208 = or i1 %conflict.rdx3204, %found.conflict3207
  br i1 %conflict.rdx3208, label %scalar.ph3209.preheader, label %vector.ph3211

vector.ph3211:                                    ; preds = %vector.memcheck3045
  %i.kyj = and i64 %i.kxp, 7                      ; 2 uses
  %i.kyk = icmp eq i64 %i.kyj, 0
  %i.kyl = select i1 %i.kyk, i64 8, i64 %i.kyj
  %n.vec3212 = sub nsw i64 %i.kxp, %i.kyl         ; 6 uses
  %i.kym = shl nsw i64 %n.vec3212, 1
  %i.kyn = add nsw i64 %i.kym, %i.kxm
  %i.kyo = add nsw i64 %n.vec3212, %i.kxl
  %i.kyp = add nsw i64 %n.vec3212, %i.kxi
  %i.kyq = add nsw i64 %n.vec3212, %i.kxh
  %i.kyr = trunc i64 %n.vec3212 to i32
  %i.kys = shl i32 %i.kyr, 1
  %i.kyt = add i32 %i.kws, %i.kys
  %broadcast.splatinsert3213 = insertelement <8 x i64> poison, i64 %i.kxm, i64 0
  %broadcast.splat3214 = shufflevector <8 x i64> %broadcast.splatinsert3213, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3215 = add nuw nsw <8 x i64> %broadcast.splat3214, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4905 = getelementptr [4 x i8], ptr %i.jhk, i64 %i.kxl
  br label %vector.body3216

vector.body3216:                                  ; preds = %vector.body3216, %vector.ph3211
  %index3217 = phi i64 [ 0, %vector.ph3211 ], [ %index.next3259, %vector.body3216 ] ; 5 uses
  %vec.ind3218 = phi <8 x i64> [ %induction3215, %vector.ph3211 ], [ %vec.ind.next3260, %vector.body3216 ] ; 2 uses
  %i.kyu = shl nuw i64 %index3217, 1
  %i.kyv = add nuw i64 %i.kyu, %i.kxm             ; 5 uses
  %i.kyw = add i64 %index3217, %i.kxi             ; 2 uses
  %i.kyx = add nuw i64 %index3217, %i.kxh         ; 2 uses
  %gep4906 = getelementptr [4 x i8], ptr %invariant.gep4905, i64 %index3217
  %wide.load3219.a = load <8 x float>, ptr %gep4906, align 8, !tbaa !22, !alias.scope !345, !noalias !277 ; 2 uses
  %i.kyy = getelementptr inbounds [4 x i8], ptr %i.jhk, i64 %i.kyw
  %wide.load3220.a = load <8 x float>, ptr %i.kyy, align 4, !tbaa !22, !alias.scope !348, !noalias !277
  %i.kyz = getelementptr [4 x i8], ptr %i.jhk, i64 %i.kyw
  %i.kza = getelementptr i8, ptr %i.kyz, i64 4
  %wide.load3221.a = load <8 x float>, ptr %i.kza, align 4, !tbaa !22, !alias.scope !348, !noalias !277
  %i.kzb = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3221.a, %wide.load3220.a
  %i.kzc = getelementptr inbounds nuw [4 x i8], ptr %i.jhk, i64 %i.kyx
  %wide.load3222 = load <8 x float>, ptr %i.kzc, align 4, !tbaa !22, !alias.scope !350, !noalias !277
  %i.kzd = fadd reassoc nsz arcp contract afn <8 x float> %i.kzb, %wide.load3222
  %i.kze = getelementptr inbounds nuw [4 x i8], ptr %i.jhk, i64 %i.kyx
  %i.kzf = getelementptr inbounds nuw i8, ptr %i.kze, i64 4
  %wide.load3223 = load <8 x float>, ptr %i.kzf, align 4, !tbaa !22, !alias.scope !350, !noalias !277
  %i.kzg = fadd reassoc nsz arcp contract afn <8 x float> %i.kzd, %wide.load3223
  %i.kzh = fmul reassoc nsz arcp contract afn <8 x float> %i.kzg, splat (float 2.500000e-01) ; 2 uses
  %i.kzi = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %wide.load3219.a
  %i.kzj = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kzi)
  %i.kzk = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.kzh
  %i.kzl = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kzk)
  %i.kzm = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.kzj, %i.kzl
  %i.kzn = select reassoc nsz arcp contract afn <8 x i1> %i.kzm, <8 x float> %i.kzh, <8 x float> %wide.load3219.a ; 3 uses
  %i.kzo = add nsw i64 %i.kyv, -113               ; 2 uses
  %i.kzp = getelementptr inbounds [4 x i8], ptr %i.kxe, i64 %i.kzo
  %wide.vec3224.a = load <16 x float>, ptr %i.kzp, align 4, !tbaa !22, !alias.scope !352, !noalias !277
  %strided.vec3225.a = shufflevector <16 x float> %wide.vec3224.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kzq = add nuw nsw i64 %i.kyv, 113            ; 2 uses
  %i.kzr = getelementptr inbounds nuw [4 x i8], ptr %i.kxe, i64 %i.kzq
  %wide.vec3226 = load <16 x float>, ptr %i.kzr, align 4, !tbaa !22, !alias.scope !354, !noalias !277
  %strided.vec3227 = shufflevector <16 x float> %wide.vec3226, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kzs = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3225.a, %strided.vec3227
  %i.kzt = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kzs)
  %i.kzu = fadd reassoc nsz arcp contract afn <8 x float> %i.kzt, splat (float f0x3727C5AC) ; 2 uses
  %wide.gep3228 = getelementptr [4 x i8], ptr %i.kxe, <8 x i64> %vec.ind3218 ; 2 uses
  %i.kzv = extractelement <8 x ptr> %wide.gep3228, i64 0 ; 4 uses
  %i.kzw = getelementptr i8, ptr %i.kzv, i64 -1356
  %wide.vec3229.a = load <16 x float>, ptr %i.kzw, align 4, !tbaa !22, !alias.scope !356, !noalias !277
  %strided.vec3230.a = shufflevector <16 x float> %wide.vec3229.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kzx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3225.a, %strided.vec3230.a
  %i.kzy = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kzx)
  %i.kzz = fadd reassoc nsz arcp contract afn <8 x float> %i.kzu, %i.kzy
  %i.laa = getelementptr inbounds nuw [4 x i8], ptr %i.jhu, i64 %i.kyv ; 5 uses
  %wide.vec3231.a = load <16 x float>, ptr %i.laa, align 4, !tbaa !22, !alias.scope !358, !noalias !277
  %strided.vec3232.a = shufflevector <16 x float> %wide.vec3231.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 5 uses
  %i.lab = getelementptr i8, ptr %i.laa, i64 -904
  %wide.vec3233.a = load <16 x float>, ptr %i.lab, align 4, !tbaa !22, !alias.scope !360, !noalias !277
  %strided.vec3234.a = shufflevector <16 x float> %wide.vec3233.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lac = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3232.a, %strided.vec3234.a
  %i.lad = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lac)
  %i.lae = fadd reassoc nsz arcp contract afn <8 x float> %i.kzz, %i.lad ; 2 uses
  %i.laf = add nsw i64 %i.kyv, -111               ; 2 uses
  %i.lag = getelementptr inbounds [4 x i8], ptr %i.kxe, i64 %i.laf
  %wide.vec3235.a = load <16 x float>, ptr %i.lag, align 4, !tbaa !22, !alias.scope !362, !noalias !277
  %strided.vec3236.a = shufflevector <16 x float> %wide.vec3235.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lah = add nuw nsw i64 %i.kyv, 111            ; 2 uses
  %i.lai = getelementptr inbounds nuw [4 x i8], ptr %i.kxe, i64 %i.lah
  %wide.vec3237.a = load <16 x float>, ptr %i.lai, align 4, !tbaa !22, !alias.scope !364, !noalias !277
  %strided.vec3238.a = shufflevector <16 x float> %wide.vec3237.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.laj = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3236.a, %strided.vec3238.a
  %i.lak = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.laj)
  %i.lal = fadd reassoc nsz arcp contract afn <8 x float> %i.lak, splat (float f0x3727C5AC) ; 2 uses
  %i.lam = getelementptr i8, ptr %i.kzv, i64 -1332
  %wide.vec3239.a = load <16 x float>, ptr %i.lam, align 4, !tbaa !22, !alias.scope !366, !noalias !277
  %strided.vec3240.a = shufflevector <16 x float> %wide.vec3239.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lan = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3236.a, %strided.vec3240.a
  %i.lao = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lan)
  %i.lap = fadd reassoc nsz arcp contract afn <8 x float> %i.lal, %i.lao
  %i.laq = getelementptr i8, ptr %i.laa, i64 -888
  %wide.vec3241.a = load <16 x float>, ptr %i.laq, align 4, !tbaa !22, !alias.scope !368, !noalias !277
  %strided.vec3242.a = shufflevector <16 x float> %wide.vec3241.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lar = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3232.a, %strided.vec3242.a
  %i.las = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lar)
  %i.lat = fadd reassoc nsz arcp contract afn <8 x float> %i.lap, %i.las ; 2 uses
  %i.lau = getelementptr inbounds nuw i8, ptr %i.kzv, i64 1332
  %wide.vec3243.a = load <16 x float>, ptr %i.lau, align 4, !tbaa !22, !alias.scope !370, !noalias !277
  %strided.vec3244.a = shufflevector <16 x float> %wide.vec3243.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lav = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3238.a, %strided.vec3244.a
  %i.law = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lav)
  %i.lax = fadd reassoc nsz arcp contract afn <8 x float> %i.law, %i.lal
  %i.lay = getelementptr inbounds nuw i8, ptr %i.laa, i64 888
  %wide.vec3245.a = load <16 x float>, ptr %i.lay, align 4, !tbaa !22, !alias.scope !372, !noalias !277
  %strided.vec3246.a = shufflevector <16 x float> %wide.vec3245.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.laz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3232.a, %strided.vec3246.a
  %i.lba = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.laz)
  %i.lbb = fadd reassoc nsz arcp contract afn <8 x float> %i.lax, %i.lba ; 2 uses
  %i.lbc = getelementptr inbounds nuw i8, ptr %i.kzv, i64 1356
  %wide.vec3247.a = load <16 x float>, ptr %i.lbc, align 4, !tbaa !22, !alias.scope !374, !noalias !277
  %strided.vec3248.a = shufflevector <16 x float> %wide.vec3247.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lbd = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227, %strided.vec3248.a
  %i.lbe = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lbd)
  %i.lbf = fadd reassoc nsz arcp contract afn <8 x float> %i.lbe, %i.kzu
  %i.lbg = getelementptr inbounds nuw i8, ptr %i.laa, i64 904
  %wide.vec3249.a = load <16 x float>, ptr %i.lbg, align 4, !tbaa !22, !alias.scope !376, !noalias !277
  %strided.vec3250.a = shufflevector <16 x float> %wide.vec3249.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lbh = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3232.a, %strided.vec3250.a
  %i.lbi = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lbh)
  %i.lbj = fadd reassoc nsz arcp contract afn <8 x float> %i.lbf, %i.lbi ; 2 uses
  %i.lbk = getelementptr inbounds [4 x i8], ptr %i.jhu, i64 %i.kzo
  %wide.vec3251.a = load <16 x float>, ptr %i.lbk, align 4, !tbaa !22, !alias.scope !378, !noalias !277
  %strided.vec3252.a = shufflevector <16 x float> %wide.vec3251.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lbl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3225.a, %strided.vec3252.a
  %i.lbm = getelementptr inbounds [4 x i8], ptr %i.jhu, i64 %i.laf
  %wide.vec3253.a = load <16 x float>, ptr %i.lbm, align 4, !tbaa !22, !alias.scope !380, !noalias !277
  %strided.vec3254.a = shufflevector <16 x float> %wide.vec3253.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lbn = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3236.a, %strided.vec3254.a
  %i.lbo = getelementptr inbounds nuw [4 x i8], ptr %i.jhu, i64 %i.lah
  %wide.vec3255.a = load <16 x float>, ptr %i.lbo, align 4, !tbaa !22, !alias.scope !382, !noalias !277
  %strided.vec3256.a = shufflevector <16 x float> %wide.vec3255.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lbp = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3238.a, %strided.vec3256.a
  %i.lbq = getelementptr inbounds nuw [4 x i8], ptr %i.jhu, i64 %i.kzq
  %wide.vec3257 = load <16 x float>, ptr %i.lbq, align 4, !tbaa !22, !alias.scope !384, !noalias !277
  %strided.vec3258 = shufflevector <16 x float> %wide.vec3257, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lbr = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227, %strided.vec3258
  %i.lbs = fmul reassoc nsz arcp contract afn <8 x float> %i.lbr, %i.lae
  %i.lbt = fmul reassoc nsz arcp contract afn <8 x float> %i.lbj, %i.lbl
  %i.lbu = fadd reassoc nsz arcp contract afn <8 x float> %i.lbs, %i.lbt
  %i.lbv = fadd reassoc nsz arcp contract afn <8 x float> %i.lbj, %i.lae
  %i.lbw = fdiv reassoc nsz arcp contract afn <8 x float> %i.lbu, %i.lbv ; 2 uses
  %i.lbx = fmul reassoc nsz arcp contract afn <8 x float> %i.lbp, %i.lat
  %i.lby = fmul reassoc nsz arcp contract afn <8 x float> %i.lbn, %i.lbb
  %i.lbz = fadd reassoc nsz arcp contract afn <8 x float> %i.lbx, %i.lby
  %i.lca = fadd reassoc nsz arcp contract afn <8 x float> %i.lbb, %i.lat
  %i.lcb = fdiv reassoc nsz arcp contract afn <8 x float> %i.lbz, %i.lca
  %i.lcc = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.kzn, zeroinitializer
  %i.lcd = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.kzn, splat (float 1.000000e+00)
  %i.lce = select reassoc nsz arcp contract afn <8 x i1> %i.lcd, <8 x float> %i.kzn, <8 x float> splat (float 1.000000e+00)
  %i.lcf = select reassoc nsz arcp contract afn <8 x i1> %i.lcc, <8 x float> %i.lce, <8 x float> zeroinitializer
  %i.lcg = fsub reassoc nsz arcp contract afn <8 x float> %i.lcb, %i.lbw
  %i.lch = fmul reassoc nsz arcp contract afn <8 x float> %i.lcg, %i.lcf
  %i.lci = fadd reassoc nsz arcp contract afn <8 x float> %i.lbw, %i.lch
  %i.lcj = fadd reassoc nsz arcp contract afn <8 x float> %i.lci, %strided.vec3232.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.lcj, <8 x ptr> align 4 %wide.gep3228, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !386, !noalias !388
  %index.next3259 = add nuw i64 %index3217, 8     ; 2 uses
  %vec.ind.next3260 = add nuw nsw <8 x i64> %vec.ind3218, splat (i64 16)
  %i.lck = icmp eq i64 %index.next3259, %n.vec3212
  br i1 %i.lck, label %scalar.ph3209.preheader, label %vector.body3216, !llvm.loop !389

._crit_edge914.i:                                 ; preds = %scalar.ph3209, %.preheader828.i
  %i.lcl = add nuw nsw i32 %.0755915.i, 1         ; 2 uses
  %i.lcm = icmp slt i32 %i.lcl, %i.jik
  %indvars.iv.next1033.i = add i32 %indvars.iv1032.i, 112
  %indvars.iv.next1039.i = add i32 %indvars.iv1038.i, 112
  %indvar.next3058 = add i32 %indvar3057, 1
  br i1 %i.lcm, label %.preheader828.i, label %.preheader.i541.preheader

.preheader.i541.preheader:                        ; preds = %._crit_edge914.i
  %i.lcn = add i32 %smin1147, -9
  %i.lco = add i32 %smin1147, -9
  br label %.preheader.i541

scalar.ph3209:                                    ; preds = %scalar.ph3209.preheader, %scalar.ph3209
  %indvars.iv1042.i = phi i64 [ %indvars.iv.next1043.i, %scalar.ph3209 ], [ %indvars.iv1042.i.ph, %scalar.ph3209.preheader ] ; 7 uses
  %indvars.iv1040.i = phi i64 [ %indvars.iv.next1041.i, %scalar.ph3209 ], [ %indvars.iv1040.i.ph, %scalar.ph3209.preheader ] ; 2 uses
  %indvars.iv1036.i = phi i64 [ %indvars.iv.next1037.i, %scalar.ph3209 ], [ %indvars.iv1036.i.ph, %scalar.ph3209.preheader ] ; 2 uses
  %indvars.iv1034.i = phi i64 [ %indvars.iv.next1035.i, %scalar.ph3209 ], [ %indvars.iv1034.i.ph, %scalar.ph3209.preheader ] ; 2 uses
  %.0754907.i = phi i32 [ %i.lgr, %scalar.ph3209 ], [ %.0754907.i.ph, %scalar.ph3209.preheader ]
  %i.lcp = getelementptr inbounds nuw [4 x i8], ptr %i.jhk, i64 %indvars.iv1040.i
  %i.lcq = load float, ptr %i.lcp, align 4, !tbaa !22, !noalias !277 ; 2 uses
  %i.lcr = getelementptr inbounds [4 x i8], ptr %i.jhk, i64 %indvars.iv1036.i
  %indvars.iv.next1037.i = add nsw i64 %indvars.iv1036.i, 1
  %i.lcs = getelementptr inbounds nuw [4 x i8], ptr %i.jhk, i64 %indvars.iv1034.i
  %indvars.iv.next1035.i = add nuw nsw i64 %indvars.iv1034.i, 1
  %i.lct = load <2 x float>, ptr %i.lcr, align 4, !tbaa !22, !noalias !277
  %i.lcu = load <2 x float>, ptr %i.lcs, align 4, !tbaa !22, !noalias !277
  %i.lcv = shufflevector <2 x float> %i.lcu, <2 x float> %i.lct, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lcw = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.lcv)
  %i.lcx = fmul reassoc nsz arcp contract afn float %i.lcw, 2.500000e-01 ; 2 uses
  %i.lcy = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.lcq
  %i.lcz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcy)
  %i.lda = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.lcx
  %i.ldb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lda)
  %i.ldc = fcmp reassoc nsz arcp contract afn olt float %i.lcz, %i.ldb
  %i.ldd = select reassoc nsz arcp contract afn i1 %i.ldc, float %i.lcx, float %i.lcq ; 3 uses
  %i.lde = add nsw i64 %indvars.iv1042.i, -113    ; 2 uses
  %i.ldf = getelementptr inbounds [4 x i8], ptr %i.kxe, i64 %i.lde
  %i.ldg = load float, ptr %i.ldf, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.ldh = add nuw nsw i64 %indvars.iv1042.i, 113 ; 2 uses
  %i.ldi = getelementptr inbounds nuw [4 x i8], ptr %i.kxe, i64 %i.ldh
  %i.ldj = load float, ptr %i.ldi, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.ldk = fsub reassoc nsz arcp contract afn float %i.ldg, %i.ldj
  %i.ldl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ldk)
  %i.ldm = fadd reassoc nsz arcp contract afn float %i.ldl, f0x3727C5AC ; 2 uses
  %i.ldn = getelementptr [4 x i8], ptr %i.kxe, i64 %indvars.iv1042.i ; 5 uses
  %i.ldo = getelementptr i8, ptr %i.ldn, i64 -1356
  %i.ldp = load float, ptr %i.ldo, align 4, !tbaa !22, !noalias !277
  %i.ldq = fsub reassoc nsz arcp contract afn float %i.ldg, %i.ldp
  %i.ldr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ldq)
  %i.lds = fadd reassoc nsz arcp contract afn float %i.ldm, %i.ldr
  %i.ldt = getelementptr inbounds nuw [4 x i8], ptr %i.jhu, i64 %indvars.iv1042.i ; 5 uses
  %i.ldu = load float, ptr %i.ldt, align 4, !tbaa !22, !noalias !277 ; 5 uses
  %i.ldv = getelementptr i8, ptr %i.ldt, i64 -904
  %i.ldw = load float, ptr %i.ldv, align 4, !tbaa !22, !noalias !277
  %i.ldx = fsub reassoc nsz arcp contract afn float %i.ldu, %i.ldw
  %i.ldy = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ldx)
  %i.ldz = fadd reassoc nsz arcp contract afn float %i.lds, %i.ldy ; 2 uses
  %i.lea = add nsw i64 %indvars.iv1042.i, -111    ; 2 uses
  %i.leb = getelementptr inbounds [4 x i8], ptr %i.kxe, i64 %i.lea
  %i.lec = load float, ptr %i.leb, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.led = add nuw nsw i64 %indvars.iv1042.i, 111 ; 2 uses
  %i.lee = getelementptr inbounds nuw [4 x i8], ptr %i.kxe, i64 %i.led
  %i.lef = load float, ptr %i.lee, align 4, !tbaa !22, !noalias !277 ; 3 uses
  %i.leg = fsub reassoc nsz arcp contract afn float %i.lec, %i.lef
  %i.leh = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.leg)
  %i.lei = fadd reassoc nsz arcp contract afn float %i.leh, f0x3727C5AC ; 2 uses
  %i.lej = getelementptr i8, ptr %i.ldn, i64 -1332
  %i.lek = load float, ptr %i.lej, align 4, !tbaa !22, !noalias !277
  %i.lel = fsub reassoc nsz arcp contract afn float %i.lec, %i.lek
  %i.lem = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lel)
  %i.len = fadd reassoc nsz arcp contract afn float %i.lei, %i.lem
  %i.leo = getelementptr i8, ptr %i.ldt, i64 -888
  %i.lep = load float, ptr %i.leo, align 4, !tbaa !22, !noalias !277
  %i.leq = fsub reassoc nsz arcp contract afn float %i.ldu, %i.lep
  %i.ler = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.leq)
  %i.les = fadd reassoc nsz arcp contract afn float %i.len, %i.ler ; 2 uses
  %i.let = getelementptr inbounds nuw i8, ptr %i.ldn, i64 1332
  %i.leu = load float, ptr %i.let, align 4, !tbaa !22, !noalias !277
  %i.lev = fsub reassoc nsz arcp contract afn float %i.lef, %i.leu
  %i.lew = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lev)
  %i.lex = fadd reassoc nsz arcp contract afn float %i.lew, %i.lei
  %i.ley = getelementptr inbounds nuw i8, ptr %i.ldt, i64 888
  %i.lez = load float, ptr %i.ley, align 4, !tbaa !22, !noalias !277
  %i.lfa = fsub reassoc nsz arcp contract afn float %i.ldu, %i.lez
  %i.lfb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lfa)
  %i.lfc = fadd reassoc nsz arcp contract afn float %i.lex, %i.lfb ; 2 uses
  %i.lfd = getelementptr inbounds nuw i8, ptr %i.ldn, i64 1356
  %i.lfe = load float, ptr %i.lfd, align 4, !tbaa !22, !noalias !277
  %i.lff = fsub reassoc nsz arcp contract afn float %i.ldj, %i.lfe
  %i.lfg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lff)
  %i.lfh = fadd reassoc nsz arcp contract afn float %i.lfg, %i.ldm
  %i.lfi = getelementptr inbounds nuw i8, ptr %i.ldt, i64 904
  %i.lfj = load float, ptr %i.lfi, align 4, !tbaa !22, !noalias !277
  %i.lfk = fsub reassoc nsz arcp contract afn float %i.ldu, %i.lfj
  %i.lfl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lfk)
  %i.lfm = fadd reassoc nsz arcp contract afn float %i.lfh, %i.lfl ; 2 uses
  %i.lfn = getelementptr inbounds [4 x i8], ptr %i.jhu, i64 %i.lde
  %i.lfo = load float, ptr %i.lfn, align 4, !tbaa !22, !noalias !277
  %i.lfp = fsub reassoc nsz arcp contract afn float %i.ldg, %i.lfo
  %i.lfq = getelementptr inbounds [4 x i8], ptr %i.jhu, i64 %i.lea
  %i.lfr = load float, ptr %i.lfq, align 4, !tbaa !22, !noalias !277
  %i.lfs = fsub reassoc nsz arcp contract afn float %i.lec, %i.lfr
  %i.lft = getelementptr inbounds nuw [4 x i8], ptr %i.jhu, i64 %i.led
  %i.lfu = load float, ptr %i.lft, align 4, !tbaa !22, !noalias !277
  %i.lfv = fsub reassoc nsz arcp contract afn float %i.lef, %i.lfu
  %i.lfw = getelementptr inbounds nuw [4 x i8], ptr %i.jhu, i64 %i.ldh
  %i.lfx = load float, ptr %i.lfw, align 4, !tbaa !22, !noalias !277
  %i.lfy = fsub reassoc nsz arcp contract afn float %i.ldj, %i.lfx
  %i.lfz = fmul reassoc nsz arcp contract afn float %i.lfy, %i.ldz
  %i.lga = fmul reassoc nsz arcp contract afn float %i.lfm, %i.lfp
  %i.lgb = fadd reassoc nsz arcp contract afn float %i.lfz, %i.lga
  %i.lgc = fadd reassoc nsz arcp contract afn float %i.lfm, %i.ldz
  %i.lgd = fdiv reassoc nsz arcp contract afn float %i.lgb, %i.lgc ; 2 uses
  %i.lge = fmul reassoc nsz arcp contract afn float %i.lfv, %i.les
  %i.lgf = fmul reassoc nsz arcp contract afn float %i.lfs, %i.lfc
  %i.lgg = fadd reassoc nsz arcp contract afn float %i.lge, %i.lgf
  %i.lgh = fadd reassoc nsz arcp contract afn float %i.lfc, %i.les
  %i.lgi = fdiv reassoc nsz arcp contract afn float %i.lgg, %i.lgh
  %i.lgj = fcmp reassoc nsz arcp contract afn oge float %i.ldd, 0.000000e+00
  %i.lgk = fcmp reassoc nsz arcp contract afn ole float %i.ldd, 1.000000e+00
  %i.lgl = select reassoc nsz arcp contract afn i1 %i.lgk, float %i.ldd, float 1.000000e+00
  %i.lgm = select reassoc nsz arcp contract afn i1 %i.lgj, float %i.lgl, float 0.000000e+00
  %i.lgn = fsub reassoc nsz arcp contract afn float %i.lgi, %i.lgd
  %i.lgo = fmul reassoc nsz arcp contract afn float %i.lgn, %i.lgm
  %i.lgp = fadd reassoc nsz arcp contract afn float %i.lgd, %i.lgo
  %i.lgq = fadd reassoc nsz arcp contract afn float %i.lgp, %i.ldu
  store float %i.lgq, ptr %i.ldn, align 4, !tbaa !22, !noalias !277
  %i.lgr = add nuw nsw i32 %.0754907.i, 2         ; 2 uses
  %indvars.iv.next1043.i = add nuw nsw i64 %indvars.iv1042.i, 2
  %indvars.iv.next1041.i = add nuw nsw i64 %indvars.iv1040.i, 1
  %i.lgs = icmp slt i32 %i.lgr, %i.knw
  br i1 %i.lgs, label %scalar.ph3209, label %._crit_edge914.i, !llvm.loop !390

._crit_edge925.i:                                 ; preds = %._crit_edge922.i, %.preheader829.i, %.preheader830.i, %.preheader832.i
  %i.lgt = icmp eq i32 %.0745937.i, 0
  %i.lgu = select i1 %i.lgt, i32 9, i32 10        ; 4 uses
  %i.lgv = add nuw nsw i32 %i.lgu, %i.jke         ; 3 uses
  %i.lgw = icmp eq i32 %.0745937.i, %i.apl        ; 2 uses
  %.neg793.i = select i1 %i.lgw, i32 -9, i32 -10  ; 2 uses
  %i.lgx = add nsw i32 %i.jkg, %.neg793.i         ; 2 uses
  %i.lgy = icmp slt i32 %i.lgv, %i.lgx
  %or.cond944.i = select i1 %i.jit, i1 %i.lgy, i1 false
  br i1 %or.cond944.i, label %.lr.ph930.preheader.i, label %._crit_edge935.split.i

.lr.ph930.preheader.i:                            ; preds = %._crit_edge925.i
  %i.lgz = add i32 %i.lgu, %indvars.iv1057.i
  %i.lha = shl i32 %i.lgz, 2
  %i.lhb = or disjoint i32 %i.lgu, %i.jix
  %i.lhc = add i32 %.neg793.i, %i.jkg
  %i.lhd = add i32 %i.lhc, %i.jjv
  %i.lhe = sub i32 %i.lhd, %i.lgu                 ; 2 uses
  %i.lhf = zext i32 %i.lhe to i64
  %i.lhg = add nuw nsw i64 %i.lhf, 1              ; 2 uses
  %min.iters.check2941 = icmp ult i32 %i.lhe, 7
  %n.vec2943 = and i64 %i.lhg, 8589934584         ; 5 uses
  %i.lhh = shl nuw nsw i64 %n.vec2943, 2
  %i.lhi = trunc i64 %n.vec2943 to i32
  %i.lhj = add i32 %i.lgv, %i.lhi
  %cmp.n2954 = icmp eq i64 %i.lhg, %n.vec2943
  br label %.lr.ph930.i

.preheader.i541:                                  ; preds = %.preheader.i541.preheader, %._crit_edge922.i
  %indvars.iv1050.i = phi i32 [ %indvars.iv.next1051.i, %._crit_edge922.i ], [ 452, %.preheader.i541.preheader ] ; 3 uses
  %.0744923.i = phi i32 [ %i.lnw, %._crit_edge922.i ], [ 4, %.preheader.i541.preheader ] ; 2 uses
  %i.lhk = shl i32 %.0744923.i, 2
  %i.lhl = and i32 %i.lhk, 28
  %i.lhm = or disjoint i32 %i.lhl, 2
  %i.lhn = lshr i32 %.fr1043, %i.lhm
  %i.lho = and i32 %i.lhn, 1                      ; 5 uses
  %i.lhp = or disjoint i32 %i.lho, 4              ; 4 uses
  %i.lhq = icmp slt i32 %i.lhp, %i.knw
  br i1 %i.lhq, label %.lr.ph921.preheader.i, label %._crit_edge922.i

.lr.ph921.preheader.i:                            ; preds = %.preheader.i541
  %i.lhr = or disjoint i32 %i.lho, %indvars.iv1050.i
  %i.lhs = sext i32 %i.lhr to i64                 ; 5 uses
  %i.lht = sub i32 %i.lco, %i.lho                 ; 2 uses
  %i.lhu = lshr i32 %i.lht, 1
  %narrow4586 = add nuw i32 %i.lhu, 1
  %i.lhv = zext i32 %narrow4586 to i64            ; 2 uses
  %min.iters.check2971 = icmp ult i32 %i.lht, 16
  br i1 %min.iters.check2971, label %.lr.ph921.i.preheader, label %vector.memcheck2958

.lr.ph921.i.preheader:                            ; preds = %vector.body2977, %vector.memcheck2958, %.lr.ph921.preheader.i
  %indvars.iv1052.i.ph = phi i64 [ %i.lhs, %vector.memcheck2958 ], [ %i.lhs, %.lr.ph921.preheader.i ], [ %i.lii, %vector.body2977 ]
  %.0743918.i.ph = phi i32 [ %i.lhp, %vector.memcheck2958 ], [ %i.lhp, %.lr.ph921.preheader.i ], [ %i.lil, %vector.body2977 ]
  br label %.lr.ph921.i

vector.memcheck2958:                              ; preds = %.lr.ph921.preheader.i
  %i.lhw = or disjoint i32 %indvars.iv1050.i, %i.lho
  %i.lhx = sext i32 %i.lhw to i64
  %i.lhy = shl nsw i64 %i.lhx, 2                  ; 3 uses
  %scevgep2960 = getelementptr i8, ptr %scevgep2959, i64 %i.lhy
  %i.lhz = sub i32 %i.lcn, %i.lho
  %i.lia = lshr i32 %i.lhz, 1
  %i.lib = zext nneg i32 %i.lia to i64
  %i.lic = shl nuw nsw i64 %i.lib, 3
  %i.lid = add nsw i64 %i.lic, %i.lhy             ; 2 uses
  %scevgep2962 = getelementptr i8, ptr %scevgep2961, i64 %i.lid
  %scevgep2964 = getelementptr i8, ptr %scevgep2963, i64 %i.lhy
  %scevgep2966 = getelementptr i8, ptr %scevgep2965, i64 %i.lid
  %bound02967 = icmp ult ptr %scevgep2960, %scevgep2966
  %bound12968 = icmp ult ptr %scevgep2964, %scevgep2962
  %found.conflict2969 = and i1 %bound02967, %bound12968
  br i1 %found.conflict2969, label %.lr.ph921.i.preheader, label %vector.ph2972
end_hunk_1
begin_hunk_2_@process:bb.a
.lr.ph1059.split.us.i:                            ; preds = %.lr.ph1059.i
  %i.niw = icmp slt i32 %.09261062.i, %i.ayd
  br i1 %i.niw, label %.lr.ph1059.split.us.split.preheader.i, label %.lr.ph1059.split.us.split.us.i.preheader

.lr.ph1059.split.us.split.us.i.preheader:         ; preds = %.lr.ph1059.split.us.i
  br i1 %i.mui, label %.lr.ph1059.split.us.split.us.i.epil.preheader, label %.lr.ph1059.split.us.split.us.i.preheader.new

.lr.ph1059.split.us.split.us.i.preheader.new:     ; preds = %.lr.ph1059.split.us.split.us.i.preheader
  %i.nix = shl nuw nsw i32 %i.nid, 1
  %i.niy = lshr i32 %.fr1043, %i.nix
  %i.niz = and i32 %i.niy, 3                      ; 2 uses
  %i.nja = zext nneg i32 %i.niz to i64
  %i.njb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nja
  %i.njc = load ptr, ptr %i.njb, align 8, !tbaa !407, !noalias !408
  %i.njd = getelementptr inbounds nuw [4 x i8], ptr %i.njc, i64 %i.nif
  %.not955.us.us.i = icmp eq i32 %i.niz, 1
  %.tr.i958.us.us.i.1 = shl nuw nsw i32 %i.nid, 1
  %i.nje = or disjoint i32 %.tr.i958.us.us.i.1, 2
  %i.njf = lshr i32 %.fr1043, %i.nje
  %i.njg = and i32 %i.njf, 3                      ; 2 uses
  %i.njh = zext nneg i32 %i.njg to i64
  %i.nji = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.njh
  %i.njj = load ptr, ptr %i.nji, align 8, !tbaa !407, !noalias !408
  %i.njk = getelementptr inbounds nuw [4 x i8], ptr %i.njj, i64 %i.nif
  %.not955.us.us.i.1 = icmp eq i32 %i.njg, 1
  br label %.lr.ph1059.split.us.split.us.i

.lr.ph1059.split.us.split.preheader.i:            ; preds = %.lr.ph1059.split.us.i
  %invariant.gep1371.i = getelementptr inbounds nuw [4 x i8], ptr %i.lxf, i64 %i.nif
  br label %.lr.ph1059.split.us.split.i

.lr.ph1059.split.us.split.us.i:                   ; preds = %bb.qs, %.lr.ph1059.split.us.split.us.i.preheader.new
  %indvars.iv1244.i = phi i64 [ 0, %.lr.ph1059.split.us.split.us.i.preheader.new ], [ %indvars.iv.next1245.i.1, %bb.qs ] ; 4 uses
  %niter4754 = phi i64 [ 0, %.lr.ph1059.split.us.split.us.i.preheader.new ], [ %niter4754.next.1, %bb.qs ]
  %i.njl = getelementptr inbounds nuw [4 x i8], ptr %i.njd, i64 %indvars.iv1244.i
  store float 0.000000e+00, ptr %i.njl, align 4, !tbaa !22, !noalias !402
  br i1 %.not955.us.us.i, label %.lr.ph1059.split.us.split.us.i.1, label %bb.qq

bb.qq:                                            ; preds = %.lr.ph1059.split.us.split.us.i
  %i.njm = getelementptr inbounds nuw [4 x i8], ptr %i.nig, i64 %indvars.iv1244.i
  store float 0.000000e+00, ptr %i.njm, align 8, !tbaa !22, !noalias !402
  br label %.lr.ph1059.split.us.split.us.i.1

.lr.ph1059.split.us.split.us.i.1:                 ; preds = %bb.qq, %.lr.ph1059.split.us.split.us.i
  %indvars.iv.next1245.i = or disjoint i64 %indvars.iv1244.i, 1 ; 2 uses
  %i.njn = getelementptr inbounds nuw [4 x i8], ptr %i.njk, i64 %indvars.iv.next1245.i
  store float 0.000000e+00, ptr %i.njn, align 4, !tbaa !22, !noalias !402
  br i1 %.not955.us.us.i.1, label %bb.qs, label %bb.qr

bb.qr:                                            ; preds = %.lr.ph1059.split.us.split.us.i.1
  %i.njo = getelementptr inbounds nuw [4 x i8], ptr %i.nig, i64 %indvars.iv.next1245.i
  store float 0.000000e+00, ptr %i.njo, align 4, !tbaa !22, !noalias !402
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qr, %.lr.ph1059.split.us.split.us.i.1
  %indvars.iv.next1245.i.1 = add nuw nsw i64 %indvars.iv1244.i, 2 ; 2 uses
  %niter4754.next.1 = add i64 %niter4754, 2       ; 2 uses
  %niter4754.ncmp.1.not = icmp eq i64 %niter4754.next.1, %unroll_iter4753
  br i1 %niter4754.ncmp.1.not, label %._crit_edge1060.i.loopexit4648.unr-lcssa, label %.lr.ph1059.split.us.split.us.i

.lr.ph1059.split.us.split.i:                      ; preds = %bb.qv, %.lr.ph1059.split.us.split.preheader.i
  %indvars.iv1247.i = phi i64 [ 0, %.lr.ph1059.split.us.split.preheader.i ], [ %indvars.iv.next1248.i, %bb.qv ] ; 6 uses
  %.09241057.us.i = phi i32 [ %i.mud, %.lr.ph1059.split.us.split.preheader.i ], [ %i.nkg, %bb.qv ] ; 2 uses
  %i.njp = trunc nuw nsw i64 %indvars.iv1247.i to i32
  %i.njq = and i32 %i.njp, 1
  %.tr.i958.us.i = or disjoint i32 %i.njq, %i.nid
  %i.njr = shl nuw nsw i32 %.tr.i958.us.i, 1
  %i.njs = lshr i32 %.fr1043, %i.njr
  %i.njt = and i32 %i.njs, 3                      ; 3 uses
  %i.nju = icmp ult i32 %.09241057.us.i, %i.bo
  %i.njv = zext nneg i32 %i.njt to i64
  %i.njw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.njv
  %i.njx = load ptr, ptr %i.njw, align 8, !tbaa !407, !noalias !408
  %i.njy = getelementptr inbounds nuw [4 x i8], ptr %i.njx, i64 %i.nif
  %i.njz = getelementptr inbounds nuw [4 x i8], ptr %i.njy, i64 %indvars.iv1247.i ; 2 uses
  br i1 %i.nju, label %bb.qt, label %.thread.i562

bb.qt:                                            ; preds = %.lr.ph1059.split.us.split.i
  %gep1372.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1371.i, i64 %indvars.iv1247.i
  %i.nka = load float, ptr %gep1372.i, align 4, !tbaa !22, !noalias !402 ; 2 uses
  store float %i.nka, ptr %i.njz, align 4, !tbaa !22, !noalias !402
  %.not955.us.i = icmp eq i32 %i.njt, 1
  br i1 %.not955.us.i, label %bb.qv, label %bb.qu

.thread.i562:                                     ; preds = %.lr.ph1059.split.us.split.i
  store float 0.000000e+00, ptr %i.njz, align 4, !tbaa !22, !noalias !402
  %.not955.us1351.i = icmp eq i32 %i.njt, 1
  br i1 %.not955.us1351.i, label %bb.qv, label %.thread1352.i

bb.qu:                                            ; preds = %bb.qt
  %i.nkb = getelementptr inbounds nuw [4 x i8], ptr %i.nih, i64 %indvars.iv1247.i
  %i.nkc = load float, ptr %i.nkb, align 4, !tbaa !22, !noalias !402
  %i.nkd = fadd reassoc nsz arcp contract afn float %i.nkc, %i.nka
  br label %.thread1352.i

.thread1352.i:                                    ; preds = %bb.qu, %.thread.i562
  %i.nke = phi reassoc nsz arcp contract afn float [ %i.nkd, %bb.qu ], [ 0.000000e+00, %.thread.i562 ]
  %i.nkf = getelementptr inbounds nuw [4 x i8], ptr %i.nig, i64 %indvars.iv1247.i
  store float %i.nke, ptr %i.nkf, align 4, !tbaa !22, !noalias !402
  br label %bb.qv

bb.qv:                                            ; preds = %.thread1352.i, %.thread.i562, %bb.qt
  %indvars.iv.next1248.i = add nuw nsw i64 %indvars.iv1247.i, 1 ; 2 uses
  %i.nkg = add nsw i32 %.09241057.us.i, 1
  %i.nkh = icmp slt i64 %indvars.iv.next1248.i, %i.muf
  br i1 %i.nkh, label %.lr.ph1059.split.us.split.i, label %._crit_edge1060.i

._crit_edge1060.i.loopexit4648.unr-lcssa:         ; preds = %bb.qs
  br i1 %lcmp.mod4751.not, label %._crit_edge1060.i, label %.lr.ph1059.split.us.split.us.i.epil.preheader

.lr.ph1059.split.us.split.us.i.epil.preheader:    ; preds = %._crit_edge1060.i.loopexit4648.unr-lcssa, %.lr.ph1059.split.us.split.us.i.preheader
  %indvars.iv1244.i.epil.init = phi i64 [ 0, %.lr.ph1059.split.us.split.us.i.preheader ], [ %indvars.iv.next1245.i.1, %._crit_edge1060.i.loopexit4648.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4752)
  %i.nki = trunc nuw nsw i64 %indvars.iv1244.i.epil.init to i32
  %i.nkj = and i32 %i.nki, 1
  %.tr.i958.us.us.i.epil = or disjoint i32 %i.nkj, %i.nid
  %i.nkk = shl nuw nsw i32 %.tr.i958.us.us.i.epil, 1
  %i.nkl = lshr i32 %.fr1043, %i.nkk
  %i.nkm = and i32 %i.nkl, 3                      ; 2 uses
  %i.nkn = zext nneg i32 %i.nkm to i64
  %i.nko = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nkn
  %i.nkp = load ptr, ptr %i.nko, align 8, !tbaa !407, !noalias !408
  %i.nkq = getelementptr inbounds nuw [4 x i8], ptr %i.nkp, i64 %i.nif
  %i.nkr = getelementptr inbounds nuw [4 x i8], ptr %i.nkq, i64 %indvars.iv1244.i.epil.init
  store float 0.000000e+00, ptr %i.nkr, align 4, !tbaa !22, !noalias !402
  %.not955.us.us.i.epil = icmp eq i32 %i.nkm, 1
  br i1 %.not955.us.us.i.epil, label %._crit_edge1060.i, label %bb.qw

bb.qw:                                            ; preds = %.lr.ph1059.split.us.split.us.i.epil.preheader
  %i.nks = getelementptr inbounds nuw [4 x i8], ptr %i.nig, i64 %indvars.iv1244.i.epil.init
  store float 0.000000e+00, ptr %i.nks, align 4, !tbaa !22, !noalias !402
  br label %._crit_edge1060.i

._crit_edge1060.i.loopexit4649.unr-lcssa:         ; preds = %bb.qx
  br i1 %lcmp.mod4743.not, label %._crit_edge1060.i, label %.thread978.i.epil.preheader

.thread978.i.epil.preheader:                      ; preds = %._crit_edge1060.i.loopexit4649.unr-lcssa, %.thread978.i.preheader
  %indvars.iv1241.i.epil.init = phi i64 [ 0, %.thread978.i.preheader ], [ %indvars.iv.next1242.i.1, %._crit_edge1060.i.loopexit4649.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4744)
  %i.nkt = trunc nuw nsw i64 %indvars.iv1241.i.epil.init to i32
  %i.nku = and i32 %i.nkt, 1
  %.tr.i958.i.epil = or disjoint i32 %i.nku, %i.nid
  %i.nkv = shl nuw nsw i32 %.tr.i958.i.epil, 1
  %i.nkw = lshr i32 %.fr1043, %i.nkv
  %i.nkx = and i32 %i.nkw, 3                      ; 2 uses
  %i.nky = zext nneg i32 %i.nkx to i64
  %i.nkz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nky
  %i.nla = load ptr, ptr %i.nkz, align 8, !tbaa !407, !noalias !408
  %i.nlb = getelementptr inbounds nuw [4 x i8], ptr %i.nla, i64 %i.nif
  %i.nlc = getelementptr inbounds nuw [4 x i8], ptr %i.nlb, i64 %indvars.iv1241.i.epil.init
  store float 0.000000e+00, ptr %i.nlc, align 4, !tbaa !22, !noalias !402
  %.not955979.i.epil = icmp eq i32 %i.nkx, 1
  br i1 %.not955979.i.epil, label %._crit_edge1060.i, label %.thread980.i.epil

.thread980.i.epil:                                ; preds = %.thread978.i.epil.preheader
  %i.nld = getelementptr inbounds nuw [4 x i8], ptr %i.nig, i64 %indvars.iv1241.i.epil.init
  store float 0.000000e+00, ptr %i.nld, align 4, !tbaa !22, !noalias !402
  br label %._crit_edge1060.i

._crit_edge1060.i:                                ; preds = %._crit_edge1060.i.loopexit4649.unr-lcssa, %.thread980.i.epil, %.thread978.i.epil.preheader, %._crit_edge1060.i.loopexit4648.unr-lcssa, %bb.qw, %.lr.ph1059.split.us.split.us.i.epil.preheader, %bb.qv
  %indvars.iv.next1251.i = add nuw nsw i64 %indvars.iv1250.i, 1 ; 2 uses
  %i.nle = add i32 %.09261062.i, 1
  %exitcond1107.not = icmp eq i64 %indvars.iv.next1251.i, %smax1106
  br i1 %exitcond1107.not, label %.preheader1016.i, label %.lr.ph1059.i

.thread978.i:                                     ; preds = %bb.qx, %.thread978.i.preheader.new
  %indvars.iv1241.i = phi i64 [ 0, %.thread978.i.preheader.new ], [ %indvars.iv.next1242.i.1, %bb.qx ] ; 4 uses
  %niter4746 = phi i64 [ 0, %.thread978.i.preheader.new ], [ %niter4746.next.1, %bb.qx ]
  %i.nlf = getelementptr inbounds nuw [4 x i8], ptr %i.nio, i64 %indvars.iv1241.i
  store float 0.000000e+00, ptr %i.nlf, align 4, !tbaa !22, !noalias !402
  br i1 %.not955979.i, label %.thread978.i.1, label %.thread980.i

.thread980.i:                                     ; preds = %.thread978.i
  %i.nlg = getelementptr inbounds nuw [4 x i8], ptr %i.nig, i64 %indvars.iv1241.i
  store float 0.000000e+00, ptr %i.nlg, align 8, !tbaa !22, !noalias !402
  br label %.thread978.i.1

.thread978.i.1:                                   ; preds = %.thread980.i, %.thread978.i
  %indvars.iv.next1242.i = or disjoint i64 %indvars.iv1241.i, 1 ; 2 uses
  %i.nlh = getelementptr inbounds nuw [4 x i8], ptr %i.niv, i64 %indvars.iv.next1242.i
  store float 0.000000e+00, ptr %i.nlh, align 4, !tbaa !22, !noalias !402
  br i1 %.not955979.i.1, label %bb.qx, label %.thread980.i.1

.thread980.i.1:                                   ; preds = %.thread978.i.1
  %i.nli = getelementptr inbounds nuw [4 x i8], ptr %i.nig, i64 %indvars.iv.next1242.i
  store float 0.000000e+00, ptr %i.nli, align 4, !tbaa !22, !noalias !402
  br label %bb.qx

bb.qx:                                            ; preds = %.thread980.i.1, %.thread978.i.1
  %indvars.iv.next1242.i.1 = add nuw nsw i64 %indvars.iv1241.i, 2 ; 2 uses
  %niter4746.next.1 = add i64 %niter4746, 2       ; 2 uses
  %niter4746.ncmp.1.not = icmp eq i64 %niter4746.next.1, %unroll_iter4745
  br i1 %niter4746.ncmp.1.not, label %._crit_edge1060.i.loopexit4649.unr-lcssa, label %.thread978.i

.preheader1015.i:                                 ; preds = %._crit_edge1068.i
  %i.nlj = zext i32 %i.nhz to i64                 ; 3 uses
  br label %bb.qz

bb.qy:                                            ; preds = %._crit_edge1068.i, %.lr.ph1070.i
  %indvar4182 = phi i64 [ %indvar.next4183, %._crit_edge1068.i ], [ 0, %.lr.ph1070.i ] ; 2 uses
  %indvars.iv1256.i = phi i64 [ %indvars.iv.next1257.i, %._crit_edge1068.i ], [ 1, %.lr.ph1070.i ] ; 3 uses
  %i.nlk = mul nuw nsw i64 %indvar4182, 544       ; 6 uses
  %i.nll = getelementptr i8, ptr %i.lwz, i64 %i.nlk
  %scevgep4189 = getelementptr i8, ptr %i.nll, i64 73988
  %i.nlm = getelementptr i8, ptr %i.lwz, i64 %i.nlk
  %scevgep4191 = getelementptr i8, ptr %i.nlm, i64 75080
  %indvars.iv1256.tr.i = trunc i64 %indvars.iv1256.i to i32
  %i.nln = shl i32 %indvars.iv1256.tr.i, 1
  %i.nlo = and i32 %i.nln, 14                     ; 2 uses
  %i.nlp = shl nuw nsw i32 %i.nlo, 1
  %i.nlq = lshr i32 %.fr1043, %i.nlp              ; 3 uses
  %i.nlr = and i32 %i.nlq, 1                      ; 3 uses
  %i.nls = icmp slt i32 %i.nlr, %i.nib
  br i1 %i.nls, label %.lr.ph1067.i, label %._crit_edge1068.i

.lr.ph1067.i:                                     ; preds = %bb.qy
  %i.nlt = or disjoint i32 %i.nlr, %i.nlo
  %i.nlu = shl nuw nsw i32 %i.nlt, 1
  %i.nlv = lshr i32 %.fr1043, %i.nlu
  %i.nlw = and i32 %i.nlv, 3                      ; 2 uses
  %i.nlx = zext nneg i32 %i.nlw to i64
  %i.nly = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nlx
  %i.nlz = load ptr, ptr %i.nly, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.nma = mul nuw nsw i64 %indvars.iv1256.i, 136 ; 3 uses
  %i.nmb = getelementptr inbounds nuw [4 x i8], ptr %i.nlz, i64 %i.nma ; 2 uses
  %i.nmc = getelementptr inbounds nuw [4 x i8], ptr %i.lxb, i64 %i.nma ; 2 uses
  %i.nmd = sub nsw i32 2, %i.nlw
  %i.nme = sext i32 %i.nmd to i64
  %i.nmf = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nme
  %i.nmg = load ptr, ptr %i.nmf, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.nmh = getelementptr inbounds nuw [4 x i8], ptr %i.nmg, i64 %i.nma ; 2 uses
  %narrow1347.i = add nuw nsw i32 %i.nlr, 1
  %i.nmi = zext nneg i32 %narrow1347.i to i64     ; 5 uses
  %i.nmj = and i32 %i.nlq, 1
  %i.nmk = zext nneg i32 %i.nmj to i64            ; 2 uses
  %i.nml = add nuw nsw i64 %i.nmk, 3
  %i.nmm = call i64 @llvm.smax.i64(i64 %i.nia, i64 %i.nml)
  %i.nmn = add nsw i64 %i.nmm, -2
  %i.nmo = sub i64 %i.nmn, %i.nmk                 ; 2 uses
  %i.nmp = lshr i64 %i.nmo, 1
  %i.nmq = add nuw nsw i64 %i.nmp, 1              ; 2 uses
  %min.iters.check4205 = icmp ult i64 %i.nmo, 16
  br i1 %min.iters.check4205, label %scalar.ph4204.preheader, label %vector.memcheck4181

scalar.ph4204.preheader:                          ; preds = %vector.body4211, %vector.memcheck4181, %.lr.ph1067.i
  %indvars.iv1253.i.ph = phi i64 [ %i.nmi, %vector.memcheck4181 ], [ %i.nmi, %.lr.ph1067.i ], [ %i.nnn, %vector.body4211 ]
  br label %scalar.ph4204

vector.memcheck4181:                              ; preds = %.lr.ph1067.i
  %i.nmr = and i32 %i.nlq, 1
  %i.nms = zext nneg i32 %i.nmr to i64            ; 3 uses
  %i.nmt = shl nuw nsw i64 %i.nms, 2              ; 6 uses
  %8 = getelementptr i8, ptr %i.nlz, i64 %i.nlk
  %i.nmu = getelementptr i8, ptr %8, i64 544
  %scevgep4184.a = getelementptr i8, ptr %i.nmu, i64 %i.nmt ; 2 uses
  %i.nmv = add nuw nsw i64 %i.nms, 3
  %smax4185 = call i64 @llvm.smax.i64(i64 %i.nia, i64 %i.nmv)
  %i.nmw = add nsw i64 %smax4185, -2
  %i.nmx = sub i64 %i.nmw, %i.nms
  %i.nmy = shl nuw nsw i64 %i.nmx, 2
  %i.nmz = and i64 %i.nmy, 9223372036854775800    ; 3 uses
  %i.nna = getelementptr i8, ptr %i.nlz, i64 %i.nlk
  %i.nnb = getelementptr i8, ptr %i.nna, i64 556
  %i.nnc = getelementptr i8, ptr %i.nnb, i64 %i.nmz
  %scevgep4186.a = getelementptr i8, ptr %i.nnc, i64 %i.nmt ; 2 uses
  %i.nnd = getelementptr i8, ptr %i.nmg, i64 %i.nlk
  %i.nne = getelementptr i8, ptr %i.nnd, i64 4
  %scevgep4187 = getelementptr i8, ptr %i.nne, i64 %i.nmt ; 2 uses
  %i.nnf = getelementptr i8, ptr %i.nmg, i64 %i.nlk
  %i.nng = getelementptr i8, ptr %i.nnf, i64 1096
  %i.nnh = getelementptr i8, ptr %i.nng, i64 %i.nmz
  %scevgep4188.a = getelementptr i8, ptr %i.nnh, i64 %i.nmt ; 2 uses
  %scevgep4190 = getelementptr i8, ptr %scevgep4189, i64 %i.nmt ; 2 uses
  %i.nni = getelementptr i8, ptr %scevgep4191, i64 %i.nmz
  %scevgep4192 = getelementptr i8, ptr %i.nni, i64 %i.nmt ; 2 uses
  %bound04193 = icmp ult ptr %scevgep4184.a, %scevgep4188.a
  %bound14194 = icmp ult ptr %scevgep4187, %scevgep4186.a
  %found.conflict4195 = and i1 %bound04193, %bound14194
  %bound04196.a = icmp ult ptr %scevgep4184.a, %scevgep4192
  %bound14197.a = icmp ult ptr %scevgep4190, %scevgep4186.a
  %found.conflict4198.a = and i1 %bound04196.a, %bound14197.a
  %conflict.rdx4199.a = or i1 %found.conflict4195, %found.conflict4198.a
  %bound04200 = icmp ult ptr %scevgep4187, %scevgep4192
  %bound14201 = icmp ult ptr %scevgep4190, %scevgep4188.a
  %found.conflict4202 = and i1 %bound04200, %bound14201
  %conflict.rdx4203 = or i1 %conflict.rdx4199.a, %found.conflict4202
  br i1 %conflict.rdx4203, label %scalar.ph4204.preheader, label %vector.ph4206

vector.ph4206:                                    ; preds = %vector.memcheck4181
  %i.nnj = and i64 %i.nmq, 7                      ; 2 uses
  %i.nnk = icmp eq i64 %i.nnj, 0
  %i.nnl = select i1 %i.nnk, i64 8, i64 %i.nnj
  %n.vec4207 = sub nsw i64 %i.nmq, %i.nnl         ; 2 uses
  %i.nnm = shl i64 %n.vec4207, 1
  %i.nnn = add i64 %i.nnm, %i.nmi
  %broadcast.splatinsert4208 = insertelement <8 x i64> poison, i64 %i.nmi, i64 0
  %broadcast.splat4209 = shufflevector <8 x i64> %broadcast.splatinsert4208, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4210 = add nuw nsw <8 x i64> %broadcast.splat4209, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4883.a = getelementptr [4 x i8], ptr %i.nmc, i64 %i.nmi
  br label %vector.body4211

vector.body4211:                                  ; preds = %vector.body4211, %vector.ph4206
  %index4212 = phi i64 [ 0, %vector.ph4206 ], [ %index.next4234, %vector.body4211 ] ; 2 uses
  %vec.ind4213 = phi <8 x i64> [ %induction4210, %vector.ph4206 ], [ %vec.ind.next4235, %vector.body4211 ] ; 3 uses
  %wide.gep4214 = getelementptr inbounds nuw [4 x i8], ptr %i.nmb, <8 x i64> %vec.ind4213 ; 2 uses
  %i.nno = extractelement <8 x ptr> %wide.gep4214, i64 0 ; 2 uses
  %.idx4572.a = shl nuw i64 %index4212, 3
  %gep4884.a = getelementptr i8, ptr %invariant.gep4883.a, i64 %.idx4572.a ; 4 uses
  %i.nnp = getelementptr inbounds i8, ptr %gep4884.a, i64 -4
  %wide.vec4215 = load <16 x float>, ptr %i.nnp, align 4, !tbaa !22, !alias.scope !420, !noalias !402 ; 2 uses
  %strided.vec4216 = shufflevector <16 x float> %wide.vec4215, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4217.a = shufflevector <16 x float> %wide.vec4215, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nnq = getelementptr inbounds i8, ptr %i.nno, i64 -4
  %wide.vec4218.a = load <16 x float>, ptr %i.nnq, align 4, !tbaa !22, !alias.scope !423, !noalias !402
  %strided.vec4219.a = shufflevector <16 x float> %wide.vec4218.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nnr = getelementptr inbounds nuw i8, ptr %i.nno, i64 4
  %wide.vec4220 = load <16 x float>, ptr %i.nnr, align 4, !tbaa !22, !alias.scope !423, !noalias !402
  %strided.vec4221 = shufflevector <16 x float> %wide.vec4220, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4222.a = load <16 x float>, ptr %gep4884.a, align 4, !tbaa !22, !alias.scope !420, !noalias !402 ; 2 uses
  %strided.vec4223.a = shufflevector <16 x float> %wide.vec4222.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4224 = shufflevector <16 x float> %wide.vec4222.a, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nns = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4219.a, %strided.vec4221
  %i.nnt = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4216, %strided.vec4224
  %i.nnu = fsub reassoc nsz arcp contract afn <8 x float> %i.nns, %i.nnt
  %i.nnv = fmul reassoc nsz arcp contract afn <8 x float> %i.nnu, splat (float 5.000000e-01)
  %i.nnw = fadd reassoc nsz arcp contract afn <8 x float> %i.nnv, %strided.vec4217.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nnw, <8 x ptr> align 4 %wide.gep4214, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !423, !noalias !425
  %wide.gep4225 = getelementptr inbounds nuw [4 x i8], ptr %i.nmh, <8 x i64> %vec.ind4213 ; 2 uses
  %i.nnx = extractelement <8 x ptr> %wide.gep4225, i64 0 ; 2 uses
  %i.nny = getelementptr inbounds i8, ptr %i.nnx, i64 -544
  %wide.vec4226.a = load <16 x float>, ptr %i.nny, align 4, !tbaa !22, !alias.scope !427, !noalias !402
  %strided.vec4227.a = shufflevector <16 x float> %wide.vec4226.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nnz = getelementptr inbounds i8, ptr %gep4884.a, i64 -544
  %wide.vec4228.a = load <16 x float>, ptr %i.nnz, align 4, !tbaa !22, !alias.scope !420, !noalias !402
  %strided.vec4229.a = shufflevector <16 x float> %wide.vec4228.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.noa = getelementptr inbounds nuw i8, ptr %i.nnx, i64 544
  %wide.vec4230 = load <16 x float>, ptr %i.noa, align 4, !tbaa !22, !alias.scope !427, !noalias !402
  %strided.vec4231 = shufflevector <16 x float> %wide.vec4230, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nob = getelementptr inbounds nuw i8, ptr %gep4884.a, i64 544
  %wide.vec4232 = load <16 x float>, ptr %i.nob, align 4, !tbaa !22, !alias.scope !420, !noalias !402
  %strided.vec4233 = shufflevector <16 x float> %wide.vec4232, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.noc = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4227.a, %strided.vec4231
  %i.nod = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4229.a, %strided.vec4233
  %i.noe = fsub reassoc nsz arcp contract afn <8 x float> %i.noc, %i.nod
  %i.nof = fmul reassoc nsz arcp contract afn <8 x float> %i.noe, splat (float 5.000000e-01)
  %i.nog = fadd reassoc nsz arcp contract afn <8 x float> %i.nof, %strided.vec4223.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nog, <8 x ptr> align 4 %wide.gep4225, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !427, !noalias !428
  %index.next4234 = add nuw i64 %index4212, 8     ; 2 uses
  %vec.ind.next4235 = add nuw nsw <8 x i64> %vec.ind4213, splat (i64 16)
  %i.noh = icmp eq i64 %index.next4234, %n.vec4207
  br i1 %i.noh, label %scalar.ph4204.preheader, label %vector.body4211, !llvm.loop !429

._crit_edge1068.i:                                ; preds = %scalar.ph4204, %bb.qy
  %indvars.iv.next1257.i = add nuw nsw i64 %indvars.iv1256.i, 1 ; 2 uses
  %exitcond1112.not = icmp eq i64 %indvars.iv.next1257.i, %smax1117
  %indvar.next4183 = add i64 %indvar4182, 1
  br i1 %exitcond1112.not, label %.preheader1015.i, label %bb.qy

scalar.ph4204:                                    ; preds = %scalar.ph4204.preheader, %scalar.ph4204
  %indvars.iv1253.i = phi i64 [ %indvars.iv.next1254.i, %scalar.ph4204 ], [ %indvars.iv1253.i.ph, %scalar.ph4204.preheader ] ; 4 uses
  %i.noi = getelementptr inbounds nuw [4 x i8], ptr %i.nmb, i64 %indvars.iv1253.i ; 3 uses
  %i.noj = getelementptr inbounds nuw [4 x i8], ptr %i.nmc, i64 %indvars.iv1253.i ; 6 uses
  %i.nok = load float, ptr %i.noj, align 4, !tbaa !22, !noalias !402
  %i.nol = getelementptr inbounds i8, ptr %i.noi, i64 -4
  %i.nom = load float, ptr %i.nol, align 4, !tbaa !22, !noalias !402
  %i.non = getelementptr inbounds i8, ptr %i.noj, i64 -4
  %i.noo = load float, ptr %i.non, align 4, !tbaa !22, !noalias !402
  %i.nop = getelementptr inbounds nuw i8, ptr %i.noi, i64 4
  %i.noq = load float, ptr %i.nop, align 4, !tbaa !22, !noalias !402
  %i.nor = getelementptr inbounds nuw i8, ptr %i.noj, i64 4
  %i.nos = load float, ptr %i.nor, align 4, !tbaa !22, !noalias !402
  %i.not = fadd reassoc nsz arcp contract afn float %i.nom, %i.noq
  %i.nou = fadd reassoc nsz arcp contract afn float %i.noo, %i.nos
  %i.nov = fsub reassoc nsz arcp contract afn float %i.not, %i.nou
  %i.now = fmul reassoc nsz arcp contract afn float %i.nov, 5.000000e-01
  %i.nox = fadd reassoc nsz arcp contract afn float %i.now, %i.nok
  store float %i.nox, ptr %i.noi, align 4, !tbaa !22, !noalias !402
  %i.noy = getelementptr inbounds nuw [4 x i8], ptr %i.nmh, i64 %indvars.iv1253.i ; 3 uses
  %i.noz = load float, ptr %i.noj, align 4, !tbaa !22, !noalias !402
  %i.npa = getelementptr inbounds i8, ptr %i.noy, i64 -544
  %i.npb = load float, ptr %i.npa, align 4, !tbaa !22, !noalias !402
  %i.npc = getelementptr inbounds i8, ptr %i.noj, i64 -544
  %i.npd = load float, ptr %i.npc, align 4, !tbaa !22, !noalias !402
  %i.npe = getelementptr inbounds nuw i8, ptr %i.noy, i64 544
  %i.npf = load float, ptr %i.npe, align 4, !tbaa !22, !noalias !402
  %i.npg = getelementptr inbounds nuw i8, ptr %i.noj, i64 544
  %i.nph = load float, ptr %i.npg, align 4, !tbaa !22, !noalias !402
  %i.npi = fadd reassoc nsz arcp contract afn float %i.npb, %i.npf
  %i.npj = fadd reassoc nsz arcp contract afn float %i.npd, %i.nph
  %i.npk = fsub reassoc nsz arcp contract afn float %i.npi, %i.npj
  %i.npl = fmul reassoc nsz arcp contract afn float %i.npk, 5.000000e-01
  %i.npm = fadd reassoc nsz arcp contract afn float %i.npl, %i.noz
  store float %i.npm, ptr %i.noy, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1254.i = add nuw nsw i64 %indvars.iv1253.i, 2 ; 2 uses
  %i.npn = icmp slt i64 %indvars.iv.next1254.i, %i.nia
  br i1 %i.npn, label %scalar.ph4204, label %._crit_edge1068.i, !llvm.loop !430

._crit_edge1078.i:                                ; preds = %._crit_edge1075.i, %.preheader1016.i, %._crit_edge1053.i
  %i.npo = icmp eq i32 %.08871178.i, 0            ; 2 uses
  %i.npp = select i1 %i.npo, i32 6, i32 0         ; 21 uses
  %i.npq = icmp eq i32 %.08871178.i, %i.aph       ; 2 uses
  %.neg.i554 = select i1 %i.npq, i32 -6, i32 0    ; 10 uses
  %i.npr = add nsw i32 %i.maz, %.neg.i554         ; 4 uses
  br i1 %.not1186.i, label %.preheader1014.i, label %.preheader1011.lr.ph.i

.preheader1011.lr.ph.i:                           ; preds = %._crit_edge1078.i
  %i.nps = icmp slt i32 %i.max, -5
  %i.npt = zext nneg i32 %i.npp to i64            ; 11 uses
  %invariant.gep.i555 = getelementptr inbounds nuw [4 x i8], ptr %i.lwz, i64 %i.npt
  %invariant.gep1124.i = getelementptr inbounds nuw [4 x i8], ptr %i.lxb, i64 %i.npt
  %invariant.gep1126.i = getelementptr inbounds nuw [4 x i8], ptr %i.lxc, i64 %i.npt
  %invariant.gep1128.i = getelementptr inbounds nuw [4 x i8], ptr %i.lxd, i64 %i.npt
  %invariant.gep1130.i = getelementptr inbounds nuw [4 x i8], ptr %i.lxe, i64 %i.npt
  %i.npu = add nsw i32 %i.npr, -1                 ; 3 uses
  %i.npv = icmp slt i32 %i.npp, %i.npu            ; 2 uses
  %brmerge.i556 = select i1 %i.lyn, i1 true, i1 %i.nps
  %i.npw = add nsw i32 %i.may, 6                  ; 3 uses
  %i.npx = sext i32 %i.npw to i64                 ; 6 uses
  %i.npy = shl nuw nsw i64 %i.npt, 2              ; 4 uses
  %scevgep3946 = getelementptr i8, ptr %scevgep3945.a, i64 %i.npy ; 2 uses
  %i.npz = add nsw i32 %.neg.i554, 6
  %i.nqa = add i32 %i.npz, %i.may
  %i.nqb = sub i32 %i.nqa, %i.npp
  %i.nqc = lshr i32 %i.nqb, 1
  %i.nqd = zext nneg i32 %i.nqc to i64
  %i.nqe = shl nuw nsw i64 %i.nqd, 3              ; 2 uses
  %i.nqf = getelementptr i8, ptr %scevgep3948.a, i64 %i.nqe
  %scevgep3949.a = getelementptr i8, ptr %i.nqf, i64 %i.npy ; 2 uses
  %.reass = or disjoint i64 %i.npy, %invariant.op
  %i.nqg = add nuw nsw i64 %i.lzm, %i.nqe
  %i.nqh = add nuw nsw i64 %i.nqg, %i.npy
  %i.nqi = add nsw i32 %.neg.i554, 6
  %i.nqj = add i32 %i.nqi, %i.may
  %i.nqk = sub i32 %i.nqj, %i.npp
  %i.nql = lshr i32 %i.nqk, 1
  %i.nqm = zext nneg i32 %i.nql to i64
  %i.nqn = shl nuw nsw i64 %i.nqm, 3              ; 2 uses
  %i.nqo = add nuw nsw i64 %i.lzn, %i.nqn
  %i.nqp = shl nuw nsw i64 %i.npt, 2              ; 3 uses
  %i.nqq = add nuw nsw i64 %i.nqo, %i.nqp
  %scevgep4015.a = getelementptr i8, ptr %scevgep4014.a, i64 %i.nqp ; 2 uses
  %i.nqr = getelementptr i8, ptr %scevgep4017, i64 %i.nqn
  %scevgep4018 = getelementptr i8, ptr %i.nqr, i64 %i.nqp ; 2 uses
  %min.iters.check4109 = icmp ult i32 %i.npw, 8
  %n.vec4111 = and i64 %i.npx, -8                 ; 3 uses
  %i.nqs = or disjoint i64 %n.vec4111, 1
  %cmp.n4134 = icmp eq i64 %n.vec4111, %i.npx
  %min.iters.check4081 = icmp ult i32 %i.npw, 8
  %n.vec4083 = and i64 %i.npx, -8                 ; 3 uses
  %i.nqt = or disjoint i64 %n.vec4083, 1
  %cmp.n4106 = icmp eq i64 %n.vec4083, %i.npx
  %i.nqu = add i32 %.neg.i554, %i.may
  %i.nqv = add i32 %i.nqu, 6
  %i.nqw = sub i32 %i.nqv, %i.npp                 ; 2 uses
  %i.nqx = lshr i32 %i.nqw, 1
  %narrow = add nuw i32 %i.nqx, 1
  %i.nqy = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check4032 = icmp ult i32 %i.nqw, 16
  %i.nqz = and i64 %i.nqy, 7                      ; 2 uses
  %i.nra = icmp eq i64 %i.nqz, 0
  %i.nrb = select i1 %i.nra, i64 8, i64 %i.nqz
  %n.vec4034 = sub nsw i64 %i.nqy, %i.nrb         ; 3 uses
  %i.nrc = trunc i64 %n.vec4034 to i32
end_hunk_2
