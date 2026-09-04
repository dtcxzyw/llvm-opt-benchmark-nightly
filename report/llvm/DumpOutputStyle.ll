Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DumpOutputStyle?download=true
inline.NumInlined: 10409
inline.NumDeleted: 4416
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_T1_":bb.a
  %i.hg = ptrtoint ptr %i.gl to i64               ; 2 uses
  %i.hh = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.hi = sub i64 %i.hg, %i.hh                    ; 2 uses
  %i.hj = icmp sgt i64 %i.hi, 0
  br i1 %i.hj, label %.lr.ph.preheader.i.i.i.i.i10.i.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i"

.lr.ph.preheader.i.i.i.i.i10.i.i:                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i.i
  %i.hk = udiv exact i64 %i.hi, 12
  br label %.lr.ph.i.i.i.i.i11.i.i

.lr.ph.i.i.i.i.i11.i.i:                           ; preds = %.lr.ph.i.i.i.i.i11.i.i, %.lr.ph.preheader.i.i.i.i.i10.i.i
  %.012.i.i.i.i.i12.i.i = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i11.i.i ], [ %i.hk, %.lr.ph.preheader.i.i.i.i.i10.i.i ] ; 2 uses
  %.0811.i.i.i.i.i13.i.i = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i11.i.i ], [ %.08.lcssa.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i10.i.i ] ; 3 uses
  %.0910.i.i.i.i.i14.i.i = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i11.i.i ], [ %.sroa.016.1.i.i, %.lr.ph.preheader.i.i.i.i.i10.i.i ] ; 3 uses
  %i.hl = load i32, ptr %.0910.i.i.i.i.i14.i.i, align 4, !tbaa !139
  store i32 %i.hl, ptr %.0811.i.i.i.i.i13.i.i, align 4, !tbaa !245
  %i.hm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i.i, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i.i, i64 4
  %i.ho = load i64, ptr %i.hm, align 4
  store i64 %i.ho, ptr %i.hn, align 4
  %i.hp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i.i, i64 12
  %i.hq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i.i, i64 12 ; 2 uses
  %i.hr = add nsw i64 %.012.i.i.i.i.i12.i.i, -1
  %i.hs = icmp samesign ugt i64 %.012.i.i.i.i.i12.i.i, 1
  br i1 %i.hs, label %.lr.ph.i.i.i.i.i11.i.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i", !llvm.loop !45

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i": ; preds = %.lr.ph.i.i.i.i.i11.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i.i
  %.08.lcssa.i.i.i.i.i9.i.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i.i ], [ %i.hq, %.lr.ph.i.i.i.i.i11.i.i ] ; 2 uses
  %i.ht = sub i64 %i.a, %i.hg
  %i.hu = sdiv exact i64 %i.ht, 12                ; 2 uses
  %.not.i = icmp slt i64 %i.hu, %i.gj
  br i1 %.not.i, label %._crit_edge.i24, label %bb.x, !llvm.loop !2527

._crit_edge.i24:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i", %bb.w
  %.sroa.054.0.lcssa.i = phi ptr [ %0, %bb.w ], [ %i.gl, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.w ], [ %.08.lcssa.i.i.i.i.i9.i.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ] ; 2 uses
  %.lcssa69.i = phi i64 [ %i.d, %bb.w ], [ %i.hu, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.060, i64 %.lcssa69.i) ; 2 uses
  %.idx64.i = mul nsw i64 %.sroa.speculated.i, 12
  %i.hv = getelementptr inbounds i8, ptr %.sroa.054.0.lcssa.i, i64 %.idx64.i ; 5 uses
  %i.hw = icmp ne i64 %.sroa.speculated.i, 0
  %i.hx = icmp ne ptr %i.hv, %1
  %or.cond24.i16.i = select i1 %i.hw, i1 %i.hx, i1 false
  br i1 %or.cond24.i16.i, label %.lr.ph.i34.i, label %.critedge.i17.i

.lr.ph.i34.i:                                     ; preds = %._crit_edge.i24, %.lr.ph.i34.i
  %.027.i35.i = phi ptr [ %i.ic, %.lr.ph.i34.i ], [ %.0.lcssa.i, %._crit_edge.i24 ] ; 3 uses
  %.sroa.020.026.i36.i = phi ptr [ %.sroa.020.1.i42.i, %.lr.ph.i34.i ], [ %.sroa.054.0.lcssa.i, %._crit_edge.i24 ] ; 3 uses
  %.sroa.016.025.i37.i = phi ptr [ %.sroa.016.1.i41.i, %.lr.ph.i34.i ], [ %i.hv, %._crit_edge.i24 ] ; 3 uses
  %i.hy = getelementptr i8, ptr %.sroa.016.025.i37.i, i64 8
  %.val.i.i38.i = load i32, ptr %i.hy, align 4, !tbaa !276
  %i.hz = getelementptr i8, ptr %.sroa.020.026.i36.i, i64 8
  %.val1.i.i39.i = load i32, ptr %i.hz, align 4, !tbaa !276
  %i.ia = icmp ugt i32 %.val.i.i38.i, %.val1.i.i39.i ; 3 uses
  %.sroa.016.025.pn.i40.i = select i1 %i.ia, ptr %.sroa.016.025.i37.i, ptr %.sroa.020.026.i36.i ; 2 uses
  %.sroa.016.1.i41.idx.i = select i1 %i.ia, i64 12, i64 0
  %.sroa.016.1.i41.i = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37.i, i64 %.sroa.016.1.i41.idx.i ; 3 uses
  %.sroa.020.1.i42.idx.i = select i1 %i.ia, i64 0, i64 12
  %.sroa.020.1.i42.i = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36.i, i64 %.sroa.020.1.i42.idx.i ; 3 uses
  %.sink83.i = load i32, ptr %.sroa.016.025.pn.i40.i, align 4, !tbaa !139
  store i32 %.sink83.i, ptr %.027.i35.i, align 4, !tbaa !245
  %.sink.in.i43.i = getelementptr inbounds nuw i8, ptr %.sroa.016.025.pn.i40.i, i64 4
  %.sink.i44.i = load i64, ptr %.sink.in.i43.i, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 4
  store i64 %.sink.i44.i, ptr %i.ib, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 12 ; 2 uses
  %i.id = icmp ne ptr %.sroa.020.1.i42.i, %i.hv
  %i.ie = icmp ne ptr %.sroa.016.1.i41.i, %1
  %or.cond.i45.i = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %or.cond.i45.i, label %.lr.ph.i34.i, label %.critedge.i17.i, !llvm.loop !2526

.critedge.i17.i:                                  ; preds = %.lr.ph.i34.i, %._crit_edge.i24
  %.sroa.016.0.lcssa.i18.i = phi ptr [ %i.hv, %._crit_edge.i24 ], [ %.sroa.016.1.i41.i, %.lr.ph.i34.i ] ; 2 uses
  %.sroa.020.0.lcssa.i19.i = phi ptr [ %.sroa.054.0.lcssa.i, %._crit_edge.i24 ], [ %.sroa.020.1.i42.i, %.lr.ph.i34.i ] ; 2 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i24 ], [ %i.ic, %.lr.ph.i34.i ] ; 2 uses
  %i.if = ptrtoint ptr %i.hv to i64
  %i.ig = ptrtoint ptr %.sroa.020.0.lcssa.i19.i to i64
  %i.ih = sub i64 %i.if, %i.ig                    ; 2 uses
  %i.ii = icmp sgt i64 %i.ih, 0
  br i1 %i.ii, label %.lr.ph.preheader.i.i.i.i.i.i29.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i21.i

.lr.ph.preheader.i.i.i.i.i.i29.i:                 ; preds = %.critedge.i17.i
  %i.ij = udiv exact i64 %i.ih, 12
  br label %.lr.ph.i.i.i.i.i.i30.i

.lr.ph.i.i.i.i.i.i30.i:                           ; preds = %.lr.ph.i.i.i.i.i.i30.i, %.lr.ph.preheader.i.i.i.i.i.i29.i
  %.012.i.i.i.i.i.i31.i = phi i64 [ %i.iq, %.lr.ph.i.i.i.i.i.i30.i ], [ %i.ij, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 2 uses
  %.0811.i.i.i.i.i.i32.i = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i.i30.i ], [ %.0.lcssa.i20.i, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 3 uses
  %.0910.i.i.i.i.i.i33.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i.i30.i ], [ %.sroa.020.0.lcssa.i19.i, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 3 uses
  %i.ik = load i32, ptr %.0910.i.i.i.i.i.i33.i, align 4, !tbaa !139
  store i32 %i.ik, ptr %.0811.i.i.i.i.i.i32.i, align 4, !tbaa !245
  %i.il = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33.i, i64 4
  %i.im = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32.i, i64 4
  %i.in = load i64, ptr %i.il, align 4
  store i64 %i.in, ptr %i.im, align 4
  %i.io = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33.i, i64 12
  %i.ip = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32.i, i64 12 ; 2 uses
  %i.iq = add nsw i64 %.012.i.i.i.i.i.i31.i, -1
  %i.ir = icmp samesign ugt i64 %.012.i.i.i.i.i.i31.i, 1
  br i1 %i.ir, label %.lr.ph.i.i.i.i.i.i30.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i21.i, !llvm.loop !45

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i21.i: ; preds = %.lr.ph.i.i.i.i.i.i30.i, %.critedge.i17.i
  %.08.lcssa.i.i.i.i.i.i22.i = phi ptr [ %.0.lcssa.i20.i, %.critedge.i17.i ], [ %i.ip, %.lr.ph.i.i.i.i.i.i30.i ]
  %i.is = ptrtoint ptr %.sroa.016.0.lcssa.i18.i to i64
  %i.it = sub i64 %i.a, %i.is                     ; 2 uses
  %i.iu = icmp sgt i64 %i.it, 0
  br i1 %i.iu, label %.lr.ph.preheader.i.i.i.i.i10.i24.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i10.i24.i:               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i21.i
  %i.iv = udiv exact i64 %i.it, 12
  br label %.lr.ph.i.i.i.i.i11.i25.i

.lr.ph.i.i.i.i.i11.i25.i:                         ; preds = %.lr.ph.i.i.i.i.i11.i25.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i12.i26.i = phi i64 [ %i.jc, %.lr.ph.i.i.i.i.i11.i25.i ], [ %i.iv, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 2 uses
  %.0811.i.i.i.i.i13.i27.i = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i11.i25.i ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 3 uses
  %.0910.i.i.i.i.i14.i28.i = phi ptr [ %i.ja, %.lr.ph.i.i.i.i.i11.i25.i ], [ %.sroa.016.0.lcssa.i18.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 3 uses
  %i.iw = load i32, ptr %.0910.i.i.i.i.i14.i28.i, align 4, !tbaa !139
  store i32 %i.iw, ptr %.0811.i.i.i.i.i13.i27.i, align 4, !tbaa !245
  %i.ix = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28.i, i64 4
  %i.iy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27.i, i64 4
  %i.iz = load i64, ptr %i.ix, align 4
  store i64 %i.iz, ptr %i.iy, align 4
  %i.ja = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28.i, i64 12
  %i.jb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27.i, i64 12
  %i.jc = add nsw i64 %.012.i.i.i.i.i12.i26.i, -1
  %i.jd = icmp samesign ugt i64 %.012.i.i.i.i.i12.i26.i, 1
  br i1 %i.jd, label %.lr.ph.i.i.i.i.i11.i25.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_T1_T2_.exit", !llvm.loop !45

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i11.i25.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i21.i
  %i.je = shl nsw i64 %.060, 2                    ; 4 uses
  %.not68.i = icmp slt i64 %i.gi, %i.je
  br i1 %.not68.i, label %._crit_edge.i35, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_T1_T2_.exit"
  %.idx.i28 = mul nsw i64 %.060, 24
  %.idx59.i = mul nsw i64 %.060, 48
  br label %bb.y

bb.y:                                             ; preds = %"_ZSt12__move_mergeIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i", %.lr.ph.i27
  %.sroa.022.070.i = phi ptr [ %0, %.lr.ph.i27 ], [ %i.ku, %"_ZSt12__move_mergeIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ]
  %.069.i = phi ptr [ %2, %.lr.ph.i27 ], [ %i.jg, %"_ZSt12__move_mergeIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ] ; 3 uses
  %i.jf = getelementptr inbounds i8, ptr %.069.i, i64 %.idx.i28 ; 3 uses
  %i.jg = getelementptr inbounds i8, ptr %.069.i, i64 %.idx59.i ; 4 uses
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %bb.y, %.lr.ph.i.i29
  %.030.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i29 ], [ %.069.i, %bb.y ] ; 3 uses
  %.01629.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i29 ], [ %i.jf, %bb.y ] ; 3 uses
  %.sroa.0.028.i.i = phi ptr [ %i.jl, %.lr.ph.i.i29 ], [ %.sroa.022.070.i, %bb.y ] ; 3 uses
  %i.jh = getelementptr i8, ptr %.01629.i.i, i64 8
  %.016.val.i.i = load i32, ptr %i.jh, align 4, !tbaa !276
  %i.ji = getelementptr i8, ptr %.030.i.i, i64 8
  %.0.val.i.i = load i32, ptr %i.ji, align 4, !tbaa !276
  %i.jj = icmp ugt i32 %.016.val.i.i, %.0.val.i.i ; 3 uses
  %.01629.pn.i.i = select i1 %i.jj, ptr %.01629.i.i, ptr %.030.i.i ; 2 uses
  %.117.i.idx.i = select i1 %i.jj, i64 12, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01629.i.i, i64 %.117.i.idx.i ; 4 uses
  %.1.i.idx.i = select i1 %i.jj, i64 0, i64 12
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 %.1.i.idx.i ; 4 uses
  %.sink.i30 = load i32, ptr %.01629.pn.i.i, align 4, !tbaa !139
  store i32 %.sink.i30, ptr %.sroa.0.028.i.i, align 4, !tbaa !245
  %.sink.in.i.i31 = getelementptr inbounds nuw i8, ptr %.01629.pn.i.i, i64 4
  %.sink.i.i32 = load i64, ptr %.sink.in.i.i31, align 4
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 4
  store i64 %.sink.i.i32, ptr %i.jk, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 12 ; 5 uses
  %i.jm = icmp ne ptr %.1.i.i, %i.jf
  %i.jn = icmp ne ptr %.117.i.i, %i.jg
  %i.jo = select i1 %i.jm, i1 %i.jn, i1 false
  br i1 %i.jo, label %.lr.ph.i.i29, label %._crit_edge.i.i, !llvm.loop !2528

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i29
  %i.jp = ptrtoint ptr %i.jf to i64
  %i.jq = ptrtoint ptr %.1.i.i to i64
  %i.jr = sub i64 %i.jp, %i.jq                    ; 2 uses
  %i.js = icmp sgt i64 %i.jr, 0
  br i1 %i.js, label %.lr.ph.preheader.i.i.i.i.i.i.i38, label %_ZSt4moveIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i38:                 ; preds = %._crit_edge.i.i
  %i.jt = udiv exact i64 %i.jr, 12
  br label %.lr.ph.i.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i.i39:                           ; preds = %.lr.ph.i.i.i.i.i.i.i39, %.lr.ph.preheader.i.i.i.i.i.i.i38
  %.012.i.i.i.i.i.i.i40 = phi i64 [ %i.ka, %.lr.ph.i.i.i.i.i.i.i39 ], [ %i.jt, %.lr.ph.preheader.i.i.i.i.i.i.i38 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i41 = phi ptr [ %i.jz, %.lr.ph.i.i.i.i.i.i.i39 ], [ %i.jl, %.lr.ph.preheader.i.i.i.i.i.i.i38 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i42 = phi ptr [ %i.jy, %.lr.ph.i.i.i.i.i.i.i39 ], [ %.1.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i38 ] ; 3 uses
  %i.ju = load i32, ptr %.0910.i.i.i.i.i.i.i42, align 4, !tbaa !139
  store i32 %i.ju, ptr %.0811.i.i.i.i.i.i.i41, align 4, !tbaa !245
  %i.jv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i42, i64 4
  %i.jw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i41, i64 4
  %i.jx = load i64, ptr %i.jv, align 4
  store i64 %i.jx, ptr %i.jw, align 4
  %i.jy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i42, i64 12
  %i.jz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i41, i64 12 ; 2 uses
  %i.ka = add nsw i64 %.012.i.i.i.i.i.i.i40, -1
  %i.kb = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i40, 1
  br i1 %i.kb, label %.lr.ph.i.i.i.i.i.i.i39, label %_ZSt4moveIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i, !llvm.loop !45

_ZSt4moveIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i39, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i33 = phi ptr [ %i.jl, %._crit_edge.i.i ], [ %i.jz, %.lr.ph.i.i.i.i.i.i.i39 ]
  %i.kc = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i33 to i64 ; 2 uses
  %i.kd = ptrtoint ptr %i.jl to i64
  %i.ke = sub i64 %i.kc, %i.kd
  %i.kf = getelementptr inbounds i8, ptr %i.jl, i64 %i.ke ; 3 uses
  %i.kg = ptrtoint ptr %i.jg to i64               ; 2 uses
  %i.kh = ptrtoint ptr %.117.i.i to i64
  %i.ki = sub i64 %i.kg, %i.kh                    ; 2 uses
  %i.kj = icmp sgt i64 %i.ki, 0
  br i1 %i.kj, label %.lr.ph.preheader.i.i.i.i.i19.i.i, label %"_ZSt12__move_mergeIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i"

.lr.ph.preheader.i.i.i.i.i19.i.i:                 ; preds = %_ZSt4moveIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i
  %i.kk = udiv exact i64 %i.ki, 12
  br label %.lr.ph.i.i.i.i.i20.i.i

.lr.ph.i.i.i.i.i20.i.i:                           ; preds = %.lr.ph.i.i.i.i.i20.i.i, %.lr.ph.preheader.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i21.i.i = phi i64 [ %i.kr, %.lr.ph.i.i.i.i.i20.i.i ], [ %i.kk, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i.i = phi ptr [ %i.kq, %.lr.ph.i.i.i.i.i20.i.i ], [ %i.kf, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i.i = phi ptr [ %i.kp, %.lr.ph.i.i.i.i.i20.i.i ], [ %.117.i.i, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 3 uses
  %i.kl = load i32, ptr %.0910.i.i.i.i.i23.i.i, align 4, !tbaa !139
  store i32 %i.kl, ptr %.0811.i.i.i.i.i22.i.i, align 4, !tbaa !245
  %i.km = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 4
  %i.kn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 4
  %i.ko = load i64, ptr %i.km, align 4
  store i64 %i.ko, ptr %i.kn, align 4
  %i.kp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 12
  %i.kq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 12 ; 2 uses
  %i.kr = add nsw i64 %.012.i.i.i.i.i21.i.i, -1
  %i.ks = icmp samesign ugt i64 %.012.i.i.i.i.i21.i.i, 1
  br i1 %i.ks, label %.lr.ph.i.i.i.i.i20.i.i, label %"_ZSt12__move_mergeIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i", !llvm.loop !45

"_ZSt12__move_mergeIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i": ; preds = %.lr.ph.i.i.i.i.i20.i.i, %_ZSt4moveIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi ptr [ %i.kf, %_ZSt4moveIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i ], [ %i.kq, %.lr.ph.i.i.i.i.i20.i.i ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i to i64
  %i.kt = sub i64 %3, %i.kc
  %i.ku = getelementptr inbounds i8, ptr %i.kf, i64 %i.kt ; 2 uses
  %i.kv = sub i64 %i.gh, %i.kg
  %i.kw = sdiv exact i64 %i.kv, 12                ; 2 uses
  %.not.i34 = icmp slt i64 %i.kw, %i.je
  br i1 %.not.i34, label %._crit_edge.i35, label %bb.y, !llvm.loop !2529

._crit_edge.i35:                                  ; preds = %"_ZSt12__move_mergeIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_T1_T2_.exit"
  %.0.lcssa.i36 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_T1_T2_.exit" ], [ %i.jg, %"_ZSt12__move_mergeIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_T1_T2_.exit" ], [ %i.ku, %"_ZSt12__move_mergeIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ] ; 2 uses
  %.lcssa66.i = phi i64 [ %i.gi, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_T1_T2_.exit" ], [ %i.kw, %"_ZSt12__move_mergeIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ]
  %.sroa.speculated.i37 = tail call i64 @llvm.smin.i64(i64 %i.gj, i64 %.lcssa66.i) ; 2 uses
  %.idx61.i = mul nsw i64 %.sroa.speculated.i37, 12
  %i.kx = getelementptr inbounds i8, ptr %.0.lcssa.i36, i64 %.idx61.i ; 5 uses
  %i.ky = icmp ne i64 %.sroa.speculated.i37, 0
  %i.kz = icmp ne ptr %i.kx, %i.e
  %i.la = and i1 %i.ky, %i.kz
  br i1 %i.la, label %.lr.ph.i43.i, label %._crit_edge.i25.i

.lr.ph.i43.i:                                     ; preds = %._crit_edge.i35, %.lr.ph.i43.i
  %.030.i44.i = phi ptr [ %.1.i51.i, %.lr.ph.i43.i ], [ %.0.lcssa.i36, %._crit_edge.i35 ] ; 3 uses
  %.01629.i45.i = phi ptr [ %.117.i50.i, %.lr.ph.i43.i ], [ %i.kx, %._crit_edge.i35 ] ; 3 uses
  %.sroa.0.028.i46.i = phi ptr [ %i.lf, %.lr.ph.i43.i ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i35 ] ; 3 uses
  %i.lb = getelementptr i8, ptr %.01629.i45.i, i64 8
  %.016.val.i47.i = load i32, ptr %i.lb, align 4, !tbaa !276
  %i.lc = getelementptr i8, ptr %.030.i44.i, i64 8
  %.0.val.i48.i = load i32, ptr %i.lc, align 4, !tbaa !276
  %i.ld = icmp ugt i32 %.016.val.i47.i, %.0.val.i48.i ; 3 uses
  %.01629.pn.i49.i = select i1 %i.ld, ptr %.01629.i45.i, ptr %.030.i44.i ; 2 uses
  %.117.i50.idx.i = select i1 %i.ld, i64 12, i64 0
  %.117.i50.i = getelementptr inbounds nuw i8, ptr %.01629.i45.i, i64 %.117.i50.idx.i ; 3 uses
  %.1.i51.idx.i = select i1 %i.ld, i64 0, i64 12
  %.1.i51.i = getelementptr inbounds nuw i8, ptr %.030.i44.i, i64 %.1.i51.idx.i ; 3 uses
  %.sink81.i = load i32, ptr %.01629.pn.i49.i, align 4, !tbaa !139
  store i32 %.sink81.i, ptr %.sroa.0.028.i46.i, align 4, !tbaa !245
  %.sink.in.i52.i = getelementptr inbounds nuw i8, ptr %.01629.pn.i49.i, i64 4
  %.sink.i53.i = load i64, ptr %.sink.in.i52.i, align 4
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 4
  store i64 %.sink.i53.i, ptr %i.le, align 4
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 12 ; 2 uses
  %i.lg = icmp ne ptr %.1.i51.i, %i.kx
  %i.lh = icmp ne ptr %.117.i50.i, %i.e
  %i.li = select i1 %i.lg, i1 %i.lh, i1 false
  br i1 %i.li, label %.lr.ph.i43.i, label %._crit_edge.i25.i, !llvm.loop !2528

._crit_edge.i25.i:                                ; preds = %.lr.ph.i43.i, %._crit_edge.i35
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i35 ], [ %i.lf, %.lr.ph.i43.i ] ; 4 uses
  %.016.lcssa.i27.i = phi ptr [ %i.kx, %._crit_edge.i35 ], [ %.117.i50.i, %.lr.ph.i43.i ] ; 2 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i36, %._crit_edge.i35 ], [ %.1.i51.i, %.lr.ph.i43.i ] ; 2 uses
  %i.lj = ptrtoint ptr %i.kx to i64
  %i.lk = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.ll = sub i64 %i.lj, %i.lk                    ; 2 uses
  %i.lm = icmp sgt i64 %i.ll, 0
  br i1 %i.lm, label %.lr.ph.preheader.i.i.i.i.i.i38.i, label %_ZSt4moveIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i

.lr.ph.preheader.i.i.i.i.i.i38.i:                 ; preds = %._crit_edge.i25.i
  %i.ln = udiv exact i64 %i.ll, 12
  br label %.lr.ph.i.i.i.i.i.i39.i

.lr.ph.i.i.i.i.i.i39.i:                           ; preds = %.lr.ph.i.i.i.i.i.i39.i, %.lr.ph.preheader.i.i.i.i.i.i38.i
  %.012.i.i.i.i.i.i40.i = phi i64 [ %i.lu, %.lr.ph.i.i.i.i.i.i39.i ], [ %i.ln, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 2 uses
  %.0811.i.i.i.i.i.i41.i = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i.i39.i ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 3 uses
  %.0910.i.i.i.i.i.i42.i = phi ptr [ %i.ls, %.lr.ph.i.i.i.i.i.i39.i ], [ %.0.lcssa.i28.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 3 uses
  %i.lo = load i32, ptr %.0910.i.i.i.i.i.i42.i, align 4, !tbaa !139
  store i32 %i.lo, ptr %.0811.i.i.i.i.i.i41.i, align 4, !tbaa !245
  %i.lp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42.i, i64 4
  %i.lq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41.i, i64 4
  %i.lr = load i64, ptr %i.lp, align 4
  store i64 %i.lr, ptr %i.lq, align 4
  %i.ls = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42.i, i64 12
  %i.lt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41.i, i64 12 ; 2 uses
  %i.lu = add nsw i64 %.012.i.i.i.i.i.i40.i, -1
  %i.lv = icmp samesign ugt i64 %.012.i.i.i.i.i.i40.i, 1
  br i1 %i.lv, label %.lr.ph.i.i.i.i.i.i39.i, label %_ZSt4moveIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i, !llvm.loop !45

_ZSt4moveIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i39.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %i.lt, %.lr.ph.i.i.i.i.i.i39.i ]
  %i.lw = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.lx = sub i64 %i.gh, %i.lw                    ; 2 uses
  %i.ly = icmp sgt i64 %i.lx, 0
  br i1 %i.ly, label %.lr.ph.preheader.i.i.i.i.i19.i32.i, label %"_ZSt17__merge_sort_loopIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i19.i32.i:               ; preds = %_ZSt4moveIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i
  %i.lz = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.ma = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.mb
  %i.md = udiv exact i64 %i.lx, 12
  br label %.lr.ph.i.i.i.i.i20.i33.i

.lr.ph.i.i.i.i.i20.i33.i:                         ; preds = %.lr.ph.i.i.i.i.i20.i33.i, %.lr.ph.preheader.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i21.i34.i = phi i64 [ %i.mk, %.lr.ph.i.i.i.i.i20.i33.i ], [ %i.md, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i35.i = phi ptr [ %i.mj, %.lr.ph.i.i.i.i.i20.i33.i ], [ %i.mc, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i36.i = phi ptr [ %i.mi, %.lr.ph.i.i.i.i.i20.i33.i ], [ %.016.lcssa.i27.i, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 3 uses
  %i.me = load i32, ptr %.0910.i.i.i.i.i23.i36.i, align 4, !tbaa !139
  store i32 %i.me, ptr %.0811.i.i.i.i.i22.i35.i, align 4, !tbaa !245
  %i.mf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36.i, i64 4
  %i.mg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35.i, i64 4
  %i.mh = load i64, ptr %i.mf, align 4
  store i64 %i.mh, ptr %i.mg, align 4
  %i.mi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36.i, i64 12
  %i.mj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35.i, i64 12
  %i.mk = add nsw i64 %.012.i.i.i.i.i21.i34.i, -1
  %i.ml = icmp samesign ugt i64 %.012.i.i.i.i.i21.i34.i, 1
  br i1 %i.ml, label %.lr.ph.i.i.i.i.i20.i33.i, label %"_ZSt17__merge_sort_loopIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_T1_T2_.exit", !llvm.loop !45

"_ZSt17__merge_sort_loopIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i20.i33.i, %_ZSt4moveIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i29.i
  %i.mm = icmp slt i64 %i.je, %i.d
  br i1 %i.mm, label %bb.w, label %._crit_edge, !llvm.loop !2530

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjN4llvm3pdb14StatCollection4StatEESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNKS5_20getStatsSortedBySizeEvE3$_0EEEvT_SH_SH_T0_SI_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #20 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_SI_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 12
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.f = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !139
  store i32 %i.f, ptr %.0811.i.i.i.i.i, align 4, !tbaa !245
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.i = load i64, ptr %i.g, align 4
  store i64 %i.i, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 12 ; 3 uses
  %i.l = add nsw i64 %.012.i.i.i.i.i, -1
  %i.m = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !45

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.026.i = phi ptr [ %.1.i, %bb.c ], [ %5, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.sroa.0.025.i = phi ptr [ %i.r, %bb.c ], [ %0, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %.sroa.016.024.i = phi ptr [ %.sroa.016.1.i, %bb.c ], [ %1, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %.not19.i = icmp eq ptr %.sroa.016.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr i8, ptr %.026.i, i64 8
  %.0.val.i = load i32, ptr %i.n, align 4, !tbaa !276
  %i.o = getelementptr i8, ptr %.sroa.016.024.i, i64 8
  %.val.i.i = load i32, ptr %i.o, align 4, !tbaa !276
  %i.p = icmp ugt i32 %.val.i.i, %.0.val.i        ; 3 uses
  %.sroa.016.024.pn.i = select i1 %i.p, ptr %.sroa.016.024.i, ptr %.026.i ; 2 uses
  %.sroa.016.1.i.idx = select i1 %i.p, i64 12, i64 0
  %.sroa.016.1.i = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 %.sroa.016.1.i.idx
  %.1.i.idx = select i1 %i.p, i64 0, i64 12
  %.1.i = getelementptr inbounds nuw i8, ptr %.026.i, i64 %.1.i.idx ; 2 uses
  %.sink = load i32, ptr %.sroa.016.024.pn.i, align 4, !tbaa !139
  store i32 %.sink, ptr %.sroa.0.025.i, align 4, !tbaa !245
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.sroa.016.024.pn.i, i64 4
  %.sink.i = load i64, ptr %.sink.in.i, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 4
  store i64 %.sink.i, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 12
  %.not.i = icmp eq ptr %.1.i, %i.k
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_SI_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !2531

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.s = ptrtoint ptr %i.k to i64
  %i.t = ptrtoint ptr %.026.i to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.preheader.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_SI_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.w = udiv exact i64 %i.u, 12
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.025.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %.026.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.x = load i32, ptr %.0910.i.i.i.i.i.i, align 4, !tbaa !139
  store i32 %i.x, ptr %.0811.i.i.i.i.i.i, align 4, !tbaa !245
  %i.y = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 4
  %i.aa = load i64, ptr %i.y, align 4
  store i64 %i.aa, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 12
  %i.ad = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ae = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt4pairIjN4llvm3pdb14StatCollection4StatEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNKS3_20getStatsSortedBySizeEvE3$_0EEEvT_SH_T0_SI_T1_T2_.exit", !llvm.loop !45
end_hunk_0
