Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUPromoteAlloca?download=true
inline.NumInlined: 5003
inline.NumDeleted: 2606
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_T1_":bb.a
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %i.x, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.023.1.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.af = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.0811.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(392) %.0910.i.i.i.i.i.i.i) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 392
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 392 ; 2 uses
  %i.ai = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.aj = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i, !llvm.loop !10

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.critedge.i.i
  %.08.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.x, %.critedge.i.i ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.ak = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.al = ptrtoint ptr %.sroa.021.1.i.i to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader.i.i.i.i.i15.i.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i"

.lr.ph.preheader.i.i.i.i.i15.i.i:                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i
  %i.ao = udiv exact i64 %i.am, 392
  br label %.lr.ph.i.i.i.i.i16.i.i

.lr.ph.i.i.i.i.i16.i.i:                           ; preds = %.lr.ph.i.i.i.i.i16.i.i, %.lr.ph.preheader.i.i.i.i.i15.i.i
  %.012.i.i.i.i.i17.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i16.i.i ], [ %i.ao, %.lr.ph.preheader.i.i.i.i.i15.i.i ] ; 2 uses
  %.0811.i.i.i.i.i18.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i16.i.i ], [ %.08.lcssa.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i15.i.i ] ; 2 uses
  %.0910.i.i.i.i.i19.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i16.i.i ], [ %.sroa.021.1.i.i, %.lr.ph.preheader.i.i.i.i.i15.i.i ] ; 2 uses
  %i.ap = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.0811.i.i.i.i.i18.i.i, ptr noundef nonnull align 8 dereferenceable(392) %.0910.i.i.i.i.i19.i.i) ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i19.i.i, i64 392
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i18.i.i, i64 392 ; 2 uses
  %i.as = add nsw i64 %.012.i.i.i.i.i17.i.i, -1
  %i.at = icmp samesign ugt i64 %.012.i.i.i.i.i17.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i16.i.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i", !llvm.loop !10

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i": ; preds = %.lr.ph.i.i.i.i.i16.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i
  %.08.lcssa.i.i.i.i.i14.i.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i.i ], [ %i.ar, %.lr.ph.i.i.i.i.i16.i.i ] ; 2 uses
  %i.au = sub i64 %i.a, %i.ak
  %i.av = sdiv exact i64 %i.au, 392               ; 2 uses
  %.not.i = icmp slt i64 %i.av, %i.n
  br i1 %.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !886

._crit_edge.i:                                    ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i", %bb.b
  %.sroa.058.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.p, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i14.i.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ] ; 2 uses
  %.lcssa66.i = phi i64 [ %i.d, %bb.b ], [ %i.av, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 23529010298098917) %.054, i64 %.lcssa66.i) ; 2 uses
  %.idx61.i = mul nsw i64 %.sroa.speculated.i, 392
  %i.aw = getelementptr inbounds i8, ptr %.sroa.058.0.lcssa.i, i64 %.idx61.i ; 5 uses
  %i.ax = icmp ne i64 %.sroa.speculated.i, 0
  %i.ay = icmp ne ptr %i.aw, %1
  %or.cond25.i24.i = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond25.i24.i, label %.lr.ph.i42.i, label %.critedge.i25.i

.lr.ph.i42.i:                                     ; preds = %._crit_edge.i, %bb.i
  %.028.i43.i = phi ptr [ %i.bg, %bb.i ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.023.027.i44.i = phi ptr [ %.sroa.023.1.i49.i, %bb.i ], [ %.sroa.058.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.021.026.i45.i = phi ptr [ %.sroa.021.1.i48.i, %bb.i ], [ %i.aw, %._crit_edge.i ] ; 4 uses
  %i.az = getelementptr i8, ptr %.sroa.021.026.i45.i, i64 96
  %.val2.i.i46.i = load i32, ptr %i.az, align 8, !tbaa !161
  %i.ba = getelementptr i8, ptr %.sroa.023.027.i44.i, i64 96
  %.val3.i.i47.i = load i32, ptr %i.ba, align 8, !tbaa !161
  %i.bb = icmp ugt i32 %.val2.i.i46.i, %.val3.i.i47.i
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i42.i
  %i.bc = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.028.i43.i, ptr noundef nonnull align 8 dereferenceable(392) %.sroa.021.026.i45.i) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.021.026.i45.i, i64 392
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i42.i
  %i.be = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.028.i43.i, ptr noundef nonnull align 8 dereferenceable(392) %.sroa.023.027.i44.i) ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.023.027.i44.i, i64 392
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.021.1.i48.i = phi ptr [ %i.bd, %bb.g ], [ %.sroa.021.026.i45.i, %bb.h ] ; 3 uses
  %.sroa.023.1.i49.i = phi ptr [ %.sroa.023.027.i44.i, %bb.g ], [ %i.bf, %bb.h ] ; 3 uses
  %i.bg = getelementptr i8, ptr %.028.i43.i, i64 392 ; 2 uses
  %i.bh = icmp ne ptr %.sroa.023.1.i49.i, %i.aw
  %i.bi = icmp ne ptr %.sroa.021.1.i48.i, %1
  %or.cond.i50.i = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond.i50.i, label %.lr.ph.i42.i, label %.critedge.i25.i, !llvm.loop !885

.critedge.i25.i:                                  ; preds = %bb.i, %._crit_edge.i
  %.sroa.021.0.lcssa.i26.i = phi ptr [ %i.aw, %._crit_edge.i ], [ %.sroa.021.1.i48.i, %bb.i ] ; 2 uses
  %.sroa.023.0.lcssa.i27.i = phi ptr [ %.sroa.058.0.lcssa.i, %._crit_edge.i ], [ %.sroa.023.1.i49.i, %bb.i ] ; 2 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bj = ptrtoint ptr %i.aw to i64
  %i.bk = ptrtoint ptr %.sroa.023.0.lcssa.i27.i to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.preheader.i.i.i.i.i.i37.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i29.i

.lr.ph.preheader.i.i.i.i.i.i37.i:                 ; preds = %.critedge.i25.i
  %i.bn = udiv exact i64 %i.bl, 392
  br label %.lr.ph.i.i.i.i.i.i38.i

.lr.ph.i.i.i.i.i.i38.i:                           ; preds = %.lr.ph.i.i.i.i.i.i38.i, %.lr.ph.preheader.i.i.i.i.i.i37.i
  %.012.i.i.i.i.i.i39.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i.i38.i ], [ %i.bn, %.lr.ph.preheader.i.i.i.i.i.i37.i ] ; 2 uses
  %.0811.i.i.i.i.i.i40.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i38.i ], [ %.0.lcssa.i28.i, %.lr.ph.preheader.i.i.i.i.i.i37.i ] ; 2 uses
  %.0910.i.i.i.i.i.i41.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i38.i ], [ %.sroa.023.0.lcssa.i27.i, %.lr.ph.preheader.i.i.i.i.i.i37.i ] ; 2 uses
  %i.bo = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.0811.i.i.i.i.i.i40.i, ptr noundef nonnull align 8 dereferenceable(392) %.0910.i.i.i.i.i.i41.i) ; 0 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i41.i, i64 392
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i40.i, i64 392 ; 2 uses
  %i.br = add nsw i64 %.012.i.i.i.i.i.i39.i, -1
  %i.bs = icmp samesign ugt i64 %.012.i.i.i.i.i.i39.i, 1
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i.i38.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i29.i, !llvm.loop !10

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i38.i, %.critedge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.0.lcssa.i28.i, %.critedge.i25.i ], [ %i.bq, %.lr.ph.i.i.i.i.i.i38.i ]
  %i.bt = ptrtoint ptr %.sroa.021.0.lcssa.i26.i to i64
  %i.bu = sub i64 %i.a, %i.bt                     ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.preheader.i.i.i.i.i15.i32.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i15.i32.i:               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i29.i
  %i.bw = udiv exact i64 %i.bu, 392
  br label %.lr.ph.i.i.i.i.i16.i33.i

.lr.ph.i.i.i.i.i16.i33.i:                         ; preds = %.lr.ph.i.i.i.i.i16.i33.i, %.lr.ph.preheader.i.i.i.i.i15.i32.i
  %.012.i.i.i.i.i17.i34.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i16.i33.i ], [ %i.bw, %.lr.ph.preheader.i.i.i.i.i15.i32.i ] ; 2 uses
  %.0811.i.i.i.i.i18.i35.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i16.i33.i ], [ %.08.lcssa.i.i.i.i.i.i30.i, %.lr.ph.preheader.i.i.i.i.i15.i32.i ] ; 2 uses
  %.0910.i.i.i.i.i19.i36.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i16.i33.i ], [ %.sroa.021.0.lcssa.i26.i, %.lr.ph.preheader.i.i.i.i.i15.i32.i ] ; 2 uses
  %i.bx = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.0811.i.i.i.i.i18.i35.i, ptr noundef nonnull align 8 dereferenceable(392) %.0910.i.i.i.i.i19.i36.i) ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i19.i36.i, i64 392
  %i.bz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i18.i35.i, i64 392
  %i.ca = add nsw i64 %.012.i.i.i.i.i17.i34.i, -1
  %i.cb = icmp samesign ugt i64 %.012.i.i.i.i.i17.i34.i, 1
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i16.i33.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_T1_T2_.exit", !llvm.loop !10

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i16.i33.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i29.i
  %i.cc = shl nsw i64 %.054, 2                    ; 4 uses
  %.not65.i = icmp slt i64 %i.m, %i.cc
  br i1 %.not65.i, label %._crit_edge.i28, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_T1_T2_.exit"
  %.idx.i24 = mul nsw i64 %.054, 784
  %.idx56.i = mul nsw i64 %.054, 1568
  br label %bb.j

bb.j:                                             ; preds = %"_ZSt12__move_mergeIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i", %.lr.ph.i23
  %.sroa.022.067.i = phi ptr [ %0, %.lr.ph.i23 ], [ %i.dp, %"_ZSt12__move_mergeIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ]
  %.066.i = phi ptr [ %2, %.lr.ph.i23 ], [ %i.ce, %"_ZSt12__move_mergeIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ] ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %.066.i, i64 %.idx.i24 ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.066.i, i64 %.idx56.i ; 4 uses
  br label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %bb.j, %bb.m
  %.029.i.i = phi ptr [ %.1.i.i, %bb.m ], [ %.066.i, %bb.j ] ; 4 uses
  %.01628.i.i = phi ptr [ %.117.i.i, %bb.m ], [ %i.cd, %bb.j ] ; 4 uses
  %.sroa.0.027.i.i = phi ptr [ %i.cm, %bb.m ], [ %.sroa.022.067.i, %bb.j ] ; 3 uses
  %i.cf = getelementptr i8, ptr %.01628.i.i, i64 96
  %.016.val.i.i = load i32, ptr %i.cf, align 8, !tbaa !161
  %i.cg = getelementptr i8, ptr %.029.i.i, i64 96
  %.0.val.i.i = load i32, ptr %i.cg, align 8, !tbaa !161
  %i.ch = icmp ugt i32 %.016.val.i.i, %.0.val.i.i
  br i1 %i.ch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i25
  %i.ci = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.0.027.i.i, ptr noundef nonnull align 8 dereferenceable(392) %.01628.i.i) ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.01628.i.i, i64 392
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i25
  %i.ck = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.0.027.i.i, ptr noundef nonnull align 8 dereferenceable(392) %.029.i.i) ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 392
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.117.i.i = phi ptr [ %i.cj, %bb.k ], [ %.01628.i.i, %bb.l ] ; 4 uses
  %.1.i.i = phi ptr [ %.029.i.i, %bb.k ], [ %i.cl, %bb.l ] ; 4 uses
  %i.cm = getelementptr i8, ptr %.sroa.0.027.i.i, i64 392 ; 5 uses
  %i.cn = icmp ne ptr %.1.i.i, %i.cd
  %i.co = icmp ne ptr %.117.i.i, %i.ce
  %i.cp = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %i.cp, label %.lr.ph.i.i25, label %._crit_edge.i.i, !llvm.loop !887

._crit_edge.i.i:                                  ; preds = %bb.m
  %i.cq = ptrtoint ptr %i.cd to i64
  %i.cr = ptrtoint ptr %.1.i.i to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.preheader.i.i.i.i.i.i.i33, label %_ZSt4moveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i33:                 ; preds = %._crit_edge.i.i
  %i.cu = udiv exact i64 %i.cs, 392
  br label %.lr.ph.i.i.i.i.i.i.i34

.lr.ph.i.i.i.i.i.i.i34:                           ; preds = %.lr.ph.i.i.i.i.i.i.i34, %.lr.ph.preheader.i.i.i.i.i.i.i33
  %.012.i.i.i.i.i.i.i35 = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i.i.i34 ], [ %i.cu, %.lr.ph.preheader.i.i.i.i.i.i.i33 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i36 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i34 ], [ %i.cm, %.lr.ph.preheader.i.i.i.i.i.i.i33 ] ; 2 uses
  %.0910.i.i.i.i.i.i.i37 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i.i34 ], [ %.1.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i33 ] ; 2 uses
  %i.cv = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.0811.i.i.i.i.i.i.i36, ptr noundef nonnull align 8 dereferenceable(392) %.0910.i.i.i.i.i.i.i37) ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i37, i64 392
  %i.cx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i36, i64 392 ; 2 uses
  %i.cy = add nsw i64 %.012.i.i.i.i.i.i.i35, -1
  %i.cz = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i35, 1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i.i.i34, label %_ZSt4moveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i, !llvm.loop !10

_ZSt4moveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i34, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i26 = phi ptr [ %i.cm, %._crit_edge.i.i ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i34 ]
  %i.da = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i26 to i64 ; 3 uses
  %i.db = ptrtoint ptr %i.cm to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.cm, i64 %i.dc ; 2 uses
  %i.de = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.df = ptrtoint ptr %.117.i.i to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 2 uses
  %i.dh = icmp sgt i64 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.preheader.i.i.i.i.i20.i.i, label %"_ZSt12__move_mergeIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i"

.lr.ph.preheader.i.i.i.i.i20.i.i:                 ; preds = %_ZSt4moveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i
  %i.di = udiv exact i64 %i.dg, 392
  br label %.lr.ph.i.i.i.i.i21.i.i

.lr.ph.i.i.i.i.i21.i.i:                           ; preds = %.lr.ph.i.i.i.i.i21.i.i, %.lr.ph.preheader.i.i.i.i.i20.i.i
  %.012.i.i.i.i.i22.i.i = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i21.i.i ], [ %i.di, %.lr.ph.preheader.i.i.i.i.i20.i.i ] ; 2 uses
  %.0811.i.i.i.i.i23.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i21.i.i ], [ %i.dd, %.lr.ph.preheader.i.i.i.i.i20.i.i ] ; 2 uses
  %.0910.i.i.i.i.i24.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i21.i.i ], [ %.117.i.i, %.lr.ph.preheader.i.i.i.i.i20.i.i ] ; 2 uses
  %i.dj = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.0811.i.i.i.i.i23.i.i, ptr noundef nonnull align 8 dereferenceable(392) %.0910.i.i.i.i.i24.i.i) ; 0 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i.i, i64 392
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i.i, i64 392 ; 2 uses
  %i.dm = add nsw i64 %.012.i.i.i.i.i22.i.i, -1
  %i.dn = icmp samesign ugt i64 %.012.i.i.i.i.i22.i.i, 1
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i21.i.i, label %_ZSt4moveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit25.loopexit.i.i, !llvm.loop !10

_ZSt4moveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit25.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i21.i.i
  %3 = ptrtoint ptr %i.dl to i64
  br label %"_ZSt12__move_mergeIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i"

"_ZSt12__move_mergeIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i": ; preds = %_ZSt4moveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit25.loopexit.i.i, %_ZSt4moveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i
  %.08.lcssa.i.i.i.i.i19.i.i = phi i64 [ %i.da, %_ZSt4moveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i.i ], [ %3, %_ZSt4moveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit25.loopexit.i.i ]
  %i.do = sub i64 %.08.lcssa.i.i.i.i.i19.i.i, %i.da
  %i.dp = getelementptr inbounds i8, ptr %i.dd, i64 %i.do ; 2 uses
  %i.dq = sub i64 %i.l, %i.de
  %i.dr = sdiv exact i64 %i.dq, 392               ; 2 uses
  %.not.i27 = icmp slt i64 %i.dr, %i.cc
  br i1 %.not.i27, label %._crit_edge.i28, label %bb.j, !llvm.loop !888

._crit_edge.i28:                                  ; preds = %"_ZSt12__move_mergeIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_T1_T2_.exit"
  %.0.lcssa.i29 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_T1_T2_.exit" ], [ %i.ce, %"_ZSt12__move_mergeIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_T1_T2_.exit" ], [ %i.dp, %"_ZSt12__move_mergeIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ] ; 2 uses
  %.lcssa63.i = phi i64 [ %i.m, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_T1_T2_.exit" ], [ %i.dr, %"_ZSt12__move_mergeIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit.i" ]
  %.sroa.speculated.i30 = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 47058020596197833) %i.n, i64 %.lcssa63.i) ; 2 uses
  %.idx58.i = mul nsw i64 %.sroa.speculated.i30, 392
  %i.ds = getelementptr inbounds i8, ptr %.0.lcssa.i29, i64 %.idx58.i ; 5 uses
  %i.dt = icmp ne i64 %.sroa.speculated.i30, 0
  %i.du = icmp ne ptr %i.ds, %i.e
  %i.dv = and i1 %i.dt, %i.du
  br i1 %i.dv, label %.lr.ph.i43.i, label %._crit_edge.i25.i

.lr.ph.i43.i:                                     ; preds = %._crit_edge.i28, %bb.p
  %.029.i44.i = phi ptr [ %.1.i50.i, %bb.p ], [ %.0.lcssa.i29, %._crit_edge.i28 ] ; 4 uses
  %.01628.i45.i = phi ptr [ %.117.i49.i, %bb.p ], [ %i.ds, %._crit_edge.i28 ] ; 4 uses
  %.sroa.0.027.i46.i = phi ptr [ %i.ed, %bb.p ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i28 ] ; 3 uses
  %i.dw = getelementptr i8, ptr %.01628.i45.i, i64 96
  %.016.val.i47.i = load i32, ptr %i.dw, align 8, !tbaa !161
  %i.dx = getelementptr i8, ptr %.029.i44.i, i64 96
  %.0.val.i48.i = load i32, ptr %i.dx, align 8, !tbaa !161
  %i.dy = icmp ugt i32 %.016.val.i47.i, %.0.val.i48.i
  br i1 %i.dy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i43.i
  %i.dz = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.0.027.i46.i, ptr noundef nonnull align 8 dereferenceable(392) %.01628.i45.i) ; 0 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.01628.i45.i, i64 392
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i43.i
  %i.eb = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.0.027.i46.i, ptr noundef nonnull align 8 dereferenceable(392) %.029.i44.i) ; 0 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.029.i44.i, i64 392
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.117.i49.i = phi ptr [ %i.ea, %bb.n ], [ %.01628.i45.i, %bb.o ] ; 3 uses
  %.1.i50.i = phi ptr [ %.029.i44.i, %bb.n ], [ %i.ec, %bb.o ] ; 3 uses
  %i.ed = getelementptr i8, ptr %.sroa.0.027.i46.i, i64 392 ; 2 uses
  %i.ee = icmp ne ptr %.1.i50.i, %i.ds
  %i.ef = icmp ne ptr %.117.i49.i, %i.e
  %i.eg = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %i.eg, label %.lr.ph.i43.i, label %._crit_edge.i25.i, !llvm.loop !887

._crit_edge.i25.i:                                ; preds = %bb.p, %._crit_edge.i28
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i28 ], [ %i.ed, %bb.p ] ; 4 uses
  %.016.lcssa.i27.i = phi ptr [ %i.ds, %._crit_edge.i28 ], [ %.117.i49.i, %bb.p ] ; 2 uses
  %.0.lcssa.i28.i31 = phi ptr [ %.0.lcssa.i29, %._crit_edge.i28 ], [ %.1.i50.i, %bb.p ] ; 2 uses
  %i.eh = ptrtoint ptr %i.ds to i64
  %i.ei = ptrtoint ptr %.0.lcssa.i28.i31 to i64
  %i.ej = sub i64 %i.eh, %i.ei                    ; 2 uses
  %i.ek = icmp sgt i64 %i.ej, 0
  br i1 %i.ek, label %.lr.ph.preheader.i.i.i.i.i.i38.i, label %_ZSt4moveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i

.lr.ph.preheader.i.i.i.i.i.i38.i:                 ; preds = %._crit_edge.i25.i
  %i.el = udiv exact i64 %i.ej, 392
  br label %.lr.ph.i.i.i.i.i.i39.i

.lr.ph.i.i.i.i.i.i39.i:                           ; preds = %.lr.ph.i.i.i.i.i.i39.i, %.lr.ph.preheader.i.i.i.i.i.i38.i
  %.012.i.i.i.i.i.i40.i = phi i64 [ %i.ep, %.lr.ph.i.i.i.i.i.i39.i ], [ %i.el, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 2 uses
  %.0811.i.i.i.i.i.i41.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i39.i ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 2 uses
  %.0910.i.i.i.i.i.i42.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i.i39.i ], [ %.0.lcssa.i28.i31, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 2 uses
  %i.em = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.0811.i.i.i.i.i.i41.i, ptr noundef nonnull align 8 dereferenceable(392) %.0910.i.i.i.i.i.i42.i) ; 0 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42.i, i64 392
  %i.eo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41.i, i64 392 ; 2 uses
  %i.ep = add nsw i64 %.012.i.i.i.i.i.i40.i, -1
  %i.eq = icmp samesign ugt i64 %.012.i.i.i.i.i.i40.i, 1
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i.i39.i, label %_ZSt4moveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i, !llvm.loop !10

_ZSt4moveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i39.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i32 = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %i.eo, %.lr.ph.i.i.i.i.i.i39.i ]
  %i.er = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.es = sub i64 %i.l, %i.er                     ; 2 uses
  %i.et = icmp sgt i64 %i.es, 0
  br i1 %i.et, label %.lr.ph.preheader.i.i.i.i.i20.i32.i, label %"_ZSt17__merge_sort_loopIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i20.i32.i:               ; preds = %_ZSt4moveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i
  %i.eu = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i32 to i64
  %i.ev = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.ew
  %i.ey = udiv exact i64 %i.es, 392
  br label %.lr.ph.i.i.i.i.i21.i33.i

.lr.ph.i.i.i.i.i21.i33.i:                         ; preds = %.lr.ph.i.i.i.i.i21.i33.i, %.lr.ph.preheader.i.i.i.i.i20.i32.i
  %.012.i.i.i.i.i22.i34.i = phi i64 [ %i.fc, %.lr.ph.i.i.i.i.i21.i33.i ], [ %i.ey, %.lr.ph.preheader.i.i.i.i.i20.i32.i ] ; 2 uses
  %.0811.i.i.i.i.i23.i35.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i21.i33.i ], [ %i.ex, %.lr.ph.preheader.i.i.i.i.i20.i32.i ] ; 2 uses
  %.0910.i.i.i.i.i24.i36.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i21.i33.i ], [ %.016.lcssa.i27.i, %.lr.ph.preheader.i.i.i.i.i20.i32.i ] ; 2 uses
  %i.ez = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.0811.i.i.i.i.i23.i35.i, ptr noundef nonnull align 8 dereferenceable(392) %.0910.i.i.i.i.i24.i36.i) ; 0 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i36.i, i64 392
  %i.fb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i35.i, i64 392
  %i.fc = add nsw i64 %.012.i.i.i.i.i22.i34.i, -1
  %i.fd = icmp samesign ugt i64 %.012.i.i.i.i.i22.i34.i, 1
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i21.i33.i, label %"_ZSt17__merge_sort_loopIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_T1_T2_.exit", !llvm.loop !10

"_ZSt17__merge_sort_loopIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i21.i33.i, %_ZSt4moveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i29.i
  %i.fe = icmp slt i64 %i.cc, %i.d
  br i1 %i.fe, label %bb.b, label %._crit_edge, !llvm.loop !889

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_T1_.exit.thread", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_SH_T0_SI_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #3 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_SI_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 392
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.f = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(392) %.0910.i.i.i.i.i) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 392
  %i.h = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 392 ; 3 uses
  %i.i = add nsw i64 %.012.i.i.i.i.i, -1
  %i.j = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.j, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !10

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.026.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.sroa.0.025.i = phi ptr [ %i.r, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %.sroa.018.024.i = phi ptr [ %.sroa.018.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.not19.i = icmp eq ptr %.sroa.018.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr i8, ptr %.026.i, i64 96
  %.0.val.i = load i32, ptr %i.k, align 8, !tbaa !161
  %i.l = getelementptr i8, ptr %.sroa.018.024.i, i64 96
  %.val2.i.i = load i32, ptr %i.l, align 8, !tbaa !161
  %i.m = icmp ugt i32 %.val2.i.i, %.0.val.i
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.0.025.i, ptr noundef nonnull align 8 dereferenceable(392) %.sroa.018.024.i) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.018.024.i, i64 392
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.0.025.i, ptr noundef nonnull align 8 dereferenceable(392) %.026.i) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.026.i, i64 392
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.018.1.i = phi ptr [ %i.o, %bb.d ], [ %.sroa.018.024.i, %bb.e ]
  %.1.i = phi ptr [ %.026.i, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.0.025.i, i64 392
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_SI_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !890

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.s = ptrtoint ptr %i.h to i64
  %i.t = ptrtoint ptr %.026.i to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.preheader.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_SI_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.w = udiv exact i64 %i.u, 392
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.025.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %.026.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.x = tail call fastcc noundef nonnull align 8 dereferenceable(392) ptr @_ZN12_GLOBAL__N_114AllocaAnalysisaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(392) %.0910.i.i.i.i.i.i) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 392
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 392
  %i.aa = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ab = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN12_GLOBAL__N_114AllocaAnalysisEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNS0_23AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEbE3$_0EEEvT_SH_T0_SI_T1_T2_.exit", !llvm.loop !10

bb.g:                                             ; preds = %bb.a
  %i.ac = ptrtoint ptr %2 to i64
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.preheader.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_114AllocaAnalysisESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit29

.lr.ph.preheader.i.i.i.i.i24:                     ; preds = %bb.g
  %i.ag = udiv exact i64 %i.ae, 392
  br label %.lr.ph.i.i.i.i.i25

end_hunk_0
