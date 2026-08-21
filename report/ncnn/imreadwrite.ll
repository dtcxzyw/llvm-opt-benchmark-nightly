Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a
  br label %.lr.ph749.prol.loopexit

.lr.ph749.prol.loopexit:                          ; preds = %.lr.ph749.prol, %.lr.ph749.preheader
  %indvars.iv902.unr = phi i64 [ %indvars.iv902.ph, %.lr.ph749.preheader ], [ %indvars.iv.next903.prol, %.lr.ph749.prol ]
  %i.adw = icmp eq i64 %indvars.iv902.ph, %i.rn
  br i1 %i.adw, label %._crit_edge750, label %.lr.ph749

.lr.ph749:                                        ; preds = %.lr.ph749.prol.loopexit, %.lr.ph749
  %indvars.iv902 = phi i64 [ %indvars.iv.next903.1, %.lr.ph749 ], [ %indvars.iv902.unr, %.lr.ph749.prol.loopexit ] ; 5 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.7580753, i64 %indvars.iv902
  %i.ady = load i8, ptr %i.adx, align 1, !tbaa !26
  %i.adz = sub nsw i64 %indvars.iv902, %i.aq
  %i.aea = getelementptr inbounds i8, ptr %.7538754, i64 %i.adz
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !26
  %i.aec = lshr i8 %i.aeb, 1
  %.narrow611 = add i8 %i.aec, %i.ady
  %i.aed = getelementptr inbounds nuw i8, ptr %.7538754, i64 %indvars.iv902
  store i8 %.narrow611, ptr %i.aed, align 1, !tbaa !26
  %indvars.iv.next903 = add nuw nsw i64 %indvars.iv902, 1 ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.7580753, i64 %indvars.iv.next903
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !26
  %i.aeg = sub nsw i64 %indvars.iv.next903, %i.aq
  %i.aeh = getelementptr inbounds i8, ptr %.7538754, i64 %i.aeg
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !26
  %i.aej = lshr i8 %i.aei, 1
  %.narrow611.1 = add i8 %i.aej, %i.aef
  %i.aek = getelementptr inbounds nuw i8, ptr %.7538754, i64 %indvars.iv.next903
  store i8 %.narrow611.1, ptr %i.aek, align 1, !tbaa !26
  %indvars.iv.next903.1 = add nuw nsw i64 %indvars.iv902, 2 ; 2 uses
  %exitcond906.not.1 = icmp eq i64 %indvars.iv.next903.1, %wide.trip.count905
  br i1 %exitcond906.not.1, label %._crit_edge750, label %.lr.ph749, !llvm.loop !382

._crit_edge750:                                   ; preds = %.lr.ph749.prol.loopexit, %.lr.ph749, %middle.block1538, %vec.epilog.middle.block1552, %.preheader709
  %i.ael = getelementptr inbounds i8, ptr %.7538754, i64 %i.rh
  store i8 -1, ptr %i.ael, align 1, !tbaa !26
  %i.aem = getelementptr inbounds i8, ptr %.7580753, i64 %i.rh ; 2 uses
  %i.aen = getelementptr inbounds i8, ptr %.7538754, i64 %i.aq
  %.5566 = add i32 %.5566755, -1                  ; 2 uses
  %.not609 = icmp eq i32 %.5566, 0
  br i1 %.not609, label %.loopexit725, label %.preheader709, !llvm.loop !383

.preheader710:                                    ; preds = %.preheader710.lr.ph, %._crit_edge742
  %.6567747 = phi i32 [ %.6567743, %.preheader710.lr.ph ], [ %.6567, %._crit_edge742 ]
  %.8539746 = phi ptr [ %i.dy, %.preheader710.lr.ph ], [ %i.afz, %._crit_edge742 ] ; 12 uses
  %.8581745 = phi ptr [ %.1574, %.preheader710.lr.ph ], [ %i.afy, %._crit_edge742 ] ; 6 uses
  br i1 %i.cv, label %iter.check1589, label %._crit_edge742

iter.check1589:                                   ; preds = %.preheader710
  %brmerge1698 = select i1 %min.iters.check1574, i1 true, i1 %conflict.rdx1573
  br i1 %brmerge1698, label %.lr.ph741.preheader, label %vector.main.loop.iter.check1575

vector.main.loop.iter.check1575:                  ; preds = %iter.check1589
  br i1 %min.iters.check1576, label %vec.epilog.ph1593, label %vector.body1579

vector.body1579:                                  ; preds = %vector.main.loop.iter.check1575, %vector.body1579
  %index1580 = phi i64 [ %index.next1585, %vector.body1579 ], [ 0, %vector.main.loop.iter.check1575 ] ; 4 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.8581745, i64 %index1580 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 16
  %wide.load1581 = load <16 x i8>, ptr %i.aeo, align 1, !tbaa !26, !alias.scope !384
  %wide.load1582 = load <16 x i8>, ptr %i.aep, align 1, !tbaa !26, !alias.scope !384
  %i.aeq = sub nsw i64 %index1580, %i.aq
  %i.aer = getelementptr inbounds i8, ptr %.8539746, i64 %i.aeq ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 16
  %wide.load1583 = load <16 x i8>, ptr %i.aer, align 1, !tbaa !26, !alias.scope !387
  %wide.load1584 = load <16 x i8>, ptr %i.aes, align 1, !tbaa !26, !alias.scope !387
  %i.aet = add <16 x i8> %wide.load1583, %wide.load1581
  %i.aeu = add <16 x i8> %wide.load1584, %wide.load1582
  %i.aev = getelementptr inbounds nuw i8, ptr %.8539746, i64 %index1580 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 16
  store <16 x i8> %i.aet, ptr %i.aev, align 1, !tbaa !26, !alias.scope !389, !noalias !391
  store <16 x i8> %i.aeu, ptr %i.aew, align 1, !tbaa !26, !alias.scope !389, !noalias !391
  %index.next1585 = add nuw i64 %index1580, 32    ; 2 uses
  %i.aex = icmp eq i64 %index.next1585, %n.vec1578
  br i1 %i.aex, label %middle.block1586, label %vector.body1579, !llvm.loop !392

middle.block1586:                                 ; preds = %vector.body1579
  br i1 %cmp.n1587, label %._crit_edge742, label %vec.epilog.iter.check1591

vec.epilog.iter.check1591:                        ; preds = %middle.block1586
  br i1 %min.epilog.iters.check1592, label %.lr.ph741.preheader, label %vec.epilog.ph1593, !prof !87

vec.epilog.ph1593:                                ; preds = %vector.main.loop.iter.check1575, %vec.epilog.iter.check1591
  %vec.epilog.resume.val1588 = phi i64 [ %n.vec1578, %vec.epilog.iter.check1591 ], [ 0, %vector.main.loop.iter.check1575 ]
  br label %vec.epilog.vector.body1595

vec.epilog.vector.body1595:                       ; preds = %vec.epilog.vector.body1595, %vec.epilog.ph1593
  %index1596 = phi i64 [ %vec.epilog.resume.val1588, %vec.epilog.ph1593 ], [ %index.next1599, %vec.epilog.vector.body1595 ] ; 4 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.8581745, i64 %index1596
  %wide.load1597 = load <4 x i8>, ptr %i.aey, align 1, !tbaa !26, !alias.scope !384
  %i.aez = sub nsw i64 %index1596, %i.aq
  %i.afa = getelementptr inbounds i8, ptr %.8539746, i64 %i.aez
  %wide.load1598 = load <4 x i8>, ptr %i.afa, align 1, !tbaa !26, !alias.scope !387
  %i.afb = add <4 x i8> %wide.load1598, %wide.load1597
  %i.afc = getelementptr inbounds nuw i8, ptr %.8539746, i64 %index1596
  store <4 x i8> %i.afb, ptr %i.afc, align 1, !tbaa !26, !alias.scope !389, !noalias !391
  %index.next1599 = add nuw i64 %index1596, 4     ; 2 uses
  %i.afd = icmp eq i64 %index.next1599, %n.vec1594
  br i1 %i.afd, label %vec.epilog.middle.block1600, label %vec.epilog.vector.body1595, !llvm.loop !393

vec.epilog.middle.block1600:                      ; preds = %vec.epilog.vector.body1595
  br i1 %cmp.n1601, label %._crit_edge742, label %.lr.ph741.preheader

.lr.ph741.preheader:                              ; preds = %iter.check1589, %vec.epilog.iter.check1591, %vec.epilog.middle.block1600
  %indvars.iv897.ph = phi i64 [ 0, %iter.check1589 ], [ %n.vec1594, %vec.epilog.middle.block1600 ], [ %n.vec1578, %vec.epilog.iter.check1591 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph741.prol.loopexit, label %.lr.ph741.prol

.lr.ph741.prol:                                   ; preds = %.lr.ph741.preheader
  %i.afe = getelementptr inbounds nuw i8, ptr %.8581745, i64 %indvars.iv897.ph
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !26
  %i.afg = sub nsw i64 %indvars.iv897.ph, %i.aq
  %i.afh = getelementptr inbounds i8, ptr %.8539746, i64 %i.afg
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !26
  %.narrow.prol = add i8 %i.afi, %i.aff
  %i.afj = getelementptr inbounds nuw i8, ptr %.8539746, i64 %indvars.iv897.ph
  store i8 %.narrow.prol, ptr %i.afj, align 1, !tbaa !26
  %indvars.iv.next898.prol = or disjoint i64 %indvars.iv897.ph, 1
  br label %.lr.ph741.prol.loopexit

.lr.ph741.prol.loopexit:                          ; preds = %.lr.ph741.prol, %.lr.ph741.preheader
  %indvars.iv897.unr = phi i64 [ %indvars.iv897.ph, %.lr.ph741.preheader ], [ %indvars.iv.next898.prol, %.lr.ph741.prol ]
  %i.afk = icmp eq i64 %indvars.iv897.ph, %i.rg
  br i1 %i.afk, label %._crit_edge742, label %.lr.ph741

.lr.ph741:                                        ; preds = %.lr.ph741.prol.loopexit, %.lr.ph741
  %indvars.iv897 = phi i64 [ %indvars.iv.next898.1, %.lr.ph741 ], [ %indvars.iv897.unr, %.lr.ph741.prol.loopexit ] ; 5 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.8581745, i64 %indvars.iv897
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !26
  %i.afn = sub nsw i64 %indvars.iv897, %i.aq
  %i.afo = getelementptr inbounds i8, ptr %.8539746, i64 %i.afn
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !26
  %.narrow = add i8 %i.afp, %i.afm
  %i.afq = getelementptr inbounds nuw i8, ptr %.8539746, i64 %indvars.iv897
  store i8 %.narrow, ptr %i.afq, align 1, !tbaa !26
  %indvars.iv.next898 = add nuw nsw i64 %indvars.iv897, 1 ; 3 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.8581745, i64 %indvars.iv.next898
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !26
  %i.aft = sub nsw i64 %indvars.iv.next898, %i.aq
  %i.afu = getelementptr inbounds i8, ptr %.8539746, i64 %i.aft
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !26
  %.narrow.1 = add i8 %i.afv, %i.afs
  %i.afw = getelementptr inbounds nuw i8, ptr %.8539746, i64 %indvars.iv.next898
  store i8 %.narrow.1, ptr %i.afw, align 1, !tbaa !26
  %indvars.iv.next898.1 = add nuw nsw i64 %indvars.iv897, 2 ; 2 uses
  %exitcond901.not.1 = icmp eq i64 %indvars.iv.next898.1, %wide.trip.count900
  br i1 %exitcond901.not.1, label %._crit_edge742, label %.lr.ph741, !llvm.loop !394

._crit_edge742:                                   ; preds = %.lr.ph741.prol.loopexit, %.lr.ph741, %middle.block1586, %vec.epilog.middle.block1600, %.preheader710
  %i.afx = getelementptr inbounds i8, ptr %.8539746, i64 %i.ra
  store i8 -1, ptr %i.afx, align 1, !tbaa !26
  %i.afy = getelementptr inbounds i8, ptr %.8581745, i64 %i.ra ; 2 uses
  %i.afz = getelementptr inbounds i8, ptr %.8539746, i64 %i.aq
  %.6567 = add i32 %.6567747, -1                  ; 2 uses
  %.not608 = icmp eq i32 %.6567, 0
  br i1 %.not608, label %.loopexit725, label %.preheader710, !llvm.loop !395

.loopexit725:                                     ; preds = %._crit_edge742, %._crit_edge750, %._crit_edge759, %._crit_edge769, %._crit_edge779, %._crit_edge789, %._crit_edge798, %.preheader736, %.preheader734, %.preheader732, %.preheader730, %.preheader728, %.preheader726, %.preheader724, %bb.af
  %.9582 = phi ptr [ %.1574, %bb.af ], [ %i.wy, %._crit_edge779 ], [ %i.zv, %._crit_edge769 ], [ %i.act, %._crit_edge759 ], [ %i.aem, %._crit_edge750 ], [ %i.tu, %._crit_edge798 ], [ %i.vg, %._crit_edge789 ], [ %.1574, %.preheader724 ], [ %.1574, %.preheader726 ], [ %.1574, %.preheader728 ], [ %.1574, %.preheader730 ], [ %.1574, %.preheader732 ], [ %.1574, %.preheader734 ], [ %.1574, %.preheader736 ], [ %i.afy, %._crit_edge742 ] ; 3 uses
  br i1 %brmerge.not, label %.lr.ph808, label %.loopexit723

.lr.ph808:                                        ; preds = %.loopexit725
  %i.aga = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 %i.ck ; 2 uses
  %i.agc = sext i32 %.1546 to i64                 ; 9 uses
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph808.new

.lr.ph808.new:                                    ; preds = %.lr.ph808, %.lr.ph808.new
  %.9540806 = phi ptr [ %i.aha, %.lr.ph808.new ], [ %i.agb, %.lr.ph808 ] ; 2 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph808.new ], [ 0, %.lr.ph808 ]
  %i.agd = getelementptr i8, ptr %.9540806, i64 %i.agc
  %i.age = getelementptr i8, ptr %i.agd, i64 1
  store i8 -1, ptr %i.age, align 1, !tbaa !26
  %i.agf = getelementptr inbounds i8, ptr %.9540806, i64 %i.aq ; 2 uses
  %i.agg = getelementptr i8, ptr %i.agf, i64 %i.agc
  %i.agh = getelementptr i8, ptr %i.agg, i64 1
  store i8 -1, ptr %i.agh, align 1, !tbaa !26
  %i.agi = getelementptr inbounds i8, ptr %i.agf, i64 %i.aq ; 2 uses
  %i.agj = getelementptr i8, ptr %i.agi, i64 %i.agc
  %i.agk = getelementptr i8, ptr %i.agj, i64 1
  store i8 -1, ptr %i.agk, align 1, !tbaa !26
  %i.agl = getelementptr inbounds i8, ptr %i.agi, i64 %i.aq ; 2 uses
  %i.agm = getelementptr i8, ptr %i.agl, i64 %i.agc
  %i.agn = getelementptr i8, ptr %i.agm, i64 1
  store i8 -1, ptr %i.agn, align 1, !tbaa !26
  %i.ago = getelementptr inbounds i8, ptr %i.agl, i64 %i.aq ; 2 uses
  %i.agp = getelementptr i8, ptr %i.ago, i64 %i.agc
  %i.agq = getelementptr i8, ptr %i.agp, i64 1
  store i8 -1, ptr %i.agq, align 1, !tbaa !26
  %i.agr = getelementptr inbounds i8, ptr %i.ago, i64 %i.aq ; 2 uses
  %i.ags = getelementptr i8, ptr %i.agr, i64 %i.agc
  %i.agt = getelementptr i8, ptr %i.ags, i64 1
  store i8 -1, ptr %i.agt, align 1, !tbaa !26
  %i.agu = getelementptr inbounds i8, ptr %i.agr, i64 %i.aq ; 2 uses
  %i.agv = getelementptr i8, ptr %i.agu, i64 %i.agc
  %i.agw = getelementptr i8, ptr %i.agv, i64 1
  store i8 -1, ptr %i.agw, align 1, !tbaa !26
  %i.agx = getelementptr inbounds i8, ptr %i.agu, i64 %i.aq ; 2 uses
  %i.agy = getelementptr i8, ptr %i.agx, i64 %i.agc
  %i.agz = getelementptr i8, ptr %i.agy, i64 1
  store i8 -1, ptr %i.agz, align 1, !tbaa !26
  %i.aha = getelementptr inbounds i8, ptr %i.agx, i64 %i.aq ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit723.loopexit.unr-lcssa, label %.lr.ph808.new, !llvm.loop !396

.loopexit723.loopexit.unr-lcssa:                  ; preds = %.lr.ph808.new
  br i1 %lcmp.mod1644.not, label %.loopexit723, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit723.loopexit.unr-lcssa, %.lr.ph808
  %.9540806.epil.init = phi ptr [ %i.agb, %.lr.ph808 ], [ %i.aha, %.loopexit723.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1645)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader
  %.9540806.epil = phi ptr [ %.9540806.epil.init, %.epil.preheader ], [ %i.ahd, %bb.ag ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ag ]
  %i.ahb = getelementptr i8, ptr %.9540806.epil, i64 %i.agc
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 1
  store i8 -1, ptr %i.ahc, align 1, !tbaa !26
  %i.ahd = getelementptr inbounds i8, ptr %.9540806.epil, i64 %i.aq
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1643
  br i1 %epil.iter.cmp.not, label %.loopexit723, label %bb.ag, !llvm.loop !397

.loopexit723:                                     ; preds = %.loopexit723.loopexit.unr-lcssa, %bb.ag, %.loopexit725, %.loopexit712
  %.11584 = phi ptr [ %i.qz, %.loopexit712 ], [ %.9582, %.loopexit725 ], [ %.9582, %bb.ag ], [ %.9582, %.loopexit723.loopexit.unr-lcssa ]
  %indvars.iv.next964 = add nuw nsw i64 %indvars.iv963, 1 ; 2 uses
  %exitcond967.not = icmp eq i64 %indvars.iv.next964, %wide.trip.count966
  br i1 %exitcond967.not, label %._crit_edge826, label %bb.g, !llvm.loop !398

._crit_edge826:                                   ; preds = %.loopexit723
  %i.ahe = icmp slt i32 %6, 8
  br i1 %i.ahe, label %.lr.ph863, label %bb.aw

._crit_edge826.thread:                            ; preds = %.preheader738
  br i1 %i.a, label %bb.ax, label %.critedge

.lr.ph863:                                        ; preds = %._crit_edge826
  %i.ahf = zext i32 %i.c to i64
  %i.ahg = zext nneg i32 %i.af to i64
  %i.ahh = sub nsw i64 0, %i.ahg
  %i.ahi = icmp eq i32 %7, 0
  %i.ahj = sext i32 %6 to i64
  %i.ahk = getelementptr inbounds i8, ptr @_ZL23stbi__depth_scale_table, i64 %i.ahj
  %i.ahl = icmp sgt i32 %i.y, 7
  %i.ahm = icmp sgt i32 %i.y, 3
  %i.ahn = icmp sgt i32 %i.y, 1
  %.not605 = icmp eq i32 %i.g, %3
  %i.aho = icmp eq i32 %i.g, 1
  %.1856 = add i32 %4, -1                         ; 4 uses
  %i.ahp = icmp sgt i32 %.1856, -1                ; 2 uses
  %i.ahq = zext i32 %.1856 to i64                 ; 8 uses
  %wide.trip.count978 = zext i32 %5 to i64
  %i.ahr = add i32 %i.y, -2                       ; 2 uses
  %i.ahs = add nuw nsw i64 %i.ahq, 1
  %i.aht = and i32 %i.ahr, 2
  %lcmp.mod1662.not.not = icmp eq i32 %i.aht, 0
  %i.ahu = add nsw i32 %i.y, -2                   ; 2 uses
  %i.ahv = icmp ult i32 %i.ahr, 2
  %i.ahw = and i64 %i.ahq, 1
  %lcmp.mod1665.not.not = icmp eq i64 %i.ahw, 0
  %i.ahx = shl nuw nsw i64 %i.ahq, 2
  %i.ahy = mul nuw nsw i64 %i.ahq, 3
  %indvars.iv.next970.prol = add nsw i64 %i.ahq, -1
  %i.ahz = icmp eq i32 %.1856, 0
  %xtraiter1667 = and i64 %i.ahs, 3               ; 2 uses
  %lcmp.mod1668.not = icmp eq i64 %xtraiter1667, 0
  %i.aia = icmp ult i32 %.1856, 3
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph863, %.loopexit
  %indvars.iv975 = phi i64 [ 0, %.lr.ph863 ], [ %indvars.iv.next976, %.loopexit ] ; 2 uses
  %i.aib = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.aic = trunc nuw i64 %indvars.iv975 to i32
  %i.aid = mul i32 %i.e, %i.aic
  %i.aie = zext i32 %i.aid to i64                 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.aie ; 10 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 %i.ahf
  %i.aih = getelementptr inbounds i8, ptr %i.aig, i64 %i.ahh ; 9 uses
  br i1 %i.ahi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.aii = load i8, ptr %i.ahk, align 1, !tbaa !26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.aij = phi i8 [ %i.aii, %bb.ai ], [ 1, %bb.ah ] ; 29 uses
  switch i32 %6, label %.thread671 [
    i32 4, label %.preheader699
    i32 2, label %.preheader700
    i32 1, label %.preheader701
  ]

.preheader701:                                    ; preds = %bb.aj
  br i1 %i.ahl, label %.lr.ph835, label %._crit_edge836

.preheader700:                                    ; preds = %bb.aj
  br i1 %i.ahm, label %.lr.ph843, label %._crit_edge844

.preheader699:                                    ; preds = %bb.aj
  br i1 %i.ahn, label %.lr.ph851.preheader, label %._crit_edge852

.lr.ph851.preheader:                              ; preds = %.preheader699
  br i1 %lcmp.mod1662.not.not, label %.lr.ph851.prol, label %.lr.ph851.prol.loopexit

.lr.ph851.prol:                                   ; preds = %.lr.ph851.preheader
  %i.aik = load i8, ptr %i.aih, align 1, !tbaa !26
  %i.ail = lshr i8 %i.aik, 4
  %i.aim = mul i8 %i.ail, %i.aij
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aif, i64 1
  store i8 %i.aim, ptr %i.aif, align 1, !tbaa !26
  %i.aio = load i8, ptr %i.aih, align 1, !tbaa !26
  %i.aip = and i8 %i.aio, 15
  %i.aiq = mul i8 %i.aip, %i.aij
  %i.air = getelementptr inbounds nuw i8, ptr %i.aif, i64 2 ; 2 uses
  store i8 %i.aiq, ptr %i.ain, align 1, !tbaa !26
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aih, i64 1 ; 2 uses
  br label %.lr.ph851.prol.loopexit

.lr.ph851.prol.loopexit:                          ; preds = %.lr.ph851.prol, %.lr.ph851.preheader
  %.0517850.unr = phi ptr [ %i.aih, %.lr.ph851.preheader ], [ %i.ais, %.lr.ph851.prol ]
  %.0519849.unr = phi ptr [ %i.aif, %.lr.ph851.preheader ], [ %i.air, %.lr.ph851.prol ]
  %.14848.unr = phi i32 [ %i.y, %.lr.ph851.preheader ], [ %i.ahu, %.lr.ph851.prol ]
  %.lcssa1612.unr = phi ptr [ poison, %.lr.ph851.preheader ], [ %i.air, %.lr.ph851.prol ]
  %.lcssa1610.unr = phi ptr [ poison, %.lr.ph851.preheader ], [ %i.ais, %.lr.ph851.prol ]
  br i1 %i.ahv, label %._crit_edge852, label %.lr.ph851

.lr.ph851:                                        ; preds = %.lr.ph851.prol.loopexit, %.lr.ph851
  %.0517850 = phi ptr [ %i.ajl, %.lr.ph851 ], [ %.0517850.unr, %.lr.ph851.prol.loopexit ] ; 4 uses
  %.0519849 = phi ptr [ %i.ajj, %.lr.ph851 ], [ %.0519849.unr, %.lr.ph851.prol.loopexit ] ; 5 uses
  %.14848 = phi i32 [ %i.ajk, %.lr.ph851 ], [ %.14848.unr, %.lr.ph851.prol.loopexit ] ; 2 uses
  %i.ait = load i8, ptr %.0517850, align 1, !tbaa !26
  %i.aiu = lshr i8 %i.ait, 4
  %i.aiv = mul i8 %i.aiu, %i.aij
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0519849, i64 1
  store i8 %i.aiv, ptr %.0519849, align 1, !tbaa !26
  %i.aix = load i8, ptr %.0517850, align 1, !tbaa !26
  %i.aiy = and i8 %i.aix, 15
  %i.aiz = mul i8 %i.aiy, %i.aij
  %i.aja = getelementptr inbounds nuw i8, ptr %.0519849, i64 2
  store i8 %i.aiz, ptr %i.aiw, align 1, !tbaa !26
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0517850, i64 1 ; 2 uses
  %i.ajc = load i8, ptr %i.ajb, align 1, !tbaa !26
  %i.ajd = lshr i8 %i.ajc, 4
  %i.aje = mul i8 %i.ajd, %i.aij
  %i.ajf = getelementptr inbounds nuw i8, ptr %.0519849, i64 3
  store i8 %i.aje, ptr %i.aja, align 1, !tbaa !26
  %i.ajg = load i8, ptr %i.ajb, align 1, !tbaa !26
  %i.ajh = and i8 %i.ajg, 15
  %i.aji = mul i8 %i.ajh, %i.aij
  %i.ajj = getelementptr inbounds nuw i8, ptr %.0519849, i64 4 ; 2 uses
  store i8 %i.aji, ptr %i.ajf, align 1, !tbaa !26
  %i.ajk = add nsw i32 %.14848, -4                ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.0517850, i64 2 ; 2 uses
  %i.ajm = icmp sgt i32 %.14848, 5
  br i1 %i.ajm, label %.lr.ph851, label %._crit_edge852, !llvm.loop !399

._crit_edge852:                                   ; preds = %.lr.ph851.prol.loopexit, %.lr.ph851, %.preheader699
  %.14.lcssa = phi i32 [ %i.y, %.preheader699 ], [ %i.ahu, %.lr.ph851.prol.loopexit ], [ %i.ajk, %.lr.ph851 ]
  %.0519.lcssa = phi ptr [ %i.aif, %.preheader699 ], [ %.lcssa1612.unr, %.lr.ph851.prol.loopexit ], [ %i.ajj, %.lr.ph851 ]
  %.0517.lcssa = phi ptr [ %i.aih, %.preheader699 ], [ %.lcssa1610.unr, %.lr.ph851.prol.loopexit ], [ %i.ajl, %.lr.ph851 ]
  %i.ajn = icmp eq i32 %.14.lcssa, 1
  br i1 %i.ajn, label %bb.ak, label %.thread671

bb.ak:                                            ; preds = %._crit_edge852
  %i.ajo = load i8, ptr %.0517.lcssa, align 1, !tbaa !26
  %i.ajp = lshr i8 %i.ajo, 4
  %i.ajq = mul i8 %i.ajp, %i.aij
  store i8 %i.ajq, ptr %.0519.lcssa, align 1, !tbaa !26
  br label %.thread671

.lr.ph843:                                        ; preds = %.preheader700, %.lr.ph843
  %.1518842 = phi ptr [ %i.akk, %.lr.ph843 ], [ %i.aih, %.preheader700 ] ; 5 uses
  %.1520841 = phi ptr [ %i.aki, %.lr.ph843 ], [ %i.aif, %.preheader700 ] ; 5 uses
  %.15840 = phi i32 [ %i.akj, %.lr.ph843 ], [ %i.y, %.preheader700 ] ; 2 uses
  %i.ajr = load i8, ptr %.1518842, align 1, !tbaa !26
  %i.ajs = lshr i8 %i.ajr, 6
  %i.ajt = mul i8 %i.ajs, %i.aij
  %i.aju = getelementptr inbounds nuw i8, ptr %.1520841, i64 1
  store i8 %i.ajt, ptr %.1520841, align 1, !tbaa !26
  %i.ajv = load i8, ptr %.1518842, align 1, !tbaa !26
  %i.ajw = lshr i8 %i.ajv, 4
  %i.ajx = and i8 %i.ajw, 3
  %i.ajy = mul i8 %i.ajx, %i.aij
  %i.ajz = getelementptr inbounds nuw i8, ptr %.1520841, i64 2
  store i8 %i.ajy, ptr %i.aju, align 1, !tbaa !26
  %i.aka = load i8, ptr %.1518842, align 1, !tbaa !26
  %i.akb = lshr i8 %i.aka, 2
  %i.akc = and i8 %i.akb, 3
  %i.akd = mul i8 %i.akc, %i.aij
  %i.ake = getelementptr inbounds nuw i8, ptr %.1520841, i64 3
  store i8 %i.akd, ptr %i.ajz, align 1, !tbaa !26
  %i.akf = load i8, ptr %.1518842, align 1, !tbaa !26
  %i.akg = and i8 %i.akf, 3
  %i.akh = mul i8 %i.akg, %i.aij
  %i.aki = getelementptr inbounds nuw i8, ptr %.1520841, i64 4 ; 2 uses
  store i8 %i.akh, ptr %i.ake, align 1, !tbaa !26
  %i.akj = add nsw i32 %.15840, -4                ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.1518842, i64 1 ; 2 uses
  %i.akl = icmp samesign ugt i32 %.15840, 7
  br i1 %i.akl, label %.lr.ph843, label %._crit_edge844, !llvm.loop !400

end_hunk_0
