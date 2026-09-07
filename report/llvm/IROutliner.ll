Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IROutliner?download=true
inline.NumInlined: 7896
inline.NumDeleted: 3677
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_T1_":bb.a
  %i.ac = udiv exact i64 %i.aa, 120
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i ], [ %i.v, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.020.1.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.ad = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.0811.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.0910.i.i.i.i.i.i.i) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 120 ; 2 uses
  %i.ag = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ah = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i.i, !llvm.loop !41

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.critedge.i.i
  %.08.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.v, %.critedge.i.i ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.ai = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i.i10.i.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"

.lr.ph.preheader.i.i.i.i.i10.i.i:                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i.i
  %i.am = udiv exact i64 %i.ak, 120
  br label %.lr.ph.i.i.i.i.i11.i.i

.lr.ph.i.i.i.i.i11.i.i:                           ; preds = %.lr.ph.i.i.i.i.i11.i.i, %.lr.ph.preheader.i.i.i.i.i10.i.i
  %.012.i.i.i.i.i12.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i11.i.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i10.i.i ] ; 2 uses
  %.0811.i.i.i.i.i13.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i11.i.i ], [ %.08.lcssa.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i10.i.i ] ; 2 uses
  %.0910.i.i.i.i.i14.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i11.i.i ], [ %.sroa.016.1.i.i, %.lr.ph.preheader.i.i.i.i.i10.i.i ] ; 2 uses
  %i.an = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.0811.i.i.i.i.i13.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.0910.i.i.i.i.i14.i.i) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i.i, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i.i, i64 120 ; 2 uses
  %i.aq = add nsw i64 %.012.i.i.i.i.i12.i.i, -1
  %i.ar = icmp samesign ugt i64 %.012.i.i.i.i.i12.i.i, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i11.i.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i", !llvm.loop !41

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i": ; preds = %.lr.ph.i.i.i.i.i11.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i.i
  %.08.lcssa.i.i.i.i.i9.i.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i11.i.i ] ; 2 uses
  %i.as = sub i64 %i.a, %i.ai
  %i.at = sdiv exact i64 %i.as, 120               ; 2 uses
  %.not.i = icmp slt i64 %i.at, %i.n
  br i1 %.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !2178

._crit_edge.i:                                    ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i", %bb.b
  %.sroa.051.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.p, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i9.i.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ] ; 2 uses
  %.lcssa66.i = phi i64 [ %i.d, %bb.b ], [ %i.at, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.051, i64 %.lcssa66.i) ; 2 uses
  %.idx61.i = mul nsw i64 %.sroa.speculated.i, 120
  %i.au = getelementptr inbounds i8, ptr %.sroa.051.0.lcssa.i, i64 %.idx61.i ; 5 uses
  %i.av = icmp ne i64 %.sroa.speculated.i, 0
  %i.aw = icmp ne ptr %i.au, %1
  %or.cond24.i16.i = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond24.i16.i, label %.lr.ph.i34.i, label %.critedge.i17.i

.lr.ph.i34.i:                                     ; preds = %._crit_edge.i, %bb.i
  %.027.i35.i = phi ptr [ %i.bc, %bb.i ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.020.026.i36.i = phi ptr [ %.sroa.020.1.i41.i, %bb.i ], [ %.sroa.051.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.016.025.i37.i = phi ptr [ %.sroa.016.1.i40.i, %bb.i ], [ %i.au, %._crit_edge.i ] ; 4 uses
  %.val.i.i38.i = load i32, ptr %.sroa.016.025.i37.i, align 8, !tbaa !513
  %.val1.i.i39.i = load i32, ptr %.sroa.020.026.i36.i, align 8, !tbaa !513
  %i.ax = icmp ult i32 %.val.i.i38.i, %.val1.i.i39.i
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i34.i
  %i.ay = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.027.i35.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.016.025.i37.i) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37.i, i64 120
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i34.i
  %i.ba = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.027.i35.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.020.026.i36.i) ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36.i, i64 120
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.016.1.i40.i = phi ptr [ %i.az, %bb.g ], [ %.sroa.016.025.i37.i, %bb.h ] ; 3 uses
  %.sroa.020.1.i41.i = phi ptr [ %.sroa.020.026.i36.i, %bb.g ], [ %i.bb, %bb.h ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 120 ; 2 uses
  %i.bd = icmp ne ptr %.sroa.020.1.i41.i, %i.au
  %i.be = icmp ne ptr %.sroa.016.1.i40.i, %1
  %or.cond.i42.i = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %or.cond.i42.i, label %.lr.ph.i34.i, label %.critedge.i17.i, !llvm.loop !2177

.critedge.i17.i:                                  ; preds = %bb.i, %._crit_edge.i
  %.sroa.016.0.lcssa.i18.i = phi ptr [ %i.au, %._crit_edge.i ], [ %.sroa.016.1.i40.i, %bb.i ] ; 2 uses
  %.sroa.020.0.lcssa.i19.i = phi ptr [ %.sroa.051.0.lcssa.i, %._crit_edge.i ], [ %.sroa.020.1.i41.i, %bb.i ] ; 2 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %i.bc, %bb.i ] ; 2 uses
  %i.bf = ptrtoint ptr %i.au to i64
  %i.bg = ptrtoint ptr %.sroa.020.0.lcssa.i19.i to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.preheader.i.i.i.i.i.i29.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i21.i

.lr.ph.preheader.i.i.i.i.i.i29.i:                 ; preds = %.critedge.i17.i
  %i.bj = udiv exact i64 %i.bh, 120
  br label %.lr.ph.i.i.i.i.i.i30.i

.lr.ph.i.i.i.i.i.i30.i:                           ; preds = %.lr.ph.i.i.i.i.i.i30.i, %.lr.ph.preheader.i.i.i.i.i.i29.i
  %.012.i.i.i.i.i.i31.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i.i30.i ], [ %i.bj, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 2 uses
  %.0811.i.i.i.i.i.i32.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i30.i ], [ %.0.lcssa.i20.i, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 2 uses
  %.0910.i.i.i.i.i.i33.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i30.i ], [ %.sroa.020.0.lcssa.i19.i, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 2 uses
  %i.bk = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.0811.i.i.i.i.i.i32.i, ptr noundef nonnull align 8 dereferenceable(120) %.0910.i.i.i.i.i.i33.i) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33.i, i64 120
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32.i, i64 120 ; 2 uses
  %i.bn = add nsw i64 %.012.i.i.i.i.i.i31.i, -1
  %i.bo = icmp samesign ugt i64 %.012.i.i.i.i.i.i31.i, 1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i30.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i21.i, !llvm.loop !41

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i21.i: ; preds = %.lr.ph.i.i.i.i.i.i30.i, %.critedge.i17.i
  %.08.lcssa.i.i.i.i.i.i22.i = phi ptr [ %.0.lcssa.i20.i, %.critedge.i17.i ], [ %i.bm, %.lr.ph.i.i.i.i.i.i30.i ]
  %i.bp = ptrtoint ptr %.sroa.016.0.lcssa.i18.i to i64
  %i.bq = sub i64 %i.a, %i.bp                     ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.i.i.i.i.i10.i24.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i10.i24.i:               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i21.i
  %i.bs = udiv exact i64 %i.bq, 120
  br label %.lr.ph.i.i.i.i.i11.i25.i

.lr.ph.i.i.i.i.i11.i25.i:                         ; preds = %.lr.ph.i.i.i.i.i11.i25.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i12.i26.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i11.i25.i ], [ %i.bs, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 2 uses
  %.0811.i.i.i.i.i13.i27.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i11.i25.i ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 2 uses
  %.0910.i.i.i.i.i14.i28.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i11.i25.i ], [ %.sroa.016.0.lcssa.i18.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 2 uses
  %i.bt = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.0811.i.i.i.i.i13.i27.i, ptr noundef nonnull align 8 dereferenceable(120) %.0910.i.i.i.i.i14.i28.i) ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28.i, i64 120
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27.i, i64 120
  %i.bw = add nsw i64 %.012.i.i.i.i.i12.i26.i, -1
  %i.bx = icmp samesign ugt i64 %.012.i.i.i.i.i12.i26.i, 1
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i11.i25.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_T1_T2_.exit", !llvm.loop !41

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i11.i25.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i21.i
  %i.by = shl nsw i64 %.051, 2                    ; 4 uses
  %.not65.i = icmp slt i64 %i.m, %i.by
  br i1 %.not65.i, label %._crit_edge.i27, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_T1_T2_.exit"
  %.idx.i23 = mul nsw i64 %.051, 240
  %.idx56.i = mul nsw i64 %.051, 480
  br label %bb.j

bb.j:                                             ; preds = %"_ZSt12__move_mergeIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i", %.lr.ph.i22
  %.sroa.022.067.i = phi ptr [ %0, %.lr.ph.i22 ], [ %i.dj, %"_ZSt12__move_mergeIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ]
  %.066.i = phi ptr [ %2, %.lr.ph.i22 ], [ %i.ca, %"_ZSt12__move_mergeIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ] ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %.066.i, i64 %.idx.i23 ; 3 uses
  %i.ca = getelementptr inbounds i8, ptr %.066.i, i64 %.idx56.i ; 4 uses
  br label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %bb.j, %bb.m
  %.030.i.i = phi ptr [ %.1.i.i, %bb.m ], [ %.066.i, %bb.j ] ; 4 uses
  %.01629.i.i = phi ptr [ %.117.i.i, %bb.m ], [ %i.bz, %bb.j ] ; 4 uses
  %.sroa.0.028.i.i = phi ptr [ %i.cg, %bb.m ], [ %.sroa.022.067.i, %bb.j ] ; 3 uses
  %.016.val.i.i = load i32, ptr %.01629.i.i, align 8, !tbaa !513
  %.0.val.i.i = load i32, ptr %.030.i.i, align 8, !tbaa !513
  %i.cb = icmp ult i32 %.016.val.i.i, %.0.val.i.i
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i24
  %i.cc = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.028.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.01629.i.i) ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01629.i.i, i64 120
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i24
  %i.ce = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.028.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.030.i.i) ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 120
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.117.i.i = phi ptr [ %i.cd, %bb.k ], [ %.01629.i.i, %bb.l ] ; 4 uses
  %.1.i.i = phi ptr [ %.030.i.i, %bb.k ], [ %i.cf, %bb.l ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 120 ; 5 uses
  %i.ch = icmp ne ptr %.1.i.i, %i.bz
  %i.ci = icmp ne ptr %.117.i.i, %i.ca
  %i.cj = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %i.cj, label %.lr.ph.i.i24, label %._crit_edge.i.i, !llvm.loop !2179

._crit_edge.i.i:                                  ; preds = %bb.m
  %i.ck = ptrtoint ptr %i.bz to i64
  %i.cl = ptrtoint ptr %.1.i.i to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 2 uses
  %i.cn = icmp sgt i64 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.preheader.i.i.i.i.i.i.i30, label %_ZSt4moveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i30:                 ; preds = %._crit_edge.i.i
  %i.co = udiv exact i64 %i.cm, 120
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31, %.lr.ph.preheader.i.i.i.i.i.i.i30
  %.012.i.i.i.i.i.i.i32 = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.i.i31 ], [ %i.co, %.lr.ph.preheader.i.i.i.i.i.i.i30 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i33 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i31 ], [ %i.cg, %.lr.ph.preheader.i.i.i.i.i.i.i30 ] ; 2 uses
  %.0910.i.i.i.i.i.i.i34 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.1.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i30 ] ; 2 uses
  %i.cp = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.0811.i.i.i.i.i.i.i33, ptr noundef nonnull align 8 dereferenceable(120) %.0910.i.i.i.i.i.i.i34) ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i34, i64 120
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i33, i64 120 ; 2 uses
  %i.cs = add nsw i64 %.012.i.i.i.i.i.i.i32, -1
  %i.ct = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i32, 1
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i.i31, label %_ZSt4moveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i.i, !llvm.loop !41

_ZSt4moveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i25 = phi ptr [ %i.cg, %._crit_edge.i.i ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i31 ]
  %i.cu = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i25 to i64 ; 3 uses
  %i.cv = ptrtoint ptr %i.cg to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.cg, i64 %i.cw ; 2 uses
  %i.cy = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cz = ptrtoint ptr %.117.i.i to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = icmp sgt i64 %i.da, 0
  br i1 %i.db, label %.lr.ph.preheader.i.i.i.i.i19.i.i, label %"_ZSt12__move_mergeIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"

.lr.ph.preheader.i.i.i.i.i19.i.i:                 ; preds = %_ZSt4moveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i.i
  %i.dc = udiv exact i64 %i.da, 120
  br label %.lr.ph.i.i.i.i.i20.i.i

.lr.ph.i.i.i.i.i20.i.i:                           ; preds = %.lr.ph.i.i.i.i.i20.i.i, %.lr.ph.preheader.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i21.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i20.i.i ], [ %i.dc, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i20.i.i ], [ %i.cx, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 2 uses
  %.0910.i.i.i.i.i23.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i20.i.i ], [ %.117.i.i, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 2 uses
  %i.dd = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.0811.i.i.i.i.i22.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.0910.i.i.i.i.i23.i.i) ; 0 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 120
  %i.df = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 120 ; 2 uses
  %i.dg = add nsw i64 %.012.i.i.i.i.i21.i.i, -1
  %i.dh = icmp samesign ugt i64 %.012.i.i.i.i.i21.i.i, 1
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i20.i.i, label %_ZSt4moveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i.i, !llvm.loop !41

_ZSt4moveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i20.i.i
  %3 = ptrtoint ptr %i.df to i64
  br label %"_ZSt12__move_mergeIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"

"_ZSt12__move_mergeIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i": ; preds = %_ZSt4moveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i.i, %_ZSt4moveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi i64 [ %i.cu, %_ZSt4moveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i.i ], [ %3, %_ZSt4moveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i.i ]
  %i.di = sub i64 %.08.lcssa.i.i.i.i.i18.i.i, %i.cu
  %i.dj = getelementptr inbounds i8, ptr %i.cx, i64 %i.di ; 2 uses
  %i.dk = sub i64 %i.l, %i.cy
  %i.dl = sdiv exact i64 %i.dk, 120               ; 2 uses
  %.not.i26 = icmp slt i64 %i.dl, %i.by
  br i1 %.not.i26, label %._crit_edge.i27, label %bb.j, !llvm.loop !2180

._crit_edge.i27:                                  ; preds = %"_ZSt12__move_mergeIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_T1_T2_.exit"
  %.0.lcssa.i28 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_T1_T2_.exit" ], [ %i.ca, %"_ZSt12__move_mergeIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_T1_T2_.exit" ], [ %i.dj, %"_ZSt12__move_mergeIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ] ; 2 uses
  %.lcssa63.i = phi i64 [ %i.m, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_T1_T2_.exit" ], [ %i.dl, %"_ZSt12__move_mergeIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ]
  %.sroa.speculated.i29 = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %.lcssa63.i) ; 2 uses
  %.idx58.i = mul nsw i64 %.sroa.speculated.i29, 120
  %i.dm = getelementptr inbounds i8, ptr %.0.lcssa.i28, i64 %.idx58.i ; 5 uses
  %i.dn = icmp ne i64 %.sroa.speculated.i29, 0
  %i.do = icmp ne ptr %i.dm, %i.e
  %i.dp = and i1 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph.i43.i, label %._crit_edge.i25.i

.lr.ph.i43.i:                                     ; preds = %._crit_edge.i27, %bb.p
  %.030.i44.i = phi ptr [ %.1.i50.i, %bb.p ], [ %.0.lcssa.i28, %._crit_edge.i27 ] ; 4 uses
  %.01629.i45.i = phi ptr [ %.117.i49.i, %bb.p ], [ %i.dm, %._crit_edge.i27 ] ; 4 uses
  %.sroa.0.028.i46.i = phi ptr [ %i.dv, %bb.p ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i27 ] ; 3 uses
  %.016.val.i47.i = load i32, ptr %.01629.i45.i, align 8, !tbaa !513
  %.0.val.i48.i = load i32, ptr %.030.i44.i, align 8, !tbaa !513
  %i.dq = icmp ult i32 %.016.val.i47.i, %.0.val.i48.i
  br i1 %i.dq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i43.i
  %i.dr = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.028.i46.i, ptr noundef nonnull align 8 dereferenceable(120) %.01629.i45.i) ; 0 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01629.i45.i, i64 120
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i43.i
  %i.dt = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.028.i46.i, ptr noundef nonnull align 8 dereferenceable(120) %.030.i44.i) ; 0 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.030.i44.i, i64 120
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.117.i49.i = phi ptr [ %i.ds, %bb.n ], [ %.01629.i45.i, %bb.o ] ; 3 uses
  %.1.i50.i = phi ptr [ %.030.i44.i, %bb.n ], [ %i.du, %bb.o ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 120 ; 2 uses
  %i.dw = icmp ne ptr %.1.i50.i, %i.dm
  %i.dx = icmp ne ptr %.117.i49.i, %i.e
  %i.dy = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %i.dy, label %.lr.ph.i43.i, label %._crit_edge.i25.i, !llvm.loop !2179

._crit_edge.i25.i:                                ; preds = %bb.p, %._crit_edge.i27
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i27 ], [ %i.dv, %bb.p ] ; 4 uses
  %.016.lcssa.i27.i = phi ptr [ %i.dm, %._crit_edge.i27 ], [ %.117.i49.i, %bb.p ] ; 2 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i28, %._crit_edge.i27 ], [ %.1.i50.i, %bb.p ] ; 2 uses
  %i.dz = ptrtoint ptr %i.dm to i64
  %i.ea = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 2 uses
  %i.ec = icmp sgt i64 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.preheader.i.i.i.i.i.i38.i, label %_ZSt4moveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i29.i

.lr.ph.preheader.i.i.i.i.i.i38.i:                 ; preds = %._crit_edge.i25.i
  %i.ed = udiv exact i64 %i.eb, 120
  br label %.lr.ph.i.i.i.i.i.i39.i

.lr.ph.i.i.i.i.i.i39.i:                           ; preds = %.lr.ph.i.i.i.i.i.i39.i, %.lr.ph.preheader.i.i.i.i.i.i38.i
  %.012.i.i.i.i.i.i40.i = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.i39.i ], [ %i.ed, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 2 uses
  %.0811.i.i.i.i.i.i41.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i39.i ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 2 uses
  %.0910.i.i.i.i.i.i42.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i39.i ], [ %.0.lcssa.i28.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 2 uses
  %i.ee = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.0811.i.i.i.i.i.i41.i, ptr noundef nonnull align 8 dereferenceable(120) %.0910.i.i.i.i.i.i42.i) ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42.i, i64 120
  %i.eg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41.i, i64 120 ; 2 uses
  %i.eh = add nsw i64 %.012.i.i.i.i.i.i40.i, -1
  %i.ei = icmp samesign ugt i64 %.012.i.i.i.i.i.i40.i, 1
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i39.i, label %_ZSt4moveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i29.i, !llvm.loop !41

_ZSt4moveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i39.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %i.eg, %.lr.ph.i.i.i.i.i.i39.i ]
  %i.ej = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.ek = sub i64 %i.l, %i.ej                     ; 2 uses
  %i.el = icmp sgt i64 %i.ek, 0
  br i1 %i.el, label %.lr.ph.preheader.i.i.i.i.i19.i32.i, label %"_ZSt17__merge_sort_loopIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i19.i32.i:               ; preds = %_ZSt4moveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i29.i
  %i.em = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.en = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.eo
  %i.eq = udiv exact i64 %i.ek, 120
  br label %.lr.ph.i.i.i.i.i20.i33.i

.lr.ph.i.i.i.i.i20.i33.i:                         ; preds = %.lr.ph.i.i.i.i.i20.i33.i, %.lr.ph.preheader.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i21.i34.i = phi i64 [ %i.eu, %.lr.ph.i.i.i.i.i20.i33.i ], [ %i.eq, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i35.i = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i20.i33.i ], [ %i.ep, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 2 uses
  %.0910.i.i.i.i.i23.i36.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i20.i33.i ], [ %.016.lcssa.i27.i, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 2 uses
  %i.er = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.0811.i.i.i.i.i22.i35.i, ptr noundef nonnull align 8 dereferenceable(120) %.0910.i.i.i.i.i23.i36.i) ; 0 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36.i, i64 120
  %i.et = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35.i, i64 120
  %i.eu = add nsw i64 %.012.i.i.i.i.i21.i34.i, -1
  %i.ev = icmp samesign ugt i64 %.012.i.i.i.i.i21.i34.i, 1
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i20.i33.i, label %"_ZSt17__merge_sort_loopIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_T1_T2_.exit", !llvm.loop !41

"_ZSt17__merge_sort_loopIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i20.i33.i, %_ZSt4moveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i29.i
  %i.ew = icmp slt i64 %i.by, %i.d
  br i1 %i.ew, label %bb.b, label %._crit_edge, !llvm.loop !2181

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_T1_.exit.thread", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_SI_T0_SJ_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #4 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_SJ_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 120
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.0910.i.i.i.i.i) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 120 ; 3 uses
  %i.i = add nsw i64 %.012.i.i.i.i.i, -1
  %i.j = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.j, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !41

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.026.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.sroa.0.025.i = phi ptr [ %i.p, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %.sroa.016.024.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.not19.i = icmp eq ptr %.sroa.016.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.0.val.i = load i32, ptr %.026.i, align 8, !tbaa !513
  %.val.i.i = load i32, ptr %.sroa.016.024.i, align 8, !tbaa !513
  %i.k = icmp ult i32 %.val.i.i, %.0.val.i
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.025.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.016.024.i) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 120
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.025.i, ptr noundef nonnull align 8 dereferenceable(120) %.026.i) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.026.i, i64 120
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.016.1.i = phi ptr [ %i.m, %bb.d ], [ %.sroa.016.024.i, %bb.e ]
  %.1.i = phi ptr [ %.026.i, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 120
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_SJ_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !2182

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = ptrtoint ptr %.026.i to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_SJ_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.u = udiv exact i64 %i.s, 120
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.025.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %.026.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm12IRSimilarity21IRSimilarityCandidateaSEOS1_(ptr noundef nonnull align 8 dereferenceable(120) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.0910.i.i.i.i.i.i) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 120
  %i.y = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.z = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm12IRSimilarity21IRSimilarityCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_10IROutliner24pruneIncompatibleRegionsERS8_R15OutlinableGroupE3$_0EEEvT_SI_T0_SJ_T1_T2_.exit", !llvm.loop !41

bb.g:                                             ; preds = %bb.a
  %i.aa = ptrtoint ptr %2 to i64
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm12IRSimilarity21IRSimilarityCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29

.lr.ph.preheader.i.i.i.i.i24:                     ; preds = %bb.g
  %i.ae = udiv exact i64 %i.ac, 120
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.preheader.i.i.i.i.i24
  %.012.i.i.i.i.i26 = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i25 ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i24 ] ; 2 uses
  %.0811.i.i.i.i.i27 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i25 ], [ %5, %.lr.ph.preheader.i.i.i.i.i24 ] ; 2 uses
  %.0910.i.i.i.i.i28 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i25 ], [ %1, %.lr.ph.preheader.i.i.i.i.i24 ] ; 2 uses
end_hunk_0
