Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/locallaplacian?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 58
begin_hunk_0_@local_laplacian_internal:bb.a
  %i.zn = add nsw i32 %i.zl, -1                   ; 2 uses
  %xtraiter1661 = and i32 %i.yr, 7                ; 3 uses
  %i.zo = icmp ult i32 %i.yr, 8
  br i1 %i.zo, label %.lr.ph.i745.epil.preheader, label %.lr.ph.preheader.i744.new

.lr.ph.preheader.i744.new:                        ; preds = %.lr.ph.preheader.i744
  %unroll_iter1666 = and i32 %i.yr, 2147483640
  br label %.lr.ph.i745

.lr.ph.i745:                                      ; preds = %.lr.ph.i745, %.lr.ph.preheader.i744.new
  %.056.i747 = phi i32 [ %i.zn, %.lr.ph.preheader.i744.new ], [ %i.zp, %.lr.ph.i745 ]
  %niter1667 = phi i32 [ 0, %.lr.ph.preheader.i744.new ], [ %niter1667.next.7, %.lr.ph.i745 ]
  %i.zp = sdiv i32 %.056.i747, 256                ; 3 uses
  %niter1667.next.7 = add nuw nsw i32 %niter1667, 8 ; 2 uses
  %niter1667.ncmp.7 = icmp eq i32 %niter1667.next.7, %unroll_iter1666
  br i1 %niter1667.ncmp.7, label %.lr.ph.preheader.i752.unr-lcssa, label %.lr.ph.i745

dl.exit750:                                       ; preds = %dl.exit742
  %i.zq = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !113 ; 2 uses
  br label %dl.exit758

.lr.ph.preheader.i752.unr-lcssa:                  ; preds = %.lr.ph.i745
  %lcmp.mod1663.not = icmp eq i32 %xtraiter1661, 0
  br i1 %lcmp.mod1663.not, label %.lr.ph.preheader.i752, label %.lr.ph.i745.epil.preheader

.lr.ph.i745.epil.preheader:                       ; preds = %.lr.ph.preheader.i752.unr-lcssa, %.lr.ph.preheader.i744
  %.056.i747.epil.init = phi i32 [ %i.zn, %.lr.ph.preheader.i744 ], [ %i.zp, %.lr.ph.preheader.i752.unr-lcssa ]
  %lcmp.mod1665 = icmp ne i32 %xtraiter1661, 0
  tail call void @llvm.assume(i1 %lcmp.mod1665)
  br label %.lr.ph.i745.epil

.lr.ph.i745.epil:                                 ; preds = %.lr.ph.i745.epil, %.lr.ph.i745.epil.preheader
  %.056.i747.epil = phi i32 [ %i.zs, %.lr.ph.i745.epil ], [ %.056.i747.epil.init, %.lr.ph.i745.epil.preheader ]
  %epil.iter1662 = phi i32 [ %epil.iter1662.next, %.lr.ph.i745.epil ], [ 0, %.lr.ph.i745.epil.preheader ]
  %i.zs = sdiv i32 %.056.i747.epil, 2             ; 2 uses
  %epil.iter1662.next = add i32 %epil.iter1662, 1 ; 2 uses
  %epil.iter1662.cmp.not = icmp eq i32 %epil.iter1662.next, %xtraiter1661
  br i1 %epil.iter1662.cmp.not, label %.lr.ph.preheader.i752, label %.lr.ph.i745.epil, !llvm.loop !86

.lr.ph.preheader.i752:                            ; preds = %.lr.ph.i745.epil, %.lr.ph.preheader.i752.unr-lcssa
  %.lcssa1414 = phi i32 [ %i.zp, %.lr.ph.preheader.i752.unr-lcssa ], [ %i.zs, %.lr.ph.i745.epil ]
  %i.zt = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !113 ; 2 uses
  %i.zv = add nsw i32 %i.zu, -1                   ; 2 uses
  %xtraiter1668 = and i32 %i.yr, 7                ; 3 uses
  %i.zw = icmp ult i32 %i.yr, 8
  br i1 %i.zw, label %.lr.ph.i753.epil.preheader, label %.lr.ph.preheader.i752.new

.lr.ph.preheader.i752.new:                        ; preds = %.lr.ph.preheader.i752
  %unroll_iter1673 = and i32 %i.yr, 2147483640
  br label %.lr.ph.i753

._crit_edge.loopexit.i757.unr-lcssa:              ; preds = %.lr.ph.i753
  %lcmp.mod1670.not = icmp eq i32 %xtraiter1668, 0
  br i1 %lcmp.mod1670.not, label %._crit_edge.loopexit.i757, label %.lr.ph.i753.epil.preheader

.lr.ph.i753.epil.preheader:                       ; preds = %._crit_edge.loopexit.i757.unr-lcssa, %.lr.ph.preheader.i752
  %.056.i755.epil.init = phi i32 [ %i.zv, %.lr.ph.preheader.i752 ], [ %i.aaa, %._crit_edge.loopexit.i757.unr-lcssa ]
  %lcmp.mod1672 = icmp ne i32 %xtraiter1668, 0
  tail call void @llvm.assume(i1 %lcmp.mod1672)
  br label %.lr.ph.i753.epil

.lr.ph.i753.epil:                                 ; preds = %.lr.ph.i753.epil, %.lr.ph.i753.epil.preheader
  %.056.i755.epil = phi i32 [ %i.zx, %.lr.ph.i753.epil ], [ %.056.i755.epil.init, %.lr.ph.i753.epil.preheader ]
  %epil.iter1669 = phi i32 [ %epil.iter1669.next, %.lr.ph.i753.epil ], [ 0, %.lr.ph.i753.epil.preheader ]
  %i.zx = sdiv i32 %.056.i755.epil, 2             ; 2 uses
  %epil.iter1669.next = add i32 %epil.iter1669, 1 ; 2 uses
  %epil.iter1669.cmp.not = icmp eq i32 %epil.iter1669.next, %xtraiter1668
  br i1 %epil.iter1669.cmp.not, label %._crit_edge.loopexit.i757, label %.lr.ph.i753.epil, !llvm.loop !87

._crit_edge.loopexit.i757:                        ; preds = %.lr.ph.i753.epil, %._crit_edge.loopexit.i757.unr-lcssa
  %.lcssa1413 = phi i32 [ %i.aaa, %._crit_edge.loopexit.i757.unr-lcssa ], [ %i.zx, %.lr.ph.i753.epil ]
  %i.zy = add nsw i32 %.lcssa1414, 1
  %i.zz = add nsw i32 %.lcssa1413, 1
  br label %dl.exit758

.lr.ph.i753:                                      ; preds = %.lr.ph.i753, %.lr.ph.preheader.i752.new
  %.056.i755 = phi i32 [ %i.zv, %.lr.ph.preheader.i752.new ], [ %i.aaa, %.lr.ph.i753 ]
  %niter1674 = phi i32 [ 0, %.lr.ph.preheader.i752.new ], [ %niter1674.next.7, %.lr.ph.i753 ]
  %i.aaa = sdiv i32 %.056.i755, 256               ; 3 uses
  %niter1674.next.7 = add nuw nsw i32 %niter1674, 8 ; 2 uses
  %niter1674.ncmp.7 = icmp eq i32 %niter1674.next.7, %unroll_iter1673
  br i1 %niter1674.ncmp.7, label %._crit_edge.loopexit.i757.unr-lcssa, label %.lr.ph.i753

dl.exit758:                                       ; preds = %dl.exit750, %._crit_edge.loopexit.i757
  %i.aab = phi i32 [ %i.zr, %dl.exit750 ], [ %i.zu, %._crit_edge.loopexit.i757 ] ; 2 uses
  %i.aac = phi ptr [ %i.zq, %dl.exit750 ], [ %i.zt, %._crit_edge.loopexit.i757 ]
  %.05.lcssa.i743816 = phi i32 [ %i.zl, %dl.exit750 ], [ %i.zy, %._crit_edge.loopexit.i757 ] ; 5 uses
  %.05.lcssa.i751 = phi i32 [ %i.zr, %dl.exit750 ], [ %i.zz, %._crit_edge.loopexit.i757 ] ; 3 uses
  %i.aad = extractelement <2 x i32> %i.yq, i64 1  ; 8 uses
  %i.aae = icmp sgt i32 %i.aad, 0
  br i1 %i.aae, label %.lr.ph.preheader.i760, label %dl.exit774

.lr.ph.preheader.i760:                            ; preds = %dl.exit758
  %i.aaf = add nsw i32 %i.zl, -1                  ; 2 uses
  %xtraiter1675 = and i32 %i.aad, 7               ; 3 uses
  %i.aag = icmp ult i32 %i.aad, 8
  br i1 %i.aag, label %.lr.ph.i761.epil.preheader, label %.lr.ph.preheader.i760.new

.lr.ph.preheader.i760.new:                        ; preds = %.lr.ph.preheader.i760
  %unroll_iter1680 = and i32 %i.aad, 2147483640
  br label %.lr.ph.i761

.lr.ph.i761:                                      ; preds = %.lr.ph.i761, %.lr.ph.preheader.i760.new
  %.056.i763 = phi i32 [ %i.aaf, %.lr.ph.preheader.i760.new ], [ %i.aah, %.lr.ph.i761 ]
  %niter1681 = phi i32 [ 0, %.lr.ph.preheader.i760.new ], [ %niter1681.next.7, %.lr.ph.i761 ]
  %i.aah = sdiv i32 %.056.i763, 256               ; 3 uses
  %niter1681.next.7 = add nuw nsw i32 %niter1681, 8 ; 2 uses
  %niter1681.ncmp.7 = icmp eq i32 %niter1681.next.7, %unroll_iter1680
  br i1 %niter1681.ncmp.7, label %.lr.ph.preheader.i768.unr-lcssa, label %.lr.ph.i761

.lr.ph.preheader.i768.unr-lcssa:                  ; preds = %.lr.ph.i761
  %lcmp.mod1677.not = icmp eq i32 %xtraiter1675, 0
  br i1 %lcmp.mod1677.not, label %.lr.ph.preheader.i768, label %.lr.ph.i761.epil.preheader

.lr.ph.i761.epil.preheader:                       ; preds = %.lr.ph.preheader.i768.unr-lcssa, %.lr.ph.preheader.i760
  %.056.i763.epil.init = phi i32 [ %i.aaf, %.lr.ph.preheader.i760 ], [ %i.aah, %.lr.ph.preheader.i768.unr-lcssa ]
  %lcmp.mod1679 = icmp ne i32 %xtraiter1675, 0
  tail call void @llvm.assume(i1 %lcmp.mod1679)
  br label %.lr.ph.i761.epil

.lr.ph.i761.epil:                                 ; preds = %.lr.ph.i761.epil, %.lr.ph.i761.epil.preheader
  %.056.i763.epil = phi i32 [ %i.aai, %.lr.ph.i761.epil ], [ %.056.i763.epil.init, %.lr.ph.i761.epil.preheader ]
  %epil.iter1676 = phi i32 [ %epil.iter1676.next, %.lr.ph.i761.epil ], [ 0, %.lr.ph.i761.epil.preheader ]
  %i.aai = sdiv i32 %.056.i763.epil, 2            ; 2 uses
  %epil.iter1676.next = add i32 %epil.iter1676, 1 ; 2 uses
  %epil.iter1676.cmp.not = icmp eq i32 %epil.iter1676.next, %xtraiter1675
  br i1 %epil.iter1676.cmp.not, label %.lr.ph.preheader.i768, label %.lr.ph.i761.epil, !llvm.loop !88

.lr.ph.preheader.i768:                            ; preds = %.lr.ph.i761.epil, %.lr.ph.preheader.i768.unr-lcssa
  %.lcssa1412 = phi i32 [ %i.aah, %.lr.ph.preheader.i768.unr-lcssa ], [ %i.aai, %.lr.ph.i761.epil ]
  %i.aaj = add nsw i32 %i.aab, -1                 ; 2 uses
  %xtraiter1682 = and i32 %i.aad, 7               ; 3 uses
  %i.aak = icmp ult i32 %i.aad, 8
  br i1 %i.aak, label %.lr.ph.i769.epil.preheader, label %.lr.ph.preheader.i768.new

.lr.ph.preheader.i768.new:                        ; preds = %.lr.ph.preheader.i768
  %unroll_iter1687 = and i32 %i.aad, 2147483640
  br label %.lr.ph.i769

._crit_edge.loopexit.i773.unr-lcssa:              ; preds = %.lr.ph.i769
  %lcmp.mod1684.not = icmp eq i32 %xtraiter1682, 0
  br i1 %lcmp.mod1684.not, label %._crit_edge.loopexit.i773, label %.lr.ph.i769.epil.preheader

.lr.ph.i769.epil.preheader:                       ; preds = %._crit_edge.loopexit.i773.unr-lcssa, %.lr.ph.preheader.i768
  %.056.i771.epil.init = phi i32 [ %i.aaj, %.lr.ph.preheader.i768 ], [ %i.aao, %._crit_edge.loopexit.i773.unr-lcssa ]
  %lcmp.mod1686 = icmp ne i32 %xtraiter1682, 0
  tail call void @llvm.assume(i1 %lcmp.mod1686)
  br label %.lr.ph.i769.epil

.lr.ph.i769.epil:                                 ; preds = %.lr.ph.i769.epil, %.lr.ph.i769.epil.preheader
  %.056.i771.epil = phi i32 [ %i.aal, %.lr.ph.i769.epil ], [ %.056.i771.epil.init, %.lr.ph.i769.epil.preheader ]
  %epil.iter1683 = phi i32 [ %epil.iter1683.next, %.lr.ph.i769.epil ], [ 0, %.lr.ph.i769.epil.preheader ]
  %i.aal = sdiv i32 %.056.i771.epil, 2            ; 2 uses
  %epil.iter1683.next = add i32 %epil.iter1683, 1 ; 2 uses
  %epil.iter1683.cmp.not = icmp eq i32 %epil.iter1683.next, %xtraiter1682
  br i1 %epil.iter1683.cmp.not, label %._crit_edge.loopexit.i773, label %.lr.ph.i769.epil, !llvm.loop !89

._crit_edge.loopexit.i773:                        ; preds = %.lr.ph.i769.epil, %._crit_edge.loopexit.i773.unr-lcssa
  %.lcssa1411 = phi i32 [ %i.aao, %._crit_edge.loopexit.i773.unr-lcssa ], [ %i.aal, %.lr.ph.i769.epil ]
  %i.aam = add nsw i32 %.lcssa1412, 1
  %i.aan = add nsw i32 %.lcssa1411, 1
  br label %dl.exit774

.lr.ph.i769:                                      ; preds = %.lr.ph.i769, %.lr.ph.preheader.i768.new
  %.056.i771 = phi i32 [ %i.aaj, %.lr.ph.preheader.i768.new ], [ %i.aao, %.lr.ph.i769 ]
  %niter1688 = phi i32 [ 0, %.lr.ph.preheader.i768.new ], [ %niter1688.next.7, %.lr.ph.i769 ]
  %i.aao = sdiv i32 %.056.i771, 256               ; 3 uses
  %niter1688.next.7 = add nuw nsw i32 %niter1688, 8 ; 2 uses
  %niter1688.ncmp.7 = icmp eq i32 %niter1688.next.7, %unroll_iter1687
  br i1 %niter1688.ncmp.7, label %._crit_edge.loopexit.i773.unr-lcssa, label %.lr.ph.i769

dl.exit774:                                       ; preds = %dl.exit758, %._crit_edge.loopexit.i773
  %.05.lcssa.i759819 = phi i32 [ %i.aam, %._crit_edge.loopexit.i773 ], [ %i.zl, %dl.exit758 ] ; 4 uses
  %.05.lcssa.i767 = phi i32 [ %i.aan, %._crit_edge.loopexit.i773 ], [ %i.aab, %dl.exit758 ] ; 2 uses
  %i.aap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !159
  %.not625 = icmp eq ptr %i.aap, null
  br i1 %.not625, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %dl.exit774
  %i.aaq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.aar = sext i32 %i.yr to i64
  %i.aas = getelementptr inbounds [8 x i8], ptr %i.aaq, i64 %i.aar
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !17
  tail call void @dt_dump_pfm(ptr noundef nonnull @.str, ptr noundef %i.aat, i32 noundef %.05.lcssa.i743816, i32 noundef %.05.lcssa.i751, i32 noundef 16, ptr noundef nonnull @.str.1) #14
  tail call void @dt_dump_pfm(ptr noundef nonnull @.str.2, ptr noundef %i.qc, i32 noundef %.05.lcssa.i727813, i32 noundef %.05.lcssa.i735, i32 noundef 16, ptr noundef nonnull @.str.1) #14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %dl.exit774
  %i.aau = icmp sgt i32 %.05.lcssa.i735, 0
  br i1 %i.aau, label %.preheader848.lr.ph, label %._crit_edge891.split

.preheader848.lr.ph:                              ; preds = %bb.ad
  %i.aav = icmp sgt i32 %.05.lcssa.i727813, 0
  %i.aaw = insertelement <4 x i32> poison, i32 %.05.lcssa.i767, i64 0
  %i.aax = insertelement <4 x i32> %i.aaw, i32 %.05.lcssa.i759819, i64 1
  %i.aay = insertelement <4 x i32> %i.aax, i32 %.05.lcssa.i751, i64 2
  %i.aaz = insertelement <4 x i32> %i.aay, i32 %.05.lcssa.i743816, i64 3
  %i.aba = add nsw <4 x i32> %i.aaz, splat (i32 -1) ; 5 uses
  %i.abb = sitofp <4 x i32> %i.aba to <4 x float> ; 2 uses
  br i1 %i.aav, label %.preheader848.lr.ph.split, label %._crit_edge891.split

.preheader848.lr.ph.split:                        ; preds = %.preheader848.lr.ph
  %i.abc = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.abd = sext i32 %i.aad to i64
  %i.abe = getelementptr inbounds [8 x i8], ptr %i.abc, i64 %i.abd
  %i.abf = sext i32 %i.yr to i64
  %i.abg = getelementptr inbounds [8 x i8], ptr %i.abc, i64 %i.abf
  %i.abh = uitofp nneg i32 %i.lu to float         ; 2 uses
  %i.abi = load ptr, ptr %i.xn, align 8, !tbaa !26 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 16
  %i.abk = load <2 x i32>, ptr %i.abi, align 4, !tbaa !19
  %i.abl = sitofp <2 x i32> %i.abk to <2 x float> ; 2 uses
  %i.abm = extractelement <2 x float> %i.abl, i64 0
  %invariant.op = fsub reassoc nnan nsz arcp contract afn float %i.abm, %i.abh
  %i.abn = extractelement <2 x float> %i.abl, i64 1
  %invariant.op892 = fsub reassoc nnan nsz arcp contract afn float %i.abn, %i.abh
  %i.abo = load ptr, ptr %i.xr, align 8, !tbaa !29
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  %i.abq = load i32, ptr %i.zk, align 8, !tbaa !112
  %i.abr = load i32, ptr %i.aac, align 4, !tbaa !113
  %i.abs = load <2 x i32>, ptr %i.abp, align 4, !tbaa !19
  %i.abt = load <2 x i32>, ptr %i.xx, align 8, !tbaa !19 ; 3 uses
  %i.abu = extractelement <2 x i32> %i.abt, i64 0
  %i.abv = sitofp reassoc nsz arcp contract afn i32 %i.abu to float
  %i.abw = insertelement <2 x i32> poison, i32 %i.abq, i64 0
  %i.abx = insertelement <2 x i32> %i.abw, i32 %i.abr, i64 1 ; 2 uses
  %i.aby = sub nsw <2 x i32> %i.abx, %i.abt
  %i.abz = sitofp <2 x i32> %i.aby to <2 x float>
  %i.aca = sitofp <2 x i32> %i.abs to <2 x float>
  %i.acb = extractelement <2 x i32> %i.abt, i64 1
  %i.acc = sitofp reassoc nsz arcp contract afn i32 %i.acb to float
  %i.acd = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.abz, splat (float 5.000000e-01)
  %i.ace = sitofp <2 x i32> %i.abx to <2 x float> ; 2 uses
  %i.acf = load ptr, ptr %i.abg, align 8, !tbaa !17 ; 4 uses
  %i.acg = load ptr, ptr %i.abe, align 8, !tbaa !17 ; 4 uses
  %i.ach = zext nneg i32 %.05.lcssa.i727813 to i64 ; 2 uses
  %wide.trip.count1025 = zext nneg i32 %.05.lcssa.i735 to i64
  %i.aci = extractelement <4 x i32> %i.aba, i64 0 ; 3 uses
  %i.acj = extractelement <4 x i32> %i.aba, i64 1 ; 3 uses
  %i.ack = extractelement <4 x i32> %i.aba, i64 2 ; 3 uses
  %i.acl = extractelement <4 x i32> %i.aba, i64 3 ; 3 uses
  br label %.preheader848

.preheader848:                                    ; preds = %.preheader848.lr.ph.split, %._crit_edge889
  %indvars.iv1022 = phi i64 [ 0, %.preheader848.lr.ph.split ], [ %indvars.iv.next1023, %._crit_edge889 ] ; 3 uses
  %i.acm = trunc nuw nsw i64 %indvars.iv1022 to i32
  %i.acn = uitofp nsz nneg i32 %i.acm to float
  %i.aco = fmul reassoc nsz arcp contract afn float %exp2, %i.acn
  %.reass893 = fadd reassoc nsz arcp contract afn float %i.aco, %invariant.op892
  %i.acp = fmul reassoc nsz arcp contract afn float %.reass893, %i.acc
  %i.acq = mul nuw nsw i64 %indvars.iv1022, %i.ach
  %invariant.gep1140 = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %i.acq
  %i.acr = insertelement <2 x float> poison, float %i.acp, i64 1
  br label %bb.ae

._crit_edge891.split:                             ; preds = %._crit_edge889, %.preheader848.lr.ph, %bb.ad
  %i.acs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !159
  %.not626 = icmp eq ptr %i.acs, null
  br i1 %.not626, label %bb.ag, label %bb.af

._crit_edge889:                                   ; preds = %bb.ae
  %indvars.iv.next1023 = add nuw nsw i64 %indvars.iv1022, 1 ; 2 uses
  %exitcond1026.not = icmp eq i64 %indvars.iv.next1023, %wide.trip.count1025
  br i1 %exitcond1026.not, label %._crit_edge891.split, label %.preheader848

bb.ae:                                            ; preds = %.preheader848, %bb.ae
  %indvars.iv1017 = phi i64 [ 0, %.preheader848 ], [ %indvars.iv.next1018, %bb.ae ] ; 3 uses
  %i.act = trunc nuw nsw i64 %indvars.iv1017 to i32
  %i.acu = uitofp nsz nneg i32 %i.act to float
  %i.acv = fmul reassoc nsz arcp contract afn float %exp2, %i.acu
  %.reass = fadd reassoc nsz arcp contract afn float %i.acv, %invariant.op
  %i.acw = load float, ptr %i.abj, align 4, !tbaa !28
  %i.acx = fmul reassoc nsz arcp contract afn float %.reass, %i.abv
  %i.acy = insertelement <2 x float> poison, float %i.acw, i64 0
  %i.acz = shufflevector <2 x float> %i.acy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ada = fmul reassoc nsz arcp contract afn <2 x float> %i.acz, %i.aca
  %i.adb = insertelement <2 x float> %i.acr, float %i.acx, i64 0
  %i.adc = fdiv reassoc nsz arcp contract afn <2 x float> %i.adb, %i.ada
  %i.add = fadd reassoc nsz arcp contract afn <2 x float> %i.acd, %i.adc ; 3 uses
  %i.ade = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.add, %i.ace
  %i.adf = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.add, zeroinitializer
  %i.adg = select <2 x i1> %i.adf, <2 x float> zeroinitializer, <2 x float> %i.add
  %i.adh = select <2 x i1> %i.ade, <2 x float> %i.ace, <2 x float> %i.adg
  %i.adi = shufflevector <2 x float> %i.adh, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.adj = fmul reassoc nsz arcp contract afn <4 x float> %i.adi, %i.za ; 4 uses
  %i.adk = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.adj, %i.abb
  %i.adl = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.adj, zeroinitializer
  %i.adm = select <4 x i1> %i.adl, <4 x float> zeroinitializer, <4 x float> %i.adj
  %i.adn = select <4 x i1> %i.adk, <4 x float> %i.abb, <4 x float> %i.adm
  %i.ado = fptosi <4 x float> %i.adn to <4 x i32> ; 5 uses
  %i.adp = sitofp <4 x i32> %i.ado to <4 x float>
  %i.adq = fsub reassoc nsz arcp contract afn <4 x float> %i.adj, %i.adp ; 6 uses
  %i.adr = extractelement <4 x float> %i.adq, i64 3
  %i.ads = fcmp reassoc nsz arcp contract afn ogt float %i.adr, 1.000000e+00
  %i.adt = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.adq, zeroinitializer
  %i.adu = extractelement <4 x float> %i.adq, i64 2
  %i.adv = fcmp reassoc nsz arcp contract afn ogt float %i.adu, 1.000000e+00
  %i.adw = extractelement <4 x float> %i.adq, i64 1
  %i.adx = fcmp reassoc nsz arcp contract afn ogt float %i.adw, 1.000000e+00
  %i.ady = extractelement <4 x float> %i.adq, i64 0
  %i.adz = fcmp reassoc nsz arcp contract afn ogt float %i.ady, 1.000000e+00
  %i.aea = select <4 x i1> %i.adt, <4 x float> zeroinitializer, <4 x float> %i.adq ; 4 uses
  %i.aeb = extractelement <4 x float> %i.aea, i64 3
  %i.aec = select reassoc nsz arcp contract afn i1 %i.ads, float 1.000000e+00, float %i.aeb ; 3 uses
  %i.aed = extractelement <4 x float> %i.aea, i64 2
  %i.aee = select reassoc nsz arcp contract afn i1 %i.adv, float 1.000000e+00, float %i.aed
  %i.aef = extractelement <4 x float> %i.aea, i64 1
  %i.aeg = select reassoc nsz arcp contract afn i1 %i.adx, float 1.000000e+00, float %i.aef ; 3 uses
  %i.aeh = extractelement <4 x float> %i.aea, i64 0
  %i.aei = select reassoc nsz arcp contract afn i1 %i.adz, float 1.000000e+00, float %i.aeh ; 2 uses
  %i.aej = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aec ; 2 uses
  %i.aek = extractelement <4 x i32> %i.ado, i64 2 ; 4 uses
  %.not628 = icmp sgt i32 %.05.lcssa.i751, %i.aek
  %i.ael = tail call i32 @llvm.smax.i32(i32 %i.aek, i32 0)
  %i.aem = select i1 %.not628, i32 %i.ael, i32 %i.ack
  %i.aen = mul nsw i32 %i.aem, %.05.lcssa.i743816 ; 2 uses
  %i.aeo = extractelement <4 x i32> %i.ado, i64 3 ; 4 uses
  %.not629 = icmp sgt i32 %.05.lcssa.i743816, %i.aeo
  %i.aep = tail call i32 @llvm.smax.i32(i32 %i.aeo, i32 0)
  %i.aeq = select i1 %.not629, i32 %i.aep, i32 %i.acl ; 2 uses
  %i.aer = add nsw i32 %i.aen, %i.aeq
  %i.aes = sext i32 %i.aer to i64
  %i.aet = getelementptr inbounds [4 x i8], ptr %i.acf, i64 %i.aes
  %i.aeu = load float, ptr %i.aet, align 4, !tbaa !21
  %i.aev = fmul reassoc nsz arcp contract afn float %i.aej, %i.aeu
  %.not630 = icmp sgt i32 %i.acl, %i.aeo
  %i.aew = tail call i32 @llvm.smax.i32(i32 %i.aeo, i32 -1)
  %i.aex = add nsw i32 %i.aew, 1
  %i.aey = select i1 %.not630, i32 %i.aex, i32 %i.acl ; 2 uses
  %i.aez = add nsw i32 %i.aen, %i.aey
  %i.afa = sext i32 %i.aez to i64
  %i.afb = getelementptr inbounds [4 x i8], ptr %i.acf, i64 %i.afa
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !21
  %i.afd = fmul reassoc nsz arcp contract afn float %i.aec, %i.afc
  %.not631 = icmp sgt i32 %i.ack, %i.aek
  %i.afe = tail call i32 @llvm.smax.i32(i32 %i.aek, i32 -1)
  %i.aff = add nsw i32 %i.afe, 1
  %i.afg = select i1 %.not631, i32 %i.aff, i32 %i.ack
  %i.afh = mul nsw i32 %i.afg, %.05.lcssa.i743816 ; 2 uses
  %i.afi = add nsw i32 %i.afh, %i.aeq
  %i.afj = sext i32 %i.afi to i64
  %i.afk = getelementptr inbounds [4 x i8], ptr %i.acf, i64 %i.afj
  %i.afl = load float, ptr %i.afk, align 4, !tbaa !21
  %i.afm = fmul reassoc nsz arcp contract afn float %i.aej, %i.afl
  %i.afn = add nsw i32 %i.afh, %i.aey
  %i.afo = sext i32 %i.afn to i64
  %i.afp = getelementptr inbounds [4 x i8], ptr %i.acf, i64 %i.afo
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !21
  %i.afr = fmul reassoc nsz arcp contract afn float %i.aec, %i.afq
  %reass.add = fadd reassoc nsz arcp contract afn float %i.aev, %i.afd ; 2 uses
  %reass.add835 = fadd reassoc nsz arcp contract afn float %i.afr, %i.afm
  %i.afs = fsub reassoc nsz arcp contract afn float %reass.add835, %reass.add
  %i.aft = fmul reassoc nsz arcp contract afn float %i.aee, %i.afs
  %i.afu = fadd reassoc nsz arcp contract afn float %reass.add, %i.aft ; 2 uses
  %i.afv = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aeg ; 2 uses
  %i.afw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aei
  %i.afx = extractelement <4 x i32> %i.ado, i64 0 ; 4 uses
  %.not632 = icmp sgt i32 %.05.lcssa.i767, %i.afx
  %i.afy = tail call i32 @llvm.smax.i32(i32 %i.afx, i32 0)
  %i.afz = select i1 %.not632, i32 %i.afy, i32 %i.aci
  %i.aga = mul nsw i32 %i.afz, %.05.lcssa.i759819 ; 2 uses
  %i.agb = extractelement <4 x i32> %i.ado, i64 1 ; 4 uses
  %.not633 = icmp sgt i32 %.05.lcssa.i759819, %i.agb
  %i.agc = tail call i32 @llvm.smax.i32(i32 %i.agb, i32 0)
  %i.agd = select i1 %.not633, i32 %i.agc, i32 %i.acj ; 2 uses
  %i.age = add nsw i32 %i.aga, %i.agd
  %i.agf = sext i32 %i.age to i64
  %i.agg = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.agf
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !21
  %i.agi = fmul reassoc nsz arcp contract afn float %i.afv, %i.agh
  %.not634 = icmp sgt i32 %i.acj, %i.agb
  %i.agj = tail call i32 @llvm.smax.i32(i32 %i.agb, i32 -1)
  %i.agk = add nsw i32 %i.agj, 1
  %i.agl = select i1 %.not634, i32 %i.agk, i32 %i.acj ; 2 uses
  %i.agm = add nsw i32 %i.aga, %i.agl
  %i.agn = sext i32 %i.agm to i64
  %i.ago = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.agn
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !21
  %i.agq = fmul reassoc nsz arcp contract afn float %i.aeg, %i.agp
  %.not635 = icmp sgt i32 %i.aci, %i.afx
  %i.agr = tail call i32 @llvm.smax.i32(i32 %i.afx, i32 -1)
  %i.ags = add nsw i32 %i.agr, 1
  %i.agt = select i1 %.not635, i32 %i.ags, i32 %i.aci
  %i.agu = mul nsw i32 %i.agt, %.05.lcssa.i759819 ; 2 uses
  %i.agv = add nsw i32 %i.agu, %i.agd
  %i.agw = sext i32 %i.agv to i64
  %i.agx = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.agw
  %i.agy = load float, ptr %i.agx, align 4, !tbaa !21
  %i.agz = fmul reassoc nsz arcp contract afn float %i.afv, %i.agy
  %i.aha = add nsw i32 %i.agu, %i.agl
  %i.ahb = sext i32 %i.aha to i64
  %i.ahc = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.ahb
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !21
  %i.ahe = fmul reassoc nsz arcp contract afn float %i.aeg, %i.ahd
  %reass.add838 = fadd reassoc nsz arcp contract afn float %i.agi, %i.agq
  %reass.mul839 = fmul reassoc nsz arcp contract afn float %reass.add838, %i.afw
  %reass.add840 = fadd reassoc nsz arcp contract afn float %i.ahe, %i.agz
  %reass.mul841 = fmul reassoc nsz arcp contract afn float %reass.add840, %i.aei
  %i.ahf = fsub reassoc nsz arcp contract afn float %reass.mul839, %i.afu
  %i.ahg = fadd reassoc nsz arcp contract afn float %i.ahf, %reass.mul841
  %i.ahh = fmul reassoc nsz arcp contract afn float %i.ahg, %i.yx
  %i.ahi = fadd reassoc nsz arcp contract afn float %i.ahh, %i.afu
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1140, i64 %indvars.iv1017
  store float %i.ahi, ptr %gep, align 4, !tbaa !21
  %indvars.iv.next1018 = add nuw nsw i64 %indvars.iv1017, 1 ; 2 uses
  %exitcond1021.not = icmp eq i64 %indvars.iv.next1018, %i.ach
  br i1 %exitcond1021.not, label %._crit_edge889, label %bb.ae

bb.af:                                            ; preds = %._crit_edge891.split
  tail call void @dt_dump_pfm(ptr noundef nonnull @.str.3, ptr noundef %i.qc, i32 noundef %.05.lcssa.i727813, i32 noundef %.05.lcssa.i735, i32 noundef 16, ptr noundef nonnull @.str.1) #14
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge891.split, %bb.af, %bb.aa, %bb.z
  %i.ahj = icmp sgt i32 %.0528797, 0
  br i1 %i.ahj, label %.lr.ph902, label %.preheader844.preheader

.lr.ph902:                                        ; preds = %bb.ag
  %i.ahk = zext i32 %i.qe to i64                  ; 2 uses
  %.pre1075 = load float, ptr %i.qh, align 4
  %i.ahl = load float, ptr %i.qi, align 8
  %i.ahm = load float, ptr %i.qj, align 4
  %i.ahn = load float, ptr %i.qk, align 16
  br label %bb.ah

.preheader844.preheader:                          ; preds = %._crit_edge899.split, %bb.ag
  %i.aho = load ptr, ptr %i.f, align 16           ; 3 uses
  %i.ahp = zext nneg i32 %i.lu to i64             ; 3 uses
  %i.ahq = sext i32 %.pre to i64                  ; 3 uses
  %i.ahr = zext nneg i32 %2 to i64
  %wide.trip.count1052 = zext nneg i32 %3 to i64  ; 3 uses
  %wide.trip.count1047 = zext nneg i32 %2 to i64  ; 7 uses
  %invariant.gep1141 = getelementptr [4 x i8], ptr %i.aho, i64 %i.ahp
  %i.ahs = shl nsw i64 %i.ahq, 2
  %i.aht = mul nuw nsw i64 %wide.trip.count1052, %wide.trip.count1047
  %i.ahu = shl i64 %i.aht, 4
  %i.ahv = add i64 %i.ahu, -4                     ; 2 uses
  %scevgep1315 = getelementptr i8, ptr %0, i64 %i.ahv
  %scevgep1316 = getelementptr i8, ptr %0, i64 4
  %i.ahw = add nuw nsw i64 %wide.trip.count1052, 4611686018427387903
  %i.ahx = mul i64 %i.ahw, %i.ahq
  %i.ahy = add nsw i64 %i.ahs, 4
  %i.ahz = mul i64 %i.ahy, %i.ahp                 ; 2 uses
  %i.aia = add i64 %i.ahx, %wide.trip.count1047
  %i.aib = shl i64 %i.aia, 2
  %i.aic = getelementptr i8, ptr %i.aho, i64 %i.aib
  %scevgep1317 = getelementptr i8, ptr %i.aic, i64 %i.ahz
  %scevgep1318 = getelementptr i8, ptr %i.aho, i64 %i.ahz
  %scevgep1319 = getelementptr i8, ptr %1, i64 %i.ahv ; 2 uses
  %min.iters.check1320 = icmp ult i32 %2, 5
  %bound01322 = icmp ult ptr %1, %scevgep1317
  %bound11323 = icmp ult ptr %scevgep1318, %scevgep1319
  %found.conflict1324 = and i1 %bound01322, %bound11323
  %stride.check1325 = icmp slt i32 %.pre, 0
  %i.aid = or i1 %found.conflict1324, %stride.check1325
  %bound01326 = icmp ult ptr %1, %scevgep1315
  %bound11327 = icmp ult ptr %scevgep1316, %scevgep1319
  %found.conflict1328 = and i1 %bound01326, %bound11327
  %conflict.rdx = or i1 %i.aid, %found.conflict1328
  %i.aie = and i64 %wide.trip.count1047, 3        ; 2 uses
  %i.aif = icmp eq i64 %i.aie, 0
  %i.aig = select i1 %i.aif, i64 4, i64 %i.aie
  %n.vec1330 = sub nsw i64 %wide.trip.count1047, %i.aig ; 2 uses
  %i.aih = add nsw i64 %wide.trip.count1047, -1
  br label %.preheader844

bb.ah:                                            ; preds = %.lr.ph902, %._crit_edge899.split
  %indvar1689 = phi i64 [ 0, %.lr.ph902 ], [ %indvar.next1690, %._crit_edge899.split ] ; 2 uses
  %indvars.iv1041 = phi i64 [ %i.ahk, %.lr.ph902 ], [ %indvars.iv.next1042, %._crit_edge899.split ] ; 12 uses
  %i.aii = xor i64 %indvar1689, -1
  %i.aij = add i64 %i.aii, %i.ahk                 ; 2 uses
  %.not830 = icmp eq i64 %indvars.iv1041, 0
  br i1 %.not830, label %dl.exit790, label %.lr.ph.i777.preheader

.lr.ph.i777.preheader:                            ; preds = %bb.ah
  %xtraiter1691 = and i64 %indvars.iv1041, 7      ; 3 uses
  %i.aik = icmp ult i64 %i.aij, 7
  br i1 %i.aik, label %.lr.ph.i777.epil.preheader, label %.lr.ph.i777.preheader.new

.lr.ph.i777.preheader.new:                        ; preds = %.lr.ph.i777.preheader
  %unroll_iter1696 = and i64 %indvars.iv1041, -8
  br label %.lr.ph.i777

.lr.ph.i777:                                      ; preds = %.lr.ph.i777, %.lr.ph.i777.preheader.new
  %.056.i779 = phi i32 [ %.pre1079, %.lr.ph.i777.preheader.new ], [ %i.ail, %.lr.ph.i777 ]
  %niter1697 = phi i64 [ 0, %.lr.ph.i777.preheader.new ], [ %niter1697.next.7, %.lr.ph.i777 ]
  %i.ail = sdiv i32 %.056.i779, 256               ; 3 uses
  %niter1697.next.7 = add i64 %niter1697, 8       ; 2 uses
  %niter1697.ncmp.7 = icmp eq i64 %niter1697.next.7, %unroll_iter1696
  br i1 %niter1697.ncmp.7, label %.lr.ph.i785.preheader.unr-lcssa, label %.lr.ph.i777

.lr.ph.i785.preheader.unr-lcssa:                  ; preds = %.lr.ph.i777
end_hunk_0
begin_hunk_1_@local_laplacian_internal:bb.a
  %i.aqz = insertelement <2 x float> poison, float %i.aqx, i64 0
  %i.ara = shufflevector <2 x float> %i.aqz, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.ara, ptr %i.aqy, align 4, !tbaa !21
  %indvars.iv.next73.i.i.7 = add nuw nsw i64 %indvars.iv72.i.i, 8 ; 3 uses
  %i.arb = trunc nuw nsw i64 %indvars.iv.next73.i.i.7 to i32
  %i.arc = mul i32 %.05.lcssa.i775822, %i.arb
  %i.ard = sext i32 %i.arc to i64
  %i.are = getelementptr [4 x i8], ptr %i.aiw, i64 %i.ard ; 2 uses
  %i.arf = getelementptr i8, ptr %i.are, i64 -12
  %i.arg = load float, ptr %i.arf, align 4, !tbaa !21
  %i.arh = getelementptr i8, ptr %i.are, i64 -8
  %i.ari = insertelement <2 x float> poison, float %i.arg, i64 0
  %i.arj = shufflevector <2 x float> %i.ari, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.arj, ptr %i.arh, align 4, !tbaa !21
  %niter1719.next.7 = add i64 %niter1719, 8       ; 2 uses
  %niter1719.ncmp.7 = icmp eq i64 %niter1719.next.7, %unroll_iter1718
  br i1 %niter1719.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph64.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph64.i.i
  %lcmp.mod1716.not = icmp eq i64 %xtraiter1714, 0
  br i1 %lcmp.mod1716.not, label %.loopexit.i.i, label %.lr.ph64.i.i.epil.preheader

.lr.ph64.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph64.i.i.preheader
  %indvars.iv72.i.i.epil.init = phi i64 [ 1, %.lr.ph64.i.i.preheader ], [ %indvars.iv.next73.i.i.7, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1717 = icmp ne i64 %xtraiter1714, 0
  tail call void @llvm.assume(i1 %lcmp.mod1717)
  br label %.lr.ph64.i.i.epil

.lr.ph64.i.i.epil:                                ; preds = %.lr.ph64.i.i.epil, %.lr.ph64.i.i.epil.preheader
  %indvars.iv72.i.i.epil = phi i64 [ %indvars.iv.next73.i.i.epil, %.lr.ph64.i.i.epil ], [ %indvars.iv72.i.i.epil.init, %.lr.ph64.i.i.epil.preheader ]
  %epil.iter1715 = phi i64 [ %epil.iter1715.next, %.lr.ph64.i.i.epil ], [ 0, %.lr.ph64.i.i.epil.preheader ]
  %indvars.iv.next73.i.i.epil = add nuw nsw i64 %indvars.iv72.i.i.epil, 1 ; 2 uses
  %i.ark = trunc nuw nsw i64 %indvars.iv.next73.i.i.epil to i32
  %i.arl = mul i32 %.05.lcssa.i775822, %i.ark
  %i.arm = sext i32 %i.arl to i64
  %i.arn = getelementptr [4 x i8], ptr %i.aiw, i64 %i.arm ; 2 uses
  %i.aro = getelementptr i8, ptr %i.arn, i64 -12
  %i.arp = load float, ptr %i.aro, align 4, !tbaa !21
  %i.arq = getelementptr i8, ptr %i.arn, i64 -8
  %i.arr = insertelement <2 x float> poison, float %i.arp, i64 0
  %i.ars = shufflevector <2 x float> %i.arr, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.ars, ptr %i.arq, align 4, !tbaa !21
  %epil.iter1715.next = add i64 %epil.iter1715, 1 ; 2 uses
  %epil.iter1715.cmp.not = icmp eq i64 %epil.iter1715.next, %xtraiter1714
  br i1 %epil.iter1715.cmp.not, label %.loopexit.i.i, label %.lr.ph64.i.i.epil, !llvm.loop !96

.loopexit.i.i.loopexit1409.unr-lcssa:             ; preds = %.lr.ph62.i.i
  %lcmp.mod1710.not = icmp eq i64 %xtraiter1708, 0
  br i1 %lcmp.mod1710.not, label %.loopexit.i.i, label %.lr.ph62.i.i.epil.preheader

.lr.ph62.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit1409.unr-lcssa, %.lr.ph62.i.i.preheader
  %indvars.iv67.i.i.epil.init = phi i64 [ 1, %.lr.ph62.i.i.preheader ], [ %indvars.iv.next68.i.i.7, %.loopexit.i.i.loopexit1409.unr-lcssa ]
  %lcmp.mod1711 = icmp ne i64 %xtraiter1708, 0
  tail call void @llvm.assume(i1 %lcmp.mod1711)
  br label %.lr.ph62.i.i.epil

.lr.ph62.i.i.epil:                                ; preds = %.lr.ph62.i.i.epil, %.lr.ph62.i.i.epil.preheader
  %indvars.iv67.i.i.epil = phi i64 [ %indvars.iv.next68.i.i.epil, %.lr.ph62.i.i.epil ], [ %indvars.iv67.i.i.epil.init, %.lr.ph62.i.i.epil.preheader ]
  %epil.iter1709 = phi i64 [ %epil.iter1709.next, %.lr.ph62.i.i.epil ], [ 0, %.lr.ph62.i.i.epil.preheader ]
  %indvars.iv.next68.i.i.epil = add nuw nsw i64 %indvars.iv67.i.i.epil, 1 ; 2 uses
  %i.art = trunc nuw nsw i64 %indvars.iv.next68.i.i.epil to i32
  %i.aru = mul i32 %.05.lcssa.i775822, %i.art
  %i.arv = sext i32 %i.aru to i64
  %i.arw = getelementptr [4 x i8], ptr %i.aiw, i64 %i.arv ; 2 uses
  %i.arx = getelementptr i8, ptr %i.arw, i64 -8
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !21
  %i.arz = getelementptr i8, ptr %i.arw, i64 -4
  store float %i.ary, ptr %i.arz, align 4, !tbaa !21
  %epil.iter1709.next = add i64 %epil.iter1709, 1 ; 2 uses
  %epil.iter1709.cmp.not = icmp eq i64 %epil.iter1709.next, %xtraiter1708
  br i1 %epil.iter1709.cmp.not, label %.loopexit.i.i, label %.lr.ph62.i.i.epil, !llvm.loop !97

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit1409.unr-lcssa, %.lr.ph62.i.i.epil, %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph64.i.i.epil, %._crit_edge25.split..loopexit.i_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge25.split..loopexit.i_crit_edge.i ], [ %i.ajl, %.loopexit.i.i.loopexit.unr-lcssa ], [ %i.ajl, %.lr.ph64.i.i.epil ], [ %i.ajl, %.lr.ph62.i.i.epil ], [ %i.ajl, %.loopexit.i.i.loopexit1409.unr-lcssa ] ; 2 uses
  %i.asa = getelementptr inbounds [4 x i8], ptr %i.aiw, i64 %.pre-phi.i
  %i.asb = shl nsw i64 %.pre-phi.i, 2             ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aiw, ptr align 4 %i.asa, i64 %i.asb, i1 false)
  %i.asc = and i32 %.05.lcssa.i783, 1
  %.not57.i.i = icmp eq i32 %i.asc, 0
  %i.asd = add nsw i32 %.05.lcssa.i783, -2
  %i.ase = mul nsw i32 %i.asd, %.05.lcssa.i775822
  %i.asf = sext i32 %i.ase to i64                 ; 2 uses
  br i1 %.not57.i.i, label %bb.ai, label %gauss_expand.exit

bb.ai:                                            ; preds = %.loopexit.i.i
  %i.asg = getelementptr inbounds [4 x i8], ptr %i.aiw, i64 %i.asf
  %i.ash = add nsw i32 %.05.lcssa.i783, -3
  %i.asi = mul nsw i32 %i.ash, %.05.lcssa.i775822
  %i.asj = sext i32 %i.asi to i64
  %i.ask = getelementptr inbounds [4 x i8], ptr %i.aiw, i64 %i.asj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.asg, ptr align 4 %i.ask, i64 %i.asb, i1 false)
  br label %gauss_expand.exit

._crit_edge.i:                                    ; preds = %ll_expand_gaussian.exit.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %iter.check1288, label %.preheader.i794

bb.aj:                                            ; preds = %ll_expand_gaussian.exit.i, %.preheader.i794
  %indvars.iv.i = phi i64 [ 1, %.preheader.i794 ], [ %indvars.iv.next.i, %ll_expand_gaussian.exit.i ] ; 3 uses
  %i.asl = trunc nuw nsw i64 %indvars.iv.i to i32 ; 2 uses
  %i.asm = lshr i32 %i.asl, 1
  %i.asn = add nsw i32 %i.asm, %i.ajh             ; 12 uses
  %i.aso = and i32 %i.asl, 1
  %i.asp = or disjoint i32 %i.aso, %i.ajj
  switch i32 %i.asp, label %default.unreachable [
    i32 0, label %bb.ak
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.asq = sub nsw i32 %i.asn, %i.ajc
  %i.asr = sext i32 %i.asq to i64
  %i.ass = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.asr ; 3 uses
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !21
  %i.asu = sext i32 %i.asn to i64
  %i.asv = getelementptr [4 x i8], ptr %i.aiu, i64 %i.asu ; 3 uses
  %i.asw = getelementptr i8, ptr %i.asv, i64 -4
  %i.asx = load float, ptr %i.asw, align 4, !tbaa !21
  %i.asy = fadd reassoc nsz arcp contract afn float %i.asx, %i.ast
  %i.asz = load float, ptr %i.asv, align 4, !tbaa !21
  %i.ata = fmul reassoc nsz arcp contract afn float %i.asz, 6.000000e+00
  %i.atb = fadd reassoc nsz arcp contract afn float %i.asy, %i.ata
  %i.atc = getelementptr i8, ptr %i.asv, i64 4
  %i.atd = load float, ptr %i.atc, align 4, !tbaa !21
  %i.ate = fadd reassoc nsz arcp contract afn float %i.atb, %i.atd
  %i.atf = add nsw i32 %i.asn, %i.ajc
  %i.atg = sext i32 %i.atf to i64
  %i.ath = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.atg ; 2 uses
  %i.ati = load float, ptr %i.ath, align 4, !tbaa !21
  %i.atj = fadd reassoc nsz arcp contract afn float %i.ate, %i.ati
  %i.atk = fmul reassoc nsz arcp contract afn float %i.atj, 6.000000e+00
  %i.atl = getelementptr i8, ptr %i.ass, i64 -4
  %i.atm = load float, ptr %i.atl, align 4, !tbaa !21
  %i.atn = fadd reassoc nsz arcp contract afn float %i.atm, %i.atk
  %i.ato = getelementptr i8, ptr %i.ass, i64 4
  %i.atp = load float, ptr %i.ato, align 4, !tbaa !21
  %i.atq = add i32 %i.asn, %i.ajb
  %i.atr = sext i32 %i.atq to i64
  %i.ats = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.atr
  %i.att = load float, ptr %i.ats, align 4, !tbaa !21
  %i.atu = getelementptr i8, ptr %i.ath, i64 4
  %i.atv = load float, ptr %i.atu, align 4, !tbaa !21
  %i.atw = fadd reassoc nsz arcp contract afn float %i.att, %i.atp
  %i.atx = fadd reassoc nsz arcp contract afn float %i.atw, %i.atn
  %i.aty = fadd reassoc nsz arcp contract afn float %i.atx, %i.atv
  %i.atz = fmul reassoc nsz arcp contract afn float %i.aty, 1.562500e-02
  br label %ll_expand_gaussian.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.aua = sext i32 %i.asn to i64
  %i.aub = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.aua ; 2 uses
  %i.auc = load float, ptr %i.aub, align 4, !tbaa !21
  %i.aud = getelementptr i8, ptr %i.aub, i64 4
  %i.aue = load float, ptr %i.aud, align 4, !tbaa !21
  %i.auf = fadd reassoc nsz arcp contract afn float %i.aue, %i.auc
  %i.aug = fpext reassoc nsz arcp contract afn float %i.auf to double
  %.reass21.i = fmul reassoc nsz arcp contract afn double %i.aug, 3.750000e-01
  %i.auh = sub nsw i32 %i.asn, %i.ajc
  %i.aui = sext i32 %i.auh to i64
  %i.auj = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.aui ; 2 uses
  %i.auk = load float, ptr %i.auj, align 4, !tbaa !21
  %i.aul = getelementptr i8, ptr %i.auj, i64 4
  %i.aum = load float, ptr %i.aul, align 4, !tbaa !21
  %i.aun = fadd reassoc nsz arcp contract afn float %i.aum, %i.auk
  %i.auo = add nsw i32 %i.asn, %i.ajc
  %i.aup = sext i32 %i.auo to i64
  %i.auq = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.aup ; 2 uses
  %i.aur = load float, ptr %i.auq, align 4, !tbaa !21
  %i.aus = fadd reassoc nsz arcp contract afn float %i.aun, %i.aur
  %i.aut = getelementptr i8, ptr %i.auq, i64 4
  %i.auu = load float, ptr %i.aut, align 4, !tbaa !21
  %i.auv = fadd reassoc nsz arcp contract afn float %i.aus, %i.auu
  %i.auw = fpext reassoc nsz arcp contract afn float %i.auv to double
  %.reass22.i = fmul reassoc nsz arcp contract afn double %i.auw, 6.250000e-02
  %i.aux = fadd reassoc nsz arcp contract afn double %.reass22.i, %.reass21.i
  %i.auy = fptrunc reassoc nsz arcp contract afn double %i.aux to float
  br label %ll_expand_gaussian.exit.i

bb.am:                                            ; preds = %bb.aj
  %i.auz = sext i32 %i.asn to i64
  %i.ava = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.auz ; 2 uses
  %i.avb = add nsw i32 %i.asn, %i.ajc
  %i.avc = sext i32 %i.avb to i64
  %i.avd = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.avc
  %i.ave = getelementptr i8, ptr %i.ava, i64 -4
  %i.avf = load float, ptr %i.ave, align 4, !tbaa !21
  %i.avg = add i32 %i.asn, %i.ajb
  %i.avh = sext i32 %i.avg to i64
  %i.avi = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.avh
  %i.avj = load float, ptr %i.avi, align 4, !tbaa !21
  %i.avk = load <2 x float>, ptr %i.ava, align 4, !tbaa !21
  %i.avl = load <2 x float>, ptr %i.avd, align 4, !tbaa !21
  %i.avm = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.avj, i64 1
  %i.avn = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.avf, i64 1
  %i.avo = fadd reassoc nsz arcp contract afn <2 x float> %i.avl, %i.avm
  %i.avp = fadd reassoc nsz arcp contract afn <2 x float> %i.avn, %i.avk
  %i.avq = fadd reassoc nsz arcp contract afn <2 x float> %i.avo, %i.avp
  %i.avr = fpext <2 x float> %i.avq to <2 x double> ; 2 uses
  %i.avs = extractelement <2 x double> %i.avr, i64 0
  %.reass.i = fmul reassoc nsz arcp contract afn double %i.avs, 3.750000e-01
  %i.avt = extractelement <2 x double> %i.avr, i64 1
  %.reass20.i = fmul reassoc nsz arcp contract afn double %i.avt, 6.250000e-02
  %i.avu = fadd reassoc nsz arcp contract afn double %.reass20.i, %.reass.i
  %i.avv = fptrunc reassoc nsz arcp contract afn double %i.avu to float
  br label %ll_expand_gaussian.exit.i

default.unreachable:                              ; preds = %bb.aj
  unreachable

bb.an:                                            ; preds = %bb.aj
  %i.avw = sext i32 %i.asn to i64
  %i.avx = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.avw ; 2 uses
  %i.avy = load float, ptr %i.avx, align 4, !tbaa !21
  %i.avz = getelementptr i8, ptr %i.avx, i64 4
  %i.awa = load float, ptr %i.avz, align 4, !tbaa !21
  %i.awb = fadd reassoc nsz arcp contract afn float %i.awa, %i.avy
  %i.awc = add nsw i32 %i.asn, %i.ajc
  %i.awd = sext i32 %i.awc to i64
  %i.awe = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.awd ; 2 uses
  %i.awf = load float, ptr %i.awe, align 4, !tbaa !21
  %i.awg = fadd reassoc nsz arcp contract afn float %i.awb, %i.awf
  %i.awh = getelementptr i8, ptr %i.awe, i64 4
  %i.awi = load float, ptr %i.awh, align 4, !tbaa !21
  %i.awj = fadd reassoc nsz arcp contract afn float %i.awg, %i.awi
  %i.awk = fmul reassoc nsz arcp contract afn float %i.awj, 2.500000e-01
  br label %ll_expand_gaussian.exit.i

ll_expand_gaussian.exit.i:                        ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %.0.i.i = phi nsz float [ %i.atz, %bb.ak ], [ %i.auy, %bb.al ], [ %i.avv, %bb.am ], [ %i.awk, %bb.an ]
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store float %.0.i.i, ptr %gep.i, align 4, !tbaa !21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i795 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i795, label %._crit_edge.i, label %bb.aj

gauss_expand.exit:                                ; preds = %.loopexit.i.i, %bb.ai
  %i.awl = mul nsw i32 %.pre-phi, %.05.lcssa.i775822
  %i.awm = sext i32 %i.awl to i64
  %i.awn = getelementptr inbounds [4 x i8], ptr %i.aiw, i64 %i.awm
  %i.awo = getelementptr inbounds [4 x i8], ptr %i.aiw, i64 %i.asf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.awn, ptr align 4 %i.awo, i64 %i.asb, i1 false)
  %i.awp = icmp sgt i32 %.05.lcssa.i783, 0
  %i.awq = icmp sgt i32 %.05.lcssa.i775822, 0
  %or.cond1143 = select i1 %i.awp, i1 %i.awq, i1 false
  br i1 %or.cond1143, label %.preheader846.lr.ph.split, label %._crit_edge899.split

.preheader846.lr.ph.split:                        ; preds = %gauss_expand.exit
  %i.awr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv1041
  %i.aws = load ptr, ptr %i.awr, align 8, !tbaa !17
  %i.awt = zext nneg i32 %.05.lcssa.i775822 to i64 ; 2 uses
  %wide.trip.count1039 = zext nneg i32 %.05.lcssa.i783 to i64
  br label %.preheader846

.preheader846:                                    ; preds = %.preheader846.lr.ph.split, %._crit_edge897
  %indvars.iv1036 = phi i64 [ 0, %.preheader846.lr.ph.split ], [ %indvars.iv.next1037, %._crit_edge897 ] ; 3 uses
  %i.awu = mul nuw nsw i64 %indvars.iv1036, %i.awt
  %i.awv = trunc nuw nsw i64 %indvars.iv1036 to i32 ; 2 uses
  br label %bb.ao

._crit_edge899.split:                             ; preds = %._crit_edge897, %gauss_expand.exit
  %indvars.iv.next1042 = add nsw i64 %indvars.iv1041, -1
  %i.aww = icmp sgt i64 %indvars.iv1041, 0
  %indvar.next1690 = add i64 %indvar1689, 1
  br i1 %i.aww, label %bb.ah, label %.preheader844.preheader

._crit_edge897:                                   ; preds = %.critedge
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 1 ; 2 uses
  %exitcond1040.not = icmp eq i64 %indvars.iv.next1037, %wide.trip.count1039
  br i1 %exitcond1040.not, label %._crit_edge899.split, label %.preheader846

bb.ao:                                            ; preds = %.preheader846, %.critedge
  %indvars.iv1031 = phi i64 [ 0, %.preheader846 ], [ %indvars.iv.next1032, %.critedge ] ; 3 uses
  %i.awx = add nuw nsw i64 %indvars.iv1031, %i.awu ; 2 uses
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %i.aws, i64 %i.awx
  %i.awz = load float, ptr %i.awy, align 4, !tbaa !21 ; 5 uses
  %i.axa = fcmp reassoc nsz arcp contract afn ugt float %.pre1075, %i.awz
  br i1 %i.axa, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.axb = fcmp reassoc nsz arcp contract afn ugt float %i.ahl, %i.awz
  br i1 %i.axb, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.axc = fcmp reassoc nsz arcp contract afn ugt float %i.ahm, %i.awz
  br i1 %i.axc, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.axd = fcmp reassoc nsz arcp contract afn ugt float %i.ahn, %i.awz
  %spec.select1144 = select i1 %i.axd, i32 4, i32 5
  br label %.critedge

.critedge:                                        ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.0529.lcssa = phi i32 [ 3, %bb.aq ], [ 1, %bb.ao ], [ 2, %bb.ap ], [ %spec.select1144, %bb.ar ] ; 2 uses
  %i.axe = add nsw i32 %.0529.lcssa, -1
  %i.axf = zext nneg i32 %i.axe to i64            ; 2 uses
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.axf
  %i.axh = load float, ptr %i.axg, align 4, !tbaa !21 ; 2 uses
  %i.axi = fsub reassoc nsz arcp contract afn float %i.awz, %i.axh
  %i.axj = zext nneg i32 %.0529.lcssa to i64      ; 2 uses
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.axj
  %i.axl = load float, ptr %i.axk, align 4, !tbaa !21
  %i.axm = fsub reassoc nsz arcp contract afn float %i.axl, %i.axh
  %i.axn = fdiv reassoc nsz arcp contract afn float %i.axi, %i.axm ; 3 uses
  %i.axo = fcmp reassoc nsz arcp contract afn ogt float %i.axn, 0.000000e+00
  %i.axp = fcmp reassoc nsz arcp contract afn olt float %i.axn, 1.000000e+00
  %spec.select644 = select reassoc nsz arcp contract afn i1 %i.axp, float %i.axn, float 1.000000e+00
  %i.axq = select reassoc nsz arcp contract afn i1 %i.axo, float %spec.select644, float 0.000000e+00
  %i.axr = getelementptr inbounds nuw [240 x i8], ptr %i.h, i64 %i.axf ; 2 uses
  %i.axs = getelementptr inbounds nuw [8 x i8], ptr %i.axr, i64 %i.ais
  %i.axt = load ptr, ptr %i.axs, align 8, !tbaa !17
  %i.axu = getelementptr inbounds nuw [8 x i8], ptr %i.axr, i64 %indvars.iv1041
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !17
  %i.axw = trunc nuw nsw i64 %indvars.iv1031 to i32 ; 2 uses
  %i.axx = tail call reassoc nsz arcp contract afn fastcc float @ll_laplacian(ptr noundef %i.axt, ptr noundef %i.axv, i32 noundef %i.axw, i32 noundef %i.awv, i32 noundef %.05.lcssa.i775822, i32 noundef %.05.lcssa.i783) ; 2 uses
  %i.axy = getelementptr inbounds nuw [240 x i8], ptr %i.h, i64 %i.axj ; 2 uses
  %i.axz = getelementptr inbounds nuw [8 x i8], ptr %i.axy, i64 %i.ais
  %i.aya = load ptr, ptr %i.axz, align 8, !tbaa !17
  %i.ayb = getelementptr inbounds nuw [8 x i8], ptr %i.axy, i64 %indvars.iv1041
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !17
  %i.ayd = tail call reassoc nsz arcp contract afn fastcc float @ll_laplacian(ptr noundef %i.aya, ptr noundef %i.ayc, i32 noundef %i.axw, i32 noundef %i.awv, i32 noundef %.05.lcssa.i775822, i32 noundef %.05.lcssa.i783)
  %i.aye = fsub reassoc nsz arcp contract afn float %i.ayd, %i.axx
  %i.ayf = fmul reassoc nsz arcp contract afn float %i.aye, %i.axq
  %i.ayg = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %i.awx ; 2 uses
  %i.ayh = load float, ptr %i.ayg, align 4, !tbaa !21
  %i.ayi = fadd reassoc nsz arcp contract afn float %i.ayh, %i.axx
  %i.ayj = fadd reassoc nsz arcp contract afn float %i.ayi, %i.ayf
  store float %i.ayj, ptr %i.ayg, align 4, !tbaa !21
  %indvars.iv.next1032 = add nuw nsw i64 %indvars.iv1031, 1 ; 2 uses
  %exitcond1035.not = icmp eq i64 %indvars.iv.next1032, %i.awt
  br i1 %exitcond1035.not, label %._crit_edge897, label %bb.ao

.preheader844:                                    ; preds = %.preheader844.preheader, %._crit_edge905
  %indvars.iv1049 = phi i64 [ 0, %.preheader844.preheader ], [ %indvars.iv.next1050, %._crit_edge905 ] ; 3 uses
  %i.ayk = add nuw nsw i64 %indvars.iv1049, %i.ahp
  %i.ayl = mul nsw i64 %i.ayk, %i.ahq
  %i.aym = mul nuw nsw i64 %indvars.iv1049, %i.ahr ; 4 uses
  %gep1142 = getelementptr [4 x i8], ptr %invariant.gep1141, i64 %i.ayl ; 4 uses
  %brmerge1795 = select i1 %min.iters.check1320, i1 true, i1 %conflict.rdx
  br i1 %brmerge1795, label %scalar.ph.preheader, label %vector.ph1329

scalar.ph.preheader:                              ; preds = %.preheader844, %vector.body1333
  %indvars.iv1044.ph = phi i64 [ %n.vec1330, %vector.body1333 ], [ 0, %.preheader844 ] ; 6 uses
  %i.ayn = sub nsw i64 %wide.trip.count1047, %indvars.iv1044.ph
  %xtraiter1720 = and i64 %i.ayn, 1
  %lcmp.mod1721.not = icmp eq i64 %xtraiter1720, 0
  br i1 %lcmp.mod1721.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ayo = getelementptr [4 x i8], ptr %gep1142, i64 %indvars.iv1044.ph
  %i.ayp = load float, ptr %i.ayo, align 4, !tbaa !21
  %i.ayq = fmul reassoc nsz arcp contract afn float %i.ayp, 1.000000e+02
  %i.ayr = add nuw nsw i64 %indvars.iv1044.ph, %i.aym
  %i.ays = shl nsw i64 %i.ayr, 2                  ; 3 uses
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ays
  store float %i.ayq, ptr %i.ayt, align 4, !tbaa !21
  %i.ayu = or disjoint i64 %i.ays, 1              ; 2 uses
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ayu
  %i.ayw = load float, ptr %i.ayv, align 4, !tbaa !21
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ayu
  store float %i.ayw, ptr %i.ayx, align 4, !tbaa !21
  %i.ayy = or disjoint i64 %i.ays, 2              ; 2 uses
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ayy
  %i.aza = load float, ptr %i.ayz, align 4, !tbaa !21
  %i.azb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ayy
  store float %i.aza, ptr %i.azb, align 4, !tbaa !21
  %indvars.iv.next1045.prol = add nuw nsw i64 %indvars.iv1044.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1044.unr = phi i64 [ %indvars.iv1044.ph, %scalar.ph.preheader ], [ %indvars.iv.next1045.prol, %scalar.ph.prol ]
  %i.azc = icmp eq i64 %indvars.iv1044.ph, %i.aih
  br i1 %i.azc, label %._crit_edge905, label %scalar.ph

vector.ph1329:                                    ; preds = %.preheader844
  %broadcast.splatinsert1331 = insertelement <4 x i64> poison, i64 %i.aym, i64 0
  %broadcast.splat1332 = shufflevector <4 x i64> %broadcast.splatinsert1331, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1333

vector.body1333:                                  ; preds = %vector.body1333, %vector.ph1329
  %index1334 = phi i64 [ 0, %vector.ph1329 ], [ %index.next1341, %vector.body1333 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1329 ], [ %vec.ind.next, %vector.body1333 ] ; 2 uses
  %i.azd = getelementptr [4 x i8], ptr %gep1142, i64 %index1334
  %wide.load1335 = load <4 x float>, ptr %i.azd, align 4, !tbaa !21, !alias.scope !160
  %i.aze = fmul reassoc nsz arcp contract afn <4 x float> %wide.load1335, splat (float 1.000000e+02)
  %i.azf = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat1332
  %i.azg = shl nsw <4 x i64> %i.azf, splat (i64 2) ; 3 uses
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %1, <4 x i64> %i.azg
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.aze, <4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !21, !alias.scope !161, !noalias !162
  %i.azh = or disjoint <4 x i64> %i.azg, splat (i64 1) ; 2 uses
  %i.azi = extractelement <4 x i64> %i.azh, i64 0
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.azi
  %wide.vec1336 = load <16 x float>, ptr %i.azj, align 4, !tbaa !21, !alias.scope !163 ; 2 uses
  %strided.vec1337 = shufflevector <16 x float> %wide.vec1336, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1338 = shufflevector <16 x float> %wide.vec1336, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %wide.gep1339 = getelementptr inbounds nuw [4 x i8], ptr %1, <4 x i64> %i.azh
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec1337, <4 x ptr> align 4 %wide.gep1339, <4 x i1> splat (i1 true)), !tbaa !21, !alias.scope !161, !noalias !162
  %i.azk = or disjoint <4 x i64> %i.azg, splat (i64 2)
  %wide.gep1340 = getelementptr inbounds nuw [4 x i8], ptr %1, <4 x i64> %i.azk
end_hunk_1
begin_hunk_2_@ll_pad_input:bb.a
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bn = add nuw nsw i64 %indvars.iv.prol, %i.z
  %.idx.prol = shl nuw nsw i64 %i.bn, 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.prol
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !21
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, f0x3C23D70A
  %i.br = trunc nuw nsw i64 %indvars.iv.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.br
  %i.bs = sext i32 %.reass.prol to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bs
  store float %i.bq, ptr %i.bt, align 4, !tbaa !21
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !189

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bu = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %.unr-lcssa, label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index602 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next605, %vec.epilog.vector.body ] ; 3 uses
  %i.bw = add nuw nsw i64 %index602, %i.z
  %i.bx = shl nuw nsw i64 %i.bw, 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bx
  %wide.vec603 = load <16 x float>, ptr %i.by, align 4, !tbaa !21, !alias.scope !214, !noalias !215
  %strided.vec604 = shufflevector <16 x float> %wide.vec603, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.bz = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec604, splat (float f0x3C23D70A)
  %i.ca = trunc nuw nsw i64 %index602 to i32
  %i.cb = add i32 %invariant.op, %i.ca
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.cc
  store <4 x float> %i.bz, ptr %i.cd, align 4, !tbaa !21, !alias.scope !215
  %index.next605 = add nuw i64 %index602, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next605, %n.vec601
  br i1 %i.ce, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !190

.preheader438:                                    ; preds = %.unr-lcssa
  %i.cf = load i32, ptr %5, align 4, !tbaa !19    ; 3 uses
  %i.cg = sub nsw i32 %i.cf, %3                   ; 3 uses
  %factor.op.mul448 = shl i32 %1, 2               ; 2 uses
  %i.ch = icmp slt i32 %3, %i.cg
  br i1 %i.ch, label %.preheader437.lr.ph, label %.preheader435

.preheader437.lr.ph:                              ; preds = %.preheader438
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !26 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !216
  %invariant.op444 = sub i32 %i.ck, %3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !217
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %wide.trip.count492 = zext nneg i32 %i.cg to i64
  br label %.preheader437

.unr-lcssa:                                       ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.prol.loopexit
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %exitcond487.not = icmp eq i64 %indvars.iv.next484, %wide.trip.count486
  br i1 %exitcond487.not, label %.preheader438, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cs = add nuw nsw i64 %indvars.iv, %i.z
  %.idx = shl nuw nsw i64 %i.cs, 4
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !21
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, f0x3C23D70A
  %i.cw = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.cw
  %i.cx = sext i32 %.reass to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.cx
  store float %i.cv, ptr %i.cy, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = add nuw nsw i64 %indvars.iv.next, %i.z
  %.idx.1 = shl nuw nsw i64 %i.cz, 4
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1
  %i.db = load float, ptr %i.da, align 4, !tbaa !21
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, f0x3C23D70A
  %i.dd = trunc nuw nsw i64 %indvars.iv.next to i32
  %.reass.1 = add i32 %invariant.op, %i.dd
  %i.de = sext i32 %.reass.1 to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.de
  store float %i.dc, ptr %i.df, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dg = add nuw nsw i64 %indvars.iv.next.1, %i.z
  %.idx.2 = shl nuw nsw i64 %i.dg, 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.2
  %i.di = load float, ptr %i.dh, align 4, !tbaa !21
  %i.dj = fmul reassoc nsz arcp contract afn float %i.di, f0x3C23D70A
  %i.dk = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.dk
  %i.dl = sext i32 %.reass.2 to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dl
  store float %i.dj, ptr %i.dm, align 4, !tbaa !21
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dn = add nuw nsw i64 %indvars.iv.next.2, %i.z
  %.idx.3 = shl nuw nsw i64 %i.dn, 4
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.3
  %i.dp = load float, ptr %i.do, align 4, !tbaa !21
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, f0x3C23D70A
  %i.dr = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.dr
  %i.ds = sext i32 %.reass.3 to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ds
  store float %i.dq, ptr %i.dt, align 4, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.unr-lcssa, label %vec.epilog.scalar.ph, !llvm.loop !191

.preheader437:                                    ; preds = %.preheader437.lr.ph, %bb.c
  %indvars.iv489 = phi i64 [ %i.n, %.preheader437.lr.ph ], [ %indvars.iv.next490, %bb.c ] ; 3 uses
  %i.du = sub nuw nsw i64 %indvars.iv489, %i.n    ; 2 uses
  %i.dv = trunc i64 %i.du to i32
  %i.dw = add i32 %i.cn, %i.dv
  %i.dx = sitofp reassoc nsz arcp contract afn i32 %i.dw to float
  %i.dy = trunc nuw nsw i64 %i.du to i32
  %factor.op.mul.reass = mul i32 %factor.op.mul448, %i.dy
  %i.dz = sext i32 %factor.op.mul.reass to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dz
  %i.eb = insertelement <2 x float> poison, float %i.dx, i64 1
  %.pn = trunc i64 %indvars.iv489 to i32
  %.sink577 = mul nsw i32 %i.l, %.pn
  br label %bb.d

.lr.ph455:                                        ; preds = %bb.c
  %i.ec = add nuw nsw i32 %3, %1                  ; 2 uses
  %i.ed = icmp slt i32 %i.ec, %i.l
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %i.ed, label %.lr.ph455.split, label %.preheader435

.lr.ph455.split:                                  ; preds = %.lr.ph455
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !26 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !216
  %invariant.op452 = sub i32 %i.ek, %3
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !217
  %i.eo = zext nneg i32 %i.ec to i64
  %wide.trip.count502 = zext nneg i32 %i.cg to i64
  br label %.lr.ph

bb.c:                                             ; preds = %bb.i
  %indvars.iv.next490 = add nuw nsw i64 %indvars.iv489, 1 ; 2 uses
  %exitcond493.not = icmp eq i64 %indvars.iv.next490, %wide.trip.count492
  br i1 %exitcond493.not, label %.lr.ph455, label %.preheader437

bb.d:                                             ; preds = %.preheader437, %bb.i
  %.0384447 = phi i32 [ 0, %.preheader437 ], [ %i.gy, %bb.i ] ; 3 uses
  %.reass445 = add i32 %.0384447, %invariant.op444
  %i.ep = sitofp reassoc nsz arcp contract afn i32 %.reass445 to float
  %i.eq = load float, ptr %i.cl, align 4, !tbaa !28
  %i.er = insertelement <2 x float> %i.eb, float %i.ep, i64 0
  %i.es = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = fdiv reassoc nsz arcp contract afn <2 x float> %i.er, %i.et ; 3 uses
  %i.ev = extractelement <2 x float> %i.eu, i64 0
  %i.ew = fcmp reassoc nsz arcp contract afn olt float %i.ev, 0.000000e+00
  br i1 %i.ew, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ex = load ptr, ptr %i.co, align 8, !tbaa !29 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !30
  %i.fa = sitofp reassoc nsz arcp contract afn i32 %i.ez to float ; 2 uses
  %i.fb = extractelement <2 x float> %i.eu, i64 1 ; 3 uses
  %i.fc = fcmp reassoc nsz arcp contract afn oge float %i.fb, %i.fa
  %i.fd = fcmp reassoc nsz arcp contract afn olt float %i.fb, 0.000000e+00
  %or.cond = or i1 %i.fd, %i.fc
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !218
  %i.fg = sitofp reassoc nsz arcp contract afn i32 %i.ff to float ; 2 uses
  %i.fh = fcmp reassoc nsz arcp contract afn ult float %i.fb, %i.fg
  br i1 %i.fh, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.fi = load float, ptr %i.ea, align 4, !tbaa !21
  %i.fj = fmul reassoc nsz arcp contract afn float %i.fi, f0x3C23D70A
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.fk = load <2 x i32>, ptr %i.cq, align 8, !tbaa !19 ; 3 uses
  %i.fl = extractelement <2 x i32> %i.fk, i64 0
  %i.fm = load <2 x i32>, ptr %i.cp, align 8, !tbaa !19 ; 2 uses
  %i.fn = sitofp <2 x i32> %i.fm to <2 x float>
  %i.fo = fmul reassoc nsz arcp contract afn <2 x float> %i.eu, %i.fn
  %i.fp = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fq = insertelement <2 x float> %i.fp, float %i.fg, i64 1
  %i.fr = fdiv reassoc nsz arcp contract afn <2 x float> %i.fo, %i.fq
  %i.fs = sub nsw <2 x i32> %i.fk, %i.fm
  %i.ft = sdiv <2 x i32> %i.fs, splat (i32 2)
  %i.fu = sitofp <2 x i32> %i.ft to <2 x float>
  %i.fv = fadd reassoc nsz arcp contract afn <2 x float> %i.fr, %i.fu ; 3 uses
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.fx = add nsw <2 x i32> %i.fk, splat (i32 -1)
  %i.fy = sitofp <2 x i32> %i.fx to <2 x float>   ; 3 uses
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ga = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.fz, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.gb = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.fw, %i.ga ; 2 uses
  %i.gc = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.fw, %i.ga ; 2 uses
  %i.gd = extractelement <4 x i1> %i.gb, i64 1
  %i.ge = extractelement <2 x float> %i.fv, i64 0
  %spec.select = select reassoc nsz arcp contract afn i1 %i.gd, float 0.000000e+00, float %i.ge
  %i.gf = extractelement <4 x i1> %i.gc, i64 3
  %i.gg = extractelement <2 x float> %i.fy, i64 0
  %i.gh = select reassoc nsz arcp contract afn i1 %i.gf, float %i.gg, float %spec.select
  %i.gi = fptosi float %i.gh to i32
  %i.gj = extractelement <4 x i1> %i.gb, i64 0
  %i.gk = extractelement <2 x float> %i.fv, i64 1
  %spec.select424 = select reassoc nsz arcp contract afn i1 %i.gj, float 0.000000e+00, float %i.gk
  %i.gl = extractelement <4 x i1> %i.gc, i64 2
  %i.gm = extractelement <2 x float> %i.fy, i64 1
  %i.gn = select reassoc nsz arcp contract afn i1 %i.gl, float %i.gm, float %spec.select424
  %i.go = fptosi float %i.gn to i32
  %i.gp = load ptr, ptr %i.cr, align 8, !tbaa !15
  %i.gq = mul nsw i32 %i.fl, %i.go
  %i.gr = add nsw i32 %i.gq, %i.gi
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.gs
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi float [ %i.gu, %bb.h ], [ %i.fj, %bb.g ]
  %i.gv = add nsw i32 %.sink577, %.0384447
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.gw
  store float %.sink, ptr %i.gx, align 4, !tbaa !21
  %i.gy = add nuw nsw i32 %.0384447, 1            ; 2 uses
  %exitcond488.not = icmp eq i32 %i.gy, %3
  br i1 %exitcond488.not, label %bb.c, label %bb.d

.preheader435:                                    ; preds = %._crit_edge, %.preheader438, %.lr.ph455
  %i.gz = icmp sgt i32 %i.l, 0
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br i1 %i.gz, label %.preheader435.split, label %pad_by_replication.exit

.preheader435.split:                              ; preds = %.preheader435
  %i.he = mul nuw nsw i32 %i.l, %3
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !26 ; 3 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !216
  %invariant.op459 = sub i32 %i.hh, %3
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !217
  %invariant.op462 = sub i32 %i.hk, %3
  %i.hl = zext nneg i32 %i.he to i64
  %i.hm = zext nneg i32 %i.l to i64               ; 2 uses
  %wide.trip.count512 = zext nneg i32 %3 to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.hl
  br label %.preheader434

.lr.ph:                                           ; preds = %.lr.ph455.split, %._crit_edge
  %indvars.iv499 = phi i64 [ %i.n, %.lr.ph455.split ], [ %indvars.iv.next500, %._crit_edge ] ; 3 uses
  %i.hn = sub nuw nsw i64 %indvars.iv499, %i.n    ; 2 uses
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = add i32 %i.en, %i.ho
  %i.hq = sitofp reassoc nsz arcp contract afn i32 %i.hp to float
  %i.hr = mul nsw i64 %indvars.iv499, %i.o
  %i.hs = trunc i64 %i.hn to i32
  %i.ht = add i32 %i.hs, 1
  %i.hu = mul i32 %factor.op.mul448, %i.ht
  %i.hv = add i32 %i.hu, -4
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hw
  %i.hy = insertelement <2 x float> poison, float %i.hq, i64 1
  %.sink580 = getelementptr [4 x i8], ptr %i.i, i64 %i.hr
  br label %bb.j

._crit_edge:                                      ; preds = %bb.o
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1 ; 2 uses
  %exitcond503.not = icmp eq i64 %indvars.iv.next500, %wide.trip.count502
  br i1 %exitcond503.not, label %.preheader435, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv494 = phi i64 [ %i.eo, %.lr.ph ], [ %indvars.iv.next495, %bb.o ] ; 3 uses
  %i.hz = trunc nsw i64 %indvars.iv494 to i32
  %.reass453 = add i32 %invariant.op452, %i.hz
  %i.ia = sitofp reassoc nsz arcp contract afn i32 %.reass453 to float
  %i.ib = load float, ptr %i.el, align 4, !tbaa !28
  %i.ic = insertelement <2 x float> %i.hy, float %i.ia, i64 0
  %i.id = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = fdiv reassoc nsz arcp contract afn <2 x float> %i.ic, %i.ie ; 3 uses
  %i.ig = extractelement <2 x float> %i.if, i64 0
  %i.ih = fcmp reassoc nsz arcp contract afn olt float %i.ig, 0.000000e+00
  br i1 %i.ih, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ii = load ptr, ptr %i.ee, align 8, !tbaa !29 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !30
  %i.il = sitofp reassoc nsz arcp contract afn i32 %i.ik to float ; 2 uses
  %i.im = extractelement <2 x float> %i.if, i64 1 ; 3 uses
  %i.in = fcmp reassoc nsz arcp contract afn oge float %i.im, %i.il
  %i.io = fcmp reassoc nsz arcp contract afn olt float %i.im, 0.000000e+00
  %or.cond3 = or i1 %i.io, %i.in
  br i1 %or.cond3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 12
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !218
  %i.ir = sitofp reassoc nsz arcp contract afn i32 %i.iq to float ; 2 uses
  %i.is = fcmp reassoc nsz arcp contract afn ult float %i.im, %i.ir
  br i1 %i.is, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.it = load float, ptr %i.hx, align 4, !tbaa !21
  %i.iu = fmul reassoc nsz arcp contract afn float %i.it, f0x3C23D70A
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.iv = load <2 x i32>, ptr %i.eg, align 8, !tbaa !19 ; 3 uses
  %i.iw = extractelement <2 x i32> %i.iv, i64 0
  %i.ix = load <2 x i32>, ptr %i.ef, align 8, !tbaa !19 ; 2 uses
  %i.iy = sitofp <2 x i32> %i.ix to <2 x float>
  %i.iz = fmul reassoc nsz arcp contract afn <2 x float> %i.if, %i.iy
  %i.ja = insertelement <2 x float> poison, float %i.il, i64 0
  %i.jb = insertelement <2 x float> %i.ja, float %i.ir, i64 1
  %i.jc = fdiv reassoc nsz arcp contract afn <2 x float> %i.iz, %i.jb
  %i.jd = sub nsw <2 x i32> %i.iv, %i.ix
  %i.je = sdiv <2 x i32> %i.jd, splat (i32 2)
  %i.jf = sitofp <2 x i32> %i.je to <2 x float>
  %i.jg = fadd reassoc nsz arcp contract afn <2 x float> %i.jc, %i.jf ; 3 uses
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.ji = add nsw <2 x i32> %i.iv, splat (i32 -1)
  %i.jj = sitofp <2 x i32> %i.ji to <2 x float>   ; 3 uses
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.jl = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.jk, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.jm = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.jh, %i.jl ; 2 uses
  %i.jn = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.jh, %i.jl ; 2 uses
  %i.jo = extractelement <4 x i1> %i.jm, i64 1
  %i.jp = extractelement <2 x float> %i.jg, i64 0
  %spec.select425 = select reassoc nsz arcp contract afn i1 %i.jo, float 0.000000e+00, float %i.jp
  %i.jq = extractelement <4 x i1> %i.jn, i64 3
  %i.jr = extractelement <2 x float> %i.jj, i64 0
  %i.js = select reassoc nsz arcp contract afn i1 %i.jq, float %i.jr, float %spec.select425
  %i.jt = fptosi float %i.js to i32
  %i.ju = extractelement <4 x i1> %i.jm, i64 0
  %i.jv = extractelement <2 x float> %i.jg, i64 1
  %spec.select426 = select reassoc nsz arcp contract afn i1 %i.ju, float 0.000000e+00, float %i.jv
  %i.jw = extractelement <4 x i1> %i.jn, i64 2
  %i.jx = extractelement <2 x float> %i.jj, i64 1
  %i.jy = select reassoc nsz arcp contract afn i1 %i.jw, float %i.jx, float %spec.select426
  %i.jz = fptosi float %i.jy to i32
  %i.ka = load ptr, ptr %i.eh, align 8, !tbaa !15
  %i.kb = mul nsw i32 %i.iw, %i.jz
  %i.kc = add nsw i32 %i.kb, %i.jt
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink578 = phi float [ %i.kf, %bb.n ], [ %i.iu, %bb.m ]
  %i.kg = getelementptr [4 x i8], ptr %.sink580, i64 %indvars.iv494
  store float %.sink578, ptr %i.kg, align 4, !tbaa !21
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 2 uses
  %exitcond498.not = icmp eq i64 %indvars.iv.next495, %i.o
  br i1 %exitcond498.not, label %._crit_edge, label %bb.j

.preheader434:                                    ; preds = %.preheader435.split, %._crit_edge458
  %indvars.iv509 = phi i64 [ 0, %.preheader435.split ], [ %indvars.iv.next510, %._crit_edge458 ] ; 3 uses
  %i.kh = trunc nuw nsw i64 %indvars.iv509 to i32
  %.reass463 = add i32 %invariant.op462, %i.kh
  %i.ki = sitofp reassoc nsz arcp contract afn i32 %.reass463 to float
  %i.kj = mul nuw nsw i64 %indvars.iv509, %i.hm
  %i.kk = insertelement <2 x float> poison, float %i.ki, i64 1
  %.sink585 = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.kj
  br label %bb.p

.split:                                           ; preds = %._crit_edge458
  %i.kl = add nuw nsw i32 %3, %2                  ; 3 uses
  %.not589 = icmp slt i32 %i.kl, %i.cf
  br i1 %.not589, label %.preheader432.lr.ph.split, label %pad_by_replication.exit

.preheader432.lr.ph.split:                        ; preds = %.split
  %i.km = add nsw i32 %i.kl, -1
  %i.kn = mul nsw i32 %i.l, %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !26 ; 3 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !216
  %invariant.op467 = sub i32 %i.kq, %3
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !217
  %invariant.op470 = sub i32 %i.kt, %3
  %i.ku = sext i32 %i.kn to i64
  %i.kv = zext nneg i32 %i.kl to i64
  %wide.trip.count522 = zext nneg i32 %i.cf to i64
  %wide.trip.count517 = zext nneg i32 %i.l to i64
  %invariant.gep572 = getelementptr [4 x i8], ptr %i.i, i64 %i.ku
  br label %.preheader432

._crit_edge458:                                   ; preds = %bb.u
  %indvars.iv.next510 = add nuw nsw i64 %indvars.iv509, 1 ; 2 uses
  %exitcond513.not = icmp eq i64 %indvars.iv.next510, %wide.trip.count512
  br i1 %exitcond513.not, label %.split, label %.preheader434

bb.p:                                             ; preds = %.preheader434, %bb.u
  %indvars.iv504 = phi i64 [ 0, %.preheader434 ], [ %indvars.iv.next505, %bb.u ] ; 4 uses
  %i.kw = trunc nuw nsw i64 %indvars.iv504 to i32
  %.reass460 = add i32 %invariant.op459, %i.kw
  %i.kx = sitofp reassoc nsz arcp contract afn i32 %.reass460 to float
  %i.ky = load float, ptr %i.hi, align 4, !tbaa !28
  %i.kz = insertelement <2 x float> %i.kk, float %i.kx, i64 0
  %i.la = insertelement <2 x float> poison, float %i.ky, i64 0
  %i.lb = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lc = fdiv reassoc nsz arcp contract afn <2 x float> %i.kz, %i.lb ; 3 uses
  %i.ld = extractelement <2 x float> %i.lc, i64 0
  %i.le = fcmp reassoc nsz arcp contract afn olt float %i.ld, 0.000000e+00
  br i1 %i.le, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.lf = load ptr, ptr %i.ha, align 8, !tbaa !29 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !30
  %i.li = sitofp reassoc nsz arcp contract afn i32 %i.lh to float ; 2 uses
  %i.lj = extractelement <2 x float> %i.lc, i64 1 ; 3 uses
  %i.lk = fcmp reassoc nsz arcp contract afn oge float %i.lj, %i.li
  %i.ll = fcmp reassoc nsz arcp contract afn olt float %i.lj, 0.000000e+00
  %or.cond5 = or i1 %i.ll, %i.lk
  br i1 %or.cond5, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !218
  %i.lo = sitofp reassoc nsz arcp contract afn i32 %i.ln to float ; 2 uses
  %i.lp = fcmp reassoc nsz arcp contract afn ult float %i.lj, %i.lo
  br i1 %i.lp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv504
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.lq = load <2 x i32>, ptr %i.hc, align 8, !tbaa !19 ; 3 uses
  %i.lr = extractelement <2 x i32> %i.lq, i64 0
  %i.ls = load <2 x i32>, ptr %i.hb, align 8, !tbaa !19 ; 2 uses
  %i.lt = sitofp <2 x i32> %i.ls to <2 x float>
  %i.lu = fmul reassoc nsz arcp contract afn <2 x float> %i.lc, %i.lt
  %i.lv = insertelement <2 x float> poison, float %i.li, i64 0
  %i.lw = insertelement <2 x float> %i.lv, float %i.lo, i64 1
  %i.lx = fdiv reassoc nsz arcp contract afn <2 x float> %i.lu, %i.lw
  %i.ly = sub nsw <2 x i32> %i.lq, %i.ls
  %i.lz = sdiv <2 x i32> %i.ly, splat (i32 2)
  %i.ma = sitofp <2 x i32> %i.lz to <2 x float>
  %i.mb = fadd reassoc nsz arcp contract afn <2 x float> %i.lx, %i.ma ; 3 uses
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.md = add nsw <2 x i32> %i.lq, splat (i32 -1)
  %i.me = sitofp <2 x i32> %i.md to <2 x float>   ; 3 uses
  %i.mf = shufflevector <2 x float> %i.me, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.mg = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.mf, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.mh = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.mc, %i.mg ; 2 uses
  %i.mi = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.mc, %i.mg ; 2 uses
  %i.mj = extractelement <4 x i1> %i.mh, i64 1
  %i.mk = extractelement <2 x float> %i.mb, i64 0
  %spec.select427 = select reassoc nsz arcp contract afn i1 %i.mj, float 0.000000e+00, float %i.mk
  %i.ml = extractelement <4 x i1> %i.mi, i64 3
  %i.mm = extractelement <2 x float> %i.me, i64 0
  %i.mn = select reassoc nsz arcp contract afn i1 %i.ml, float %i.mm, float %spec.select427
  %i.mo = fptosi float %i.mn to i32
  %i.mp = extractelement <4 x i1> %i.mh, i64 0
  %i.mq = extractelement <2 x float> %i.mb, i64 1
  %spec.select428 = select reassoc nsz arcp contract afn i1 %i.mp, float 0.000000e+00, float %i.mq
  %i.mr = extractelement <4 x i1> %i.mi, i64 2
  %i.ms = extractelement <2 x float> %i.me, i64 1
  %i.mt = select reassoc nsz arcp contract afn i1 %i.mr, float %i.ms, float %spec.select428
  %i.mu = fptosi float %i.mt to i32
  %i.mv = load ptr, ptr %i.hd, align 8, !tbaa !15
  %i.mw = mul nsw i32 %i.lr, %i.mu
  %i.mx = add nsw i32 %i.mw, %i.mo
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.mv, i64 %i.my
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink583.in = phi ptr [ %i.mz, %bb.t ], [ %gep, %bb.s ]
  %.sink583 = load float, ptr %.sink583.in, align 4, !tbaa !21
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.sink585, i64 %indvars.iv504
  store float %.sink583, ptr %i.na, align 4, !tbaa !21
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1 ; 2 uses
  %exitcond508.not = icmp eq i64 %indvars.iv.next505, %i.hm
  br i1 %exitcond508.not, label %._crit_edge458, label %bb.p

.preheader432:                                    ; preds = %.preheader432.lr.ph.split, %._crit_edge466
  %indvars.iv519 = phi i64 [ %i.kv, %.preheader432.lr.ph.split ], [ %indvars.iv.next520, %._crit_edge466 ] ; 3 uses
  %i.nb = trunc nsw i64 %indvars.iv519 to i32
  %.reass471 = add i32 %invariant.op470, %i.nb
  %i.nc = sitofp reassoc nsz arcp contract afn i32 %.reass471 to float
  %i.nd = mul nuw nsw i64 %indvars.iv519, %i.o
  %i.ne = insertelement <2 x float> poison, float %i.nc, i64 1
  %.sink588 = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.nd
  br label %bb.v

._crit_edge466:                                   ; preds = %bb.aa
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %exitcond523.not = icmp eq i64 %indvars.iv.next520, %wide.trip.count522
  br i1 %exitcond523.not, label %pad_by_replication.exit, label %.preheader432

bb.v:                                             ; preds = %.preheader432, %bb.aa
  %indvars.iv514 = phi i64 [ 0, %.preheader432 ], [ %indvars.iv.next515, %bb.aa ] ; 4 uses
  %i.nf = trunc nuw nsw i64 %indvars.iv514 to i32
  %.reass468 = add i32 %invariant.op467, %i.nf
  %i.ng = sitofp reassoc nsz arcp contract afn i32 %.reass468 to float
  %i.nh = load float, ptr %i.kr, align 4, !tbaa !28
  %i.ni = insertelement <2 x float> %i.ne, float %i.ng, i64 0
  %i.nj = insertelement <2 x float> poison, float %i.nh, i64 0
  %i.nk = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nl = fdiv reassoc nsz arcp contract afn <2 x float> %i.ni, %i.nk ; 3 uses
  %i.nm = extractelement <2 x float> %i.nl, i64 0
  %i.nn = fcmp reassoc nsz arcp contract afn olt float %i.nm, 0.000000e+00
  br i1 %i.nn, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.no = load ptr, ptr %i.ha, align 8, !tbaa !29 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !30
  %i.nr = sitofp reassoc nsz arcp contract afn i32 %i.nq to float ; 2 uses
  %i.ns = extractelement <2 x float> %i.nl, i64 1 ; 3 uses
  %i.nt = fcmp reassoc nsz arcp contract afn oge float %i.ns, %i.nr
  %i.nu = fcmp reassoc nsz arcp contract afn olt float %i.ns, 0.000000e+00
  %or.cond7 = or i1 %i.nu, %i.nt
  br i1 %or.cond7, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.nv = getelementptr inbounds nuw i8, ptr %i.no, i64 12
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !218
  %i.nx = sitofp reassoc nsz arcp contract afn i32 %i.nw to float ; 2 uses
  %i.ny = fcmp reassoc nsz arcp contract afn ult float %i.ns, %i.nx
  br i1 %i.ny, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %gep573 = getelementptr [4 x i8], ptr %invariant.gep572, i64 %indvars.iv514
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.nz = load <2 x i32>, ptr %i.hc, align 8, !tbaa !19 ; 3 uses
  %i.oa = extractelement <2 x i32> %i.nz, i64 0
  %i.ob = load <2 x i32>, ptr %i.hb, align 8, !tbaa !19 ; 2 uses
  %i.oc = sitofp <2 x i32> %i.ob to <2 x float>
  %i.od = fmul reassoc nsz arcp contract afn <2 x float> %i.nl, %i.oc
  %i.oe = insertelement <2 x float> poison, float %i.nr, i64 0
  %i.of = insertelement <2 x float> %i.oe, float %i.nx, i64 1
  %i.og = fdiv reassoc nsz arcp contract afn <2 x float> %i.od, %i.of
  %i.oh = sub nsw <2 x i32> %i.nz, %i.ob
  %i.oi = sdiv <2 x i32> %i.oh, splat (i32 2)
  %i.oj = sitofp <2 x i32> %i.oi to <2 x float>
  %i.ok = fadd reassoc nsz arcp contract afn <2 x float> %i.og, %i.oj ; 3 uses
  %i.ol = shufflevector <2 x float> %i.ok, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.om = add nsw <2 x i32> %i.nz, splat (i32 -1)
  %i.on = sitofp <2 x i32> %i.om to <2 x float>   ; 3 uses
  %i.oo = shufflevector <2 x float> %i.on, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.op = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.oo, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.oq = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ol, %i.op ; 2 uses
  %i.or = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ol, %i.op ; 2 uses
  %i.os = extractelement <4 x i1> %i.oq, i64 1
  %i.ot = extractelement <2 x float> %i.ok, i64 0
  %spec.select429 = select reassoc nsz arcp contract afn i1 %i.os, float 0.000000e+00, float %i.ot
  %i.ou = extractelement <4 x i1> %i.or, i64 3
  %i.ov = extractelement <2 x float> %i.on, i64 0
  %i.ow = select reassoc nsz arcp contract afn i1 %i.ou, float %i.ov, float %spec.select429
  %i.ox = fptosi float %i.ow to i32
  %i.oy = extractelement <4 x i1> %i.oq, i64 0
  %i.oz = extractelement <2 x float> %i.ok, i64 1
  %spec.select430 = select reassoc nsz arcp contract afn i1 %i.oy, float 0.000000e+00, float %i.oz
  %i.pa = extractelement <4 x i1> %i.or, i64 2
  %i.pb = extractelement <2 x float> %i.on, i64 1
  %i.pc = select reassoc nsz arcp contract afn i1 %i.pa, float %i.pb, float %spec.select430
  %i.pd = fptosi float %i.pc to i32
  %i.pe = load ptr, ptr %i.hd, align 8, !tbaa !15
  %i.pf = mul nsw i32 %i.oa, %i.pd
  %i.pg = add nsw i32 %i.pf, %i.ox
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.pe, i64 %i.ph
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink586.in = phi ptr [ %i.pi, %bb.z ], [ %gep573, %bb.y ]
  %.sink586 = load float, ptr %.sink586.in, align 4, !tbaa !21
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %.sink588, i64 %indvars.iv514
  store float %.sink586, ptr %i.pj, align 4, !tbaa !21
  %indvars.iv.next515 = add nuw nsw i64 %indvars.iv514, 1 ; 2 uses
  %exitcond518.not = icmp eq i64 %indvars.iv.next515, %wide.trip.count517
  br i1 %exitcond518.not, label %._crit_edge466, label %bb.v

bb.ab:                                            ; preds = %bb.b, %bb.a
  %i.pk = shl i32 %1, 2                           ; 3 uses
  %i.pl = load i32, ptr %4, align 4, !tbaa !19    ; 17 uses
  %i.pm = add nuw i32 %3, %1                      ; 2 uses
  %i.pn = icmp slt i32 %i.pm, %i.pl
  %i.po = sext i32 %i.pm to i64                   ; 8 uses
  %i.pp = sext i32 %i.pk to i64                   ; 2 uses
  %i.pq = zext nneg i32 %3 to i64
  %i.pr = sext i32 %i.pl to i64                   ; 10 uses
  %i.ps = zext nneg i32 %1 to i64
  %wide.trip.count542 = zext nneg i32 %2 to i64   ; 4 uses
  %wide.trip.count527 = zext nneg i32 %3 to i64   ; 14 uses
  %wide.trip.count532 = zext nneg i32 %1 to i64   ; 9 uses
  %i.pt = add nuw nsw i64 %wide.trip.count527, %wide.trip.count542
  %i.pu = shl nuw nsw i64 %i.pt, 2
  %i.pv = mul i64 %i.pu, %i.pr
  %scevgep614 = getelementptr i8, ptr %i.i, i64 %i.pv
  %i.pw = mul nsw i64 %i.pr, %wide.trip.count527
  %i.px = add nsw i64 %i.pw, %i.po
  %i.py = shl i64 %i.px, 2
  %scevgep615 = getelementptr i8, ptr %i.i, i64 %i.py
  %i.pz = sub nsw i64 %i.pr, %i.po                ; 7 uses
  %i.qa = add nsw i32 %1, -1
  %i.qb = mul nuw nsw i64 %wide.trip.count542, %wide.trip.count532
  %i.qc = shl i64 %i.qb, 4
  %i.qd = getelementptr i8, ptr %0, i64 %i.qc
  %scevgep653 = getelementptr i8, ptr %i.qd, i64 -12
  %i.qe = shl nsw i64 %i.pr, 2
  %i.qf = add nsw i64 %wide.trip.count542, -1     ; 2 uses
  %i.qg = mul nsw i64 %i.qf, %i.pp
  %i.qh = shl i64 %i.qg, 2
  %i.qi = getelementptr i8, ptr %0, i64 %i.qh
  %scevgep698 = getelementptr i8, ptr %i.qi, i64 4
  %i.qj = mul nsw i64 %i.qf, %i.pr
  %i.qk = shl i64 %i.qj, 2
  %i.ql = add nsw i64 %i.qe, 4
  %i.qm = mul i64 %i.ql, %wide.trip.count527
  %i.qn = getelementptr i8, ptr %i.i, i64 %i.qk
  %scevgep699 = getelementptr i8, ptr %i.qn, i64 %i.qm
  %i.qo = mul nsw i64 %i.pr, %wide.trip.count527
  %i.qp = shl i64 %i.qo, 2
  %scevgep700 = getelementptr i8, ptr %i.i, i64 %i.qp
  %min.iters.check701 = icmp samesign ult i32 %3, 4
  %bound0703 = icmp ult ptr %scevgep700, %scevgep698
  %bound1704 = icmp ult ptr %0, %scevgep699
  %found.conflict705 = and i1 %bound0703, %bound1704
  %i.qq = or i32 %i.pk, %i.pl
  %i.qr = icmp slt i32 %i.qq, 0
  %i.qs = or i1 %found.conflict705, %i.qr
  %min.iters.check709 = icmp samesign ult i32 %3, 32
  %i.qt = and i64 %wide.trip.count527, 28
  %n.vec711 = and i64 %wide.trip.count527, 1073741792 ; 4 uses
  %cmp.n718 = icmp eq i64 %n.vec711, %wide.trip.count527
  %min.epilog.iters.check722 = icmp eq i64 %i.qt, 0
  %n.vec725 = and i64 %wide.trip.count527, 1073741820 ; 3 uses
  %cmp.n732 = icmp eq i64 %n.vec725, %wide.trip.count527
  %min.iters.check654 = icmp samesign ult i32 %1, 5
  %min.iters.check660 = icmp samesign ult i32 %1, 33
  %i.qu = and i64 %wide.trip.count532, 31         ; 2 uses
  %i.qv = icmp eq i64 %i.qu, 0
  %i.qw = select i1 %i.qv, i64 32, i64 %i.qu      ; 2 uses
  %n.vec662 = sub nsw i64 %wide.trip.count532, %i.qw ; 3 uses
  %min.epilog.iters.check678 = icmp samesign ult i64 %i.qw, 5
  %i.qx = and i64 %wide.trip.count532, 3          ; 2 uses
  %i.qy = icmp eq i64 %i.qx, 0
  %i.qz = select i1 %i.qy, i64 4, i64 %i.qx
  %n.vec681 = sub nsw i64 %wide.trip.count532, %i.qz ; 2 uses
  %min.iters.check616 = icmp ult i64 %i.pz, 4
  %stride.check = icmp slt i32 %i.pl, 0
  %min.iters.check622 = icmp ult i64 %i.pz, 32
  %i.ra = and i64 %i.pz, 28
  %n.vec624 = and i64 %i.pz, -32                  ; 4 uses
  %i.rb = add nsw i64 %n.vec624, %i.po
  %cmp.n = icmp eq i64 %i.pz, %n.vec624
  %min.epilog.iters.check632 = icmp eq i64 %i.ra, 0
  %n.vec635 = and i64 %i.pz, -4                   ; 3 uses
  %i.rc = add nsw i64 %n.vec635, %i.po
  %cmp.n642 = icmp eq i64 %i.pz, %n.vec635
  br label %iter.check719

iter.check719:                                    ; preds = %bb.ab, %._crit_edge479
  %indvars.iv539 = phi i64 [ 0, %bb.ab ], [ %i.xd, %._crit_edge479 ] ; 4 uses
  %i.rd = mul nuw nsw i64 %indvars.iv539, %i.pp
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.rd ; 11 uses
  %i.rf = add nuw nsw i64 %indvars.iv539, %i.pq
  %i.rg = mul nsw i64 %i.rf, %i.pr                ; 3 uses
  %i.rh = getelementptr [4 x i8], ptr %i.i, i64 %i.rg ; 11 uses
  %brmerge = select i1 %min.iters.check701, i1 true, i1 %i.qs
  br i1 %brmerge, label %vec.epilog.scalar.ph721.preheader, label %vector.main.loop.iter.check708

vector.main.loop.iter.check708:                   ; preds = %iter.check719
  br i1 %min.iters.check709, label %vec.epilog.ph723, label %vector.ph710

vector.ph710:                                     ; preds = %vector.main.loop.iter.check708
  %i.ri = load float, ptr %i.re, align 4, !tbaa !21, !alias.scope !219
  %i.rj = fmul reassoc nsz arcp contract afn float %i.ri, f0x3C23D70A
  %broadcast.splatinsert714 = insertelement <8 x float> poison, float %i.rj, i64 0
  %broadcast.splat715 = shufflevector <8 x float> %broadcast.splatinsert714, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body712

vector.body712:                                   ; preds = %vector.ph710, %vector.body712
  %index713 = phi i64 [ 0, %vector.ph710 ], [ %index.next716, %vector.body712 ] ; 2 uses
  %i.rk = getelementptr [4 x i8], ptr %i.rh, i64 %index713 ; 4 uses
  %i.rl = getelementptr i8, ptr %i.rk, i64 32
  %i.rm = getelementptr i8, ptr %i.rk, i64 64
  %i.rn = getelementptr i8, ptr %i.rk, i64 96
  store <8 x float> %broadcast.splat715, ptr %i.rk, align 4, !tbaa !21, !alias.scope !220, !noalias !219
  store <8 x float> %broadcast.splat715, ptr %i.rl, align 4, !tbaa !21, !alias.scope !220, !noalias !219
  store <8 x float> %broadcast.splat715, ptr %i.rm, align 4, !tbaa !21, !alias.scope !220, !noalias !219
  store <8 x float> %broadcast.splat715, ptr %i.rn, align 4, !tbaa !21, !alias.scope !220, !noalias !219
  %index.next716 = add nuw i64 %index713, 32      ; 2 uses
  %i.ro = icmp eq i64 %index.next716, %n.vec711
  br i1 %i.ro, label %middle.block717, label %vector.body712, !llvm.loop !195

middle.block717:                                  ; preds = %vector.body712
  br i1 %cmp.n718, label %iter.check675, label %vec.epilog.iter.check720

vec.epilog.iter.check720:                         ; preds = %middle.block717
  br i1 %min.epilog.iters.check722, label %vec.epilog.scalar.ph721.preheader, label %vec.epilog.ph723, !prof !25

vec.epilog.ph723:                                 ; preds = %vector.main.loop.iter.check708, %vec.epilog.iter.check720
  %vec.epilog.resume.val724 = phi i64 [ %n.vec711, %vec.epilog.iter.check720 ], [ 0, %vector.main.loop.iter.check708 ]
  %i.rp = load float, ptr %i.re, align 4, !tbaa !21, !alias.scope !219
  %i.rq = fmul reassoc nsz arcp contract afn float %i.rp, f0x3C23D70A
  %broadcast.splatinsert728 = insertelement <4 x float> poison, float %i.rq, i64 0
  %broadcast.splat729 = shufflevector <4 x float> %broadcast.splatinsert728, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body726

vec.epilog.vector.body726:                        ; preds = %vec.epilog.vector.body726, %vec.epilog.ph723
  %index727 = phi i64 [ %vec.epilog.resume.val724, %vec.epilog.ph723 ], [ %index.next730, %vec.epilog.vector.body726 ] ; 2 uses
  %i.rr = getelementptr [4 x i8], ptr %i.rh, i64 %index727
  store <4 x float> %broadcast.splat729, ptr %i.rr, align 4, !tbaa !21, !alias.scope !220, !noalias !219
  %index.next730 = add nuw i64 %index727, 4       ; 2 uses
  %i.rs = icmp eq i64 %index.next730, %n.vec725
  br i1 %i.rs, label %vec.epilog.middle.block731, label %vec.epilog.vector.body726, !llvm.loop !196

vec.epilog.middle.block731:                       ; preds = %vec.epilog.vector.body726
  br i1 %cmp.n732, label %iter.check675, label %vec.epilog.scalar.ph721.preheader

vec.epilog.scalar.ph721.preheader:                ; preds = %iter.check719, %vec.epilog.iter.check720, %vec.epilog.middle.block731
  %indvars.iv524.ph = phi i64 [ 0, %iter.check719 ], [ %n.vec725, %vec.epilog.middle.block731 ], [ %n.vec711, %vec.epilog.iter.check720 ] ; 4 uses
  %i.rt = sub nsw i64 %wide.trip.count527, %indvars.iv524.ph
  %xtraiter739 = and i64 %i.rt, 7                 ; 2 uses
  %lcmp.mod740.not = icmp eq i64 %xtraiter739, 0
  br i1 %lcmp.mod740.not, label %vec.epilog.scalar.ph721.prol.loopexit, label %vec.epilog.scalar.ph721.prol

vec.epilog.scalar.ph721.prol:                     ; preds = %vec.epilog.scalar.ph721.preheader, %vec.epilog.scalar.ph721.prol
  %indvars.iv524.prol = phi i64 [ %indvars.iv.next525.prol, %vec.epilog.scalar.ph721.prol ], [ %indvars.iv524.ph, %vec.epilog.scalar.ph721.preheader ] ; 2 uses
  %prol.iter741 = phi i64 [ %prol.iter741.next, %vec.epilog.scalar.ph721.prol ], [ 0, %vec.epilog.scalar.ph721.preheader ]
  %i.ru = load float, ptr %i.re, align 4, !tbaa !21
  %i.rv = fmul reassoc nsz arcp contract afn float %i.ru, f0x3C23D70A
  %i.rw = getelementptr [4 x i8], ptr %i.rh, i64 %indvars.iv524.prol
  store float %i.rv, ptr %i.rw, align 4, !tbaa !21
  %indvars.iv.next525.prol = add nuw nsw i64 %indvars.iv524.prol, 1 ; 2 uses
  %prol.iter741.next = add i64 %prol.iter741, 1   ; 2 uses
  %prol.iter741.cmp.not = icmp eq i64 %prol.iter741.next, %xtraiter739
  br i1 %prol.iter741.cmp.not, label %vec.epilog.scalar.ph721.prol.loopexit, label %vec.epilog.scalar.ph721.prol, !llvm.loop !197

vec.epilog.scalar.ph721.prol.loopexit:            ; preds = %vec.epilog.scalar.ph721.prol, %vec.epilog.scalar.ph721.preheader
  %indvars.iv524.unr = phi i64 [ %indvars.iv524.ph, %vec.epilog.scalar.ph721.preheader ], [ %indvars.iv.next525.prol, %vec.epilog.scalar.ph721.prol ]
  %i.rx = sub nsw i64 %indvars.iv524.ph, %wide.trip.count527
  %i.ry = icmp ugt i64 %i.rx, -8
  br i1 %i.ry, label %iter.check675, label %vec.epilog.scalar.ph721

bb.ac:                                            ; preds = %._crit_edge479
  %i.rz = load i32, ptr %5, align 4, !tbaa !19
end_hunk_2
begin_hunk_3_@gauss_reduce:bb.a
  %i.fr = fadd reassoc nsz arcp contract afn <2 x float> %i.fq, %i.fp ; 3 uses
  %i.fs = extractelement <2 x float> %i.ff, i64 0 ; 3 uses
  %i.ft = fadd reassoc nsz arcp contract afn float %.sroa.0116.1, %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.050105
  %i.fv = extractelement <2 x float> %i.ff, i64 1 ; 2 uses
  %i.fw = extractelement <2 x float> %i.en, i64 1 ; 2 uses
  %i.fx = fadd reassoc nsz arcp contract afn float %i.fv, %i.fw
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fx, 4.000000e+00
  %i.fz = extractelement <2 x float> %i.fr, i64 0
  %i.ga = extractelement <2 x float> %i.en, i64 0 ; 2 uses
  %i.gb = fmul reassoc nsz arcp contract afn float %i.ga, 6.000000e+00
  %i.gc = fmul reassoc nsz arcp contract afn float %i.fw, 4.000000e+00
  %i.gd = fadd reassoc nsz arcp contract afn float %i.ft, %i.et
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, %i.gb
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, %i.gc
  %i.gg = fadd reassoc nsz arcp contract afn float %i.ga, %i.fy
  %i.gh = fmul reassoc nsz arcp contract afn float %i.fs, 6.000000e+00
  %i.gi = fadd reassoc nsz arcp contract afn float %i.fz, %i.gh
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gi, %i.gg
  %i.gk = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.gl = insertelement <2 x float> %i.gk, float %i.gj, i64 1
  %i.gm = fmul reassoc nsz arcp contract afn <2 x float> %i.gl, splat (float 3.906250e-03)
  store <2 x float> %i.gm, ptr %i.fu, align 4, !tbaa !21
  %i.gn = add i64 %.050105, 2                     ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.g
  br i1 %i.go, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %._crit_edge
  %i.gp = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 16 ; 5 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !21
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %2
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !21
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx41.i
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !21
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx.i
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !21
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx42.i
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !21
  %i.gz = fadd reassoc nsz arcp contract afn float %i.gu, %i.gs
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, 4.000000e+00
  %i.hb = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hc = insertelement <4 x float> %i.hb, float %i.gw, i64 1
  %i.hd = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.he = shufflevector <4 x float> %i.hc, <4 x float> %i.hd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hf = fmul reassoc nsz arcp contract afn <4 x float> %i.he, <float 4.000000e+00, float 6.000000e+00, float 6.000000e+00, float 4.000000e+00>
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.ha, <4 x float> %i.hf)
  %op.rdx131 = fadd reassoc nsz arcp contract afn float %i.gy, %i.gq
  %op.rdx132 = fadd reassoc nsz arcp contract afn float %op.rdx, %op.rdx131
  %i.hg = extractelement <2 x float> %i.em, i64 0
  %op.rdx133 = fadd reassoc nsz arcp contract afn float %op.rdx132, %i.hg
  %i.hh = fmul reassoc nsz arcp contract afn float %op.rdx133, 3.906250e-03
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.g
  store float %i.hh, ptr %i.hi, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.hj = add nuw nsw i64 %.052108, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.hj, %i.e
  br i1 %exitcond.not, label %._crit_edge111, label %bb.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #8

declare void @dt_dump_pfm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc float @ll_laplacian(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %4, -1
  %i.c = and i32 %i.b, -2
  %i.d = add nsw i32 %i.c, -1
  %. = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 1, %bb.a ], [ %., %bb.b ]      ; 2 uses
  %i.f = icmp sgt i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %5, -1
  %i.h = and i32 %i.g, -2
  %i.i = add nsw i32 %i.h, -1
  %.20 = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ 1, %bb.c ], [ %.20, %bb.d ]    ; 2 uses
  %i.k = add nsw i32 %4, -1
  %i.l = sdiv i32 %i.k, 2                         ; 3 uses
  %i.m = add nsw i32 %i.l, 1                      ; 7 uses
  %i.n = sdiv i32 %i.j, 2
  %i.o = mul nsw i32 %i.n, %i.m
  %i.p = sdiv i32 %i.e, 2
  %i.q = add nsw i32 %i.o, %i.p                   ; 12 uses
  %i.r = and i32 %i.e, 1
  %i.s = shl i32 %i.j, 1
  %i.t = and i32 %i.s, 2
  %i.u = or disjoint i32 %i.t, %i.r
  switch i32 %i.u, label %default.unreachable [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = sub nsw i32 %i.q, %i.m
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w ; 3 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !21
  %i.z = sext i32 %i.q to i64
  %i.aa = getelementptr [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !21
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, %i.y
  %i.ae = load float, ptr %i.aa, align 4, !tbaa !21
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, 6.000000e+00
  %i.ag = fadd reassoc nsz arcp contract afn float %i.ad, %i.af
  %i.ah = getelementptr i8, ptr %i.aa, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !21
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ag, %i.ai
  %i.ak = add nsw i32 %i.q, %i.m
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !21
  %i.ao = fadd reassoc nsz arcp contract afn float %i.aj, %i.an
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, 6.000000e+00
  %i.aq = getelementptr i8, ptr %i.x, i64 -4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !21
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, %i.ap
  %i.at = getelementptr i8, ptr %i.x, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !21
  %i.av = add i32 %i.q, %i.l
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !21
  %i.az = getelementptr i8, ptr %i.am, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !21
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ay, %i.au
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.as
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.ba
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, 1.562500e-02
  br label %ll_expand_gaussian.exit

bb.g:                                             ; preds = %bb.e
  %i.bf = sext i32 %i.q to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bf ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !21
  %i.bi = getelementptr i8, ptr %i.bg, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !21
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, %i.bh
  %i.bl = fpext reassoc nsz arcp contract afn float %i.bk to double
  %i.bm = fmul reassoc nsz arcp contract afn double %i.bl, 2.400000e+01
  %i.bn = sub nsw i32 %i.q, %i.m
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bo ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !21
  %i.br = getelementptr i8, ptr %i.bp, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !21
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bs, %i.bq
  %i.bu = add nsw i32 %i.q, %i.m
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !21
  %i.by = fadd reassoc nsz arcp contract afn float %i.bt, %i.bx
  %i.bz = getelementptr i8, ptr %i.bw, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !21
  %i.cb = fadd reassoc nsz arcp contract afn float %i.by, %i.ca
  %i.cc = fpext reassoc nsz arcp contract afn float %i.cb to double
  %i.cd = fmul reassoc nsz arcp contract afn double %i.cc, 4.000000e+00
  %i.ce = fadd reassoc nsz arcp contract afn double %i.cd, %i.bm
  %i.cf = fmul reassoc nsz arcp contract afn double %i.ce, 1.562500e-02
  %i.cg = fptrunc reassoc nsz arcp contract afn double %i.cf to float
  br label %ll_expand_gaussian.exit

bb.h:                                             ; preds = %bb.e
  %i.ch = sext i32 %i.q to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ch ; 2 uses
  %i.cj = add nsw i32 %i.q, %i.m
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.ci, i64 -4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !21
  %i.co = add i32 %i.q, %i.l
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !21
  %i.cs = load <2 x float>, ptr %i.ci, align 4, !tbaa !21
  %i.ct = load <2 x float>, ptr %i.cl, align 4, !tbaa !21
  %i.cu = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cr, i64 1
  %i.cv = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cn, i64 1
  %i.cw = fadd reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cu
  %i.cx = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cs
  %i.cy = fadd reassoc nsz arcp contract afn <2 x float> %i.cw, %i.cx
  %i.cz = fpext <2 x float> %i.cy to <2 x double> ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = fmul reassoc nsz arcp contract afn double %i.da, 2.400000e+01
  %i.dc = extractelement <2 x double> %i.cz, i64 1
  %i.dd = fmul reassoc nsz arcp contract afn double %i.dc, 4.000000e+00
  %i.de = fadd reassoc nsz arcp contract afn double %i.dd, %i.db
  %i.df = fmul reassoc nsz arcp contract afn double %i.de, 1.562500e-02
  %i.dg = fptrunc reassoc nsz arcp contract afn double %i.df to float
  br label %ll_expand_gaussian.exit

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.dh = sext i32 %i.q to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dh ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !21
  %i.dk = getelementptr i8, ptr %i.di, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !21
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, %i.dj
  %i.dn = add nsw i32 %i.q, %i.m
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.do ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !21
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dm, %i.dq
  %i.ds = getelementptr i8, ptr %i.dp, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !21
  %i.du = fadd reassoc nsz arcp contract afn float %i.dr, %i.dt
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, 2.500000e-01
  br label %ll_expand_gaussian.exit

ll_expand_gaussian.exit:                          ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi nsz float [ %i.be, %bb.f ], [ %i.cg, %bb.g ], [ %i.dg, %bb.h ], [ %i.dv, %bb.i ]
  %i.dw = mul nsw i32 %4, %3
  %i.dx = add nsw i32 %i.dw, %2
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !21
  %i.eb = fsub reassoc nsz arcp contract afn float %i.ea, %.0.i
  ret float %i.eb
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i64 @local_laplacian_memory_use(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = xor i32 %i.b, 31
  %spec.select = select i1 %i.c, i32 30, i32 %i.d ; 3 uses
  %i.e = shl nuw i32 1, %spec.select              ; 2 uses
  %i.f = add nsw i32 %i.e, %0                     ; 2 uses
  %i.g = add nsw i32 %i.e, %1                     ; 2 uses
  %.not36 = icmp eq i32 %spec.select, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %dl.exit31, %bb.a
  %.022.lcssa = phi i64 [ 0, %bb.a ], [ %i.u, %dl.exit31 ]
  ret i64 %.022.lcssa

bb.b:                                             ; preds = %.lr.ph, %dl.exit31
  %.035 = phi i32 [ 0, %.lr.ph ], [ %i.v, %dl.exit31 ] ; 8 uses
  %.02234 = phi i64 [ 0, %.lr.ph ], [ %i.u, %dl.exit31 ]
  %.not = icmp eq i32 %.035, 0
  br i1 %.not, label %dl.exit31, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i32 %.035, 7                    ; 3 uses
  %i.j = icmp samesign ult i32 %.035, 8
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %.035, 2147483640
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.056.i = phi i32 [ %i.h, %.lr.ph.i.preheader.new ], [ %i.k, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.k = sdiv i32 %.056.i, 256                    ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.i26.preheader.unr-lcssa, label %.lr.ph.i

.lr.ph.i26.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i26.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i26.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.056.i.epil.init = phi i32 [ %i.h, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i26.preheader.unr-lcssa ]
  %lcmp.mod46 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.056.i.epil = phi i32 [ %i.l, %.lr.ph.i.epil ], [ %.056.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.l = sdiv i32 %.056.i.epil, 2                 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i26.preheader, label %.lr.ph.i.epil, !llvm.loop !227

.lr.ph.i26.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph.i26.preheader.unr-lcssa
  %.lcssa = phi i32 [ %i.k, %.lr.ph.i26.preheader.unr-lcssa ], [ %i.l, %.lr.ph.i.epil ]
  %xtraiter47 = and i32 %.035, 7                  ; 3 uses
  %i.m = icmp samesign ult i32 %.035, 8
  br i1 %i.m, label %.lr.ph.i26.epil.preheader, label %.lr.ph.i26.preheader.new

.lr.ph.i26.preheader.new:                         ; preds = %.lr.ph.i26.preheader
  %unroll_iter52 = and i32 %.035, 2147483640
  br label %.lr.ph.i26

._crit_edge.loopexit.i30.unr-lcssa:               ; preds = %.lr.ph.i26
  %lcmp.mod49.not = icmp eq i32 %xtraiter47, 0
  br i1 %lcmp.mod49.not, label %._crit_edge.loopexit.i30, label %.lr.ph.i26.epil.preheader

.lr.ph.i26.epil.preheader:                        ; preds = %._crit_edge.loopexit.i30.unr-lcssa, %.lr.ph.i26.preheader
  %.056.i28.epil.init = phi i32 [ %i.i, %.lr.ph.i26.preheader ], [ %i.q, %._crit_edge.loopexit.i30.unr-lcssa ]
  %lcmp.mod51 = icmp ne i32 %xtraiter47, 0
  tail call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.i26.epil

.lr.ph.i26.epil:                                  ; preds = %.lr.ph.i26.epil, %.lr.ph.i26.epil.preheader
  %.056.i28.epil = phi i32 [ %i.n, %.lr.ph.i26.epil ], [ %.056.i28.epil.init, %.lr.ph.i26.epil.preheader ]
  %epil.iter48 = phi i32 [ %epil.iter48.next, %.lr.ph.i26.epil ], [ 0, %.lr.ph.i26.epil.preheader ]
  %i.n = sdiv i32 %.056.i28.epil, 2               ; 2 uses
  %epil.iter48.next = add i32 %epil.iter48, 1     ; 2 uses
  %epil.iter48.cmp.not = icmp eq i32 %epil.iter48.next, %xtraiter47
  br i1 %epil.iter48.cmp.not, label %._crit_edge.loopexit.i30, label %.lr.ph.i26.epil, !llvm.loop !228

._crit_edge.loopexit.i30:                         ; preds = %.lr.ph.i26.epil, %._crit_edge.loopexit.i30.unr-lcssa
  %.lcssa43 = phi i32 [ %i.q, %._crit_edge.loopexit.i30.unr-lcssa ], [ %i.n, %.lr.ph.i26.epil ]
  %i.o = add nsw i32 %.lcssa, 1
  %i.p = add nsw i32 %.lcssa43, 1
  br label %dl.exit31

.lr.ph.i26:                                       ; preds = %.lr.ph.i26, %.lr.ph.i26.preheader.new
  %.056.i28 = phi i32 [ %i.i, %.lr.ph.i26.preheader.new ], [ %i.q, %.lr.ph.i26 ]
  %niter53 = phi i32 [ 0, %.lr.ph.i26.preheader.new ], [ %niter53.next.7, %.lr.ph.i26 ]
  %i.q = sdiv i32 %.056.i28, 256                  ; 3 uses
  %niter53.next.7 = add i32 %niter53, 8           ; 2 uses
  %niter53.ncmp.7 = icmp eq i32 %niter53.next.7, %unroll_iter52
  br i1 %niter53.ncmp.7, label %._crit_edge.loopexit.i30.unr-lcssa, label %.lr.ph.i26

dl.exit31:                                        ; preds = %bb.b, %._crit_edge.loopexit.i30
  %.in.in = phi i32 [ %i.o, %._crit_edge.loopexit.i30 ], [ %i.f, %bb.b ]
  %.05.lcssa.i24 = phi i32 [ %i.p, %._crit_edge.loopexit.i30 ], [ %i.g, %bb.b ]
  %.in = sext i32 %.in.in to i64
  %i.r = shl nsw i64 %.in, 5
  %i.s = sext i32 %.05.lcssa.i24 to i64
  %i.t = mul i64 %i.r, %i.s
  %i.u = add i64 %i.t, %.02234                    ; 2 uses
  %i.v = add nuw nsw i32 %.035, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %spec.select
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @local_laplacian_singlebuffer_size(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = sub nsw i32 30, %i.b
  %i.e = shl nuw nsw i32 2, %i.d
  %i.f = select i1 %i.c, i32 1073741824, i32 %i.e ; 2 uses
  %i.g = add nsw i32 %i.f, %0
  %i.h = add nsw i32 %i.f, %1
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = sext i32 %i.h to i64
  %i.l = mul i64 %i.j, %i.k
  ret i64 %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nounwind
declare void @llvm.x86.sse.sfence() #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8
end_hunk_3
